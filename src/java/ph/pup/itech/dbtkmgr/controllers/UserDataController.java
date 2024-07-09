package ph.pup.itech.dbtkmgr.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ph.pup.itech.dbtkmgr.dao.UserAddClass;
import ph.pup.itech.dbtkmgr.dao.UserSearchClass;
import ph.pup.itech.dbtkmgr.dao.UserUpdateClass;
import ph.pup.itech.dbtkmgr.encryption.Encryption;
import ph.pup.itech.dbtkmgr.model.UserModel;

public class UserDataController extends HttpServlet{
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getServletPath();
        int action = 0;
        switch (path) {
            case "/users_data":
                action = 0;
                try {
                    viewUsers(request, response, action);
                } catch (ClassNotFoundException | ServletException | IOException e) {
                    System.out.println("ViewUsersException " + e);
                }
                break;
            case "/user/create/form":
                try {
                    createFormUser(request, response);
                } catch (ServletException | IOException e) {
                    System.out.println("CreateFormUsersException " + e);
                    e.printStackTrace();
                }
                break;
            case "/user/create":
                try {
                    createUser(request, response);
                } catch ( ClassNotFoundException| ServletException | IOException e) {
                    System.out.println("CreateUserException " + e);
                    e.printStackTrace();
                }
                break;
            case "/user/edit/form":
                try {
                    editFormUser(request, response);
                } catch ( ClassNotFoundException | ServletException | IOException e) {
                    System.out.println("EditFormUserException " + e);
                    e.printStackTrace();
                }
                break;
            case "/user/edit":
                try {
                    editUser(request, response);
                } catch ( ClassNotFoundException | ServletException | IOException e) {
                    System.out.println("EditUserException " + e);
                    e.printStackTrace();
                }
                break;
            case "/user/removed":
                try {
                    deleteUser(request, response);
                } catch (ClassNotFoundException | ServletException | IOException e) {
                    System.out.println("DeleteUserException " + e);
                    e.printStackTrace();
                }
                break;
            case "/user/delete":
                action = 1;
                try {
                    viewUsers(request, response, action);
                } catch (ClassNotFoundException | ServletException | IOException e) {
                    System.out.println("ViewUsersDeleteException " + e);
                    e.printStackTrace();
                }
                break;
            default:
                action = 0;
                try {
                    viewUsers(request, response, action);
                } catch (ClassNotFoundException | ServletException | IOException e) {
                    System.out.println("ViewUsersException " + e);
                }
                break;
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void viewUsers(HttpServletRequest request, HttpServletResponse response, int action)
            throws ServletException, IOException, ClassNotFoundException {
        UserSearchClass search = new UserSearchClass();
        ArrayList<UserModel> allUsers = search.getAllUsers();
        request.setAttribute("allUsers", allUsers);
        String actionTag = "", path = "", query = "";
        switch (action) {
            case 0:
                actionTag = "Edit";
                path = "user/edit/form";
                query = "edituser=true&userId=";
                break;
            case 1:
                actionTag = "Delete";
                path = "user/removed";
                query = "deleteuser=true&userId=";
                break;
            default:
                actionTag = "Edit";
                path = "user/edit/form";
                query = "viewusers=true&userId=";
        }
        HttpSession session = request.getSession();
        String userDataMessage = (String) session.getAttribute("userDataMessage");
        session.removeAttribute("userDataMessage");
        request.setAttribute("userDataMessage", userDataMessage);
        request.setAttribute("actionTag", actionTag);
        request.setAttribute("path", path);
        request.setAttribute("query", query);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/users.jsp");
        rd.forward(request, response);
    }

    private void createFormUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/user-create.jsp");
        rd.forward(request, response);
    }

    private void createUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {

        HttpSession session = request.getSession();
        Encryption pass = new Encryption();
        String userDataMessage = "";
        if (request.getParameter("addUser") != null){
            String userId = request.getParameter("userId");
            if(!userId.isBlank()){
                String password = pass.encrypt(request.getParameter("password"));
                //password = !password.isBlank() ? password : "defaultPassword";
                String firstName = request.getParameter("firstName");
                String middleName = request.getParameter("middleName");
                middleName = !middleName.isBlank() ? middleName : "N/A";
                String lastName = request.getParameter("lastName");
                String completeAddress = request.getParameter("completeAddress");
                String birthdayStr = request.getParameter("birthday");
                java.sql.Date birthday = null;
                try {
                    birthday = !birthdayStr.isBlank() ? java.sql.Date.valueOf(birthdayStr) : null;
                } catch (IllegalArgumentException e) {
                    System.out.println("Date parse exception: " + e);
                }
                String mobileNumber = request.getParameter("mobileNumber");
                String accountStatus = request.getParameter("accountStatus");
                accountStatus = !accountStatus.isBlank() ? accountStatus : "Valid";
                String loginStatus = request.getParameter("loginStatus");
                loginStatus = !loginStatus.isBlank() ? loginStatus : "Offline";
                String userType = request.getParameter("userType");

                UserAddClass add = new UserAddClass();
                boolean successfullyAdded = add.addUser(
                    userId,
                    password,
                    firstName,
                    middleName,
                    lastName,
                    completeAddress,
                    birthday,
                    mobileNumber,
                    accountStatus,
                    loginStatus,
                    userType
                );
                if (successfullyAdded) {
                    userDataMessage = "User Added: " + userId;
                } else {
                    userDataMessage = "Database Query Error!";
                }
            }
            else{
                userDataMessage = "User ID cannot be empty!";
            }
        }else{
            userDataMessage = "NULL TYPA SHII";
        }
        session.setAttribute("userDataMessage", userDataMessage);
        response.sendRedirect(request.getContextPath() + "/users_data");
    }

    private void editFormUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {

        String rdPage = "";

        if (request.getParameter("edituser") != null) {
            String userId = request.getParameter("userId");
            UserUpdateClass edit = new UserUpdateClass();
            ArrayList<UserModel> userDetails = edit.getUserDetails(userId);
            request.setAttribute("userDetails", userDetails);
            rdPage = "/WEB-INF/user-update.jsp";
        } else {
            UserSearchClass search = new UserSearchClass();
            ArrayList<UserModel> allUsers = search.getAllUsers();
            request.setAttribute("allUsers", allUsers);
            viewUsers(request, response, 0);
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(rdPage);
        rd.forward(request, response);
    }

    private void editUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {


        Encryption pass = new Encryption();
        HttpSession session = request.getSession();
        String userDataMessage = "";
        if (request.getParameter("editUser") != null) {
            String userId = request.getParameter("userId");
            String password = request.getParameter("password");
            String firstName = request.getParameter("firstName");
            String middleName = request.getParameter("middleName");
            String lastName = request.getParameter("lastName");
            String completeAddress = request.getParameter("completeAddress");
            String birthday = request.getParameter("birthday"); // Expecting format "yyyy-MM-dd"
            String mobileNumber = request.getParameter("mobileNumber");
            String accountStatus = request.getParameter("accountStatus");
            String loginStatus = request.getParameter("loginStatus");
            String userType = request.getParameter("userType");

            middleName = (middleName != null && !middleName.isBlank()) ? middleName : null;
            completeAddress = (completeAddress != null && !completeAddress.isBlank()) ? completeAddress : null;
            birthday = (birthday != null && !birthday.isBlank()) ? birthday : null;
            mobileNumber = (mobileNumber != null && !mobileNumber.isBlank()) ? mobileNumber : null;
            accountStatus = (accountStatus != null && !accountStatus.isBlank()) ? accountStatus : "Valid";
            loginStatus = (loginStatus != null && !loginStatus.isBlank()) ? loginStatus : "Offline";
            userType = (userType != null && !userType.isBlank()) ? userType : "user";

            UserUpdateClass update = new UserUpdateClass();
            boolean successfullyUpdated;
            if(password != null && !password.isBlank()){
                password = pass.encrypt(password);
                successfullyUpdated = update.editUserDetails(userId, password, firstName, middleName, lastName, completeAddress, birthday, mobileNumber, accountStatus, loginStatus, userType);
            }
            else{
                successfullyUpdated = update.editUserDetails(userId, firstName, middleName, lastName, completeAddress, birthday, mobileNumber, accountStatus, loginStatus, userType);
            }
            if (successfullyUpdated) {
                userDataMessage = "User Updated: " + userId;
            } else {
                userDataMessage = "Database Query Error!";
            }
        }
        session.setAttribute("userDataMessage", userDataMessage);
        response.sendRedirect(request.getContextPath() + "/users_data");
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {

        HttpSession session = request.getSession();
        String userDataMessage = "";
        if (request.getParameter("deleteuser") != null) {
            String userId = request.getParameter("userId");
            UserUpdateClass update = new UserUpdateClass();
            update.deleteUser(userId);
            userDataMessage = "User Deleted Successfully!";
            request.setAttribute("userDataMessage", userDataMessage);
        }
        session.setAttribute("userDataMessage", userDataMessage);
        response.sendRedirect(request.getContextPath() + "/users_data");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}