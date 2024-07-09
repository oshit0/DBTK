package ph.pup.itech.dbtkmgr.controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.servlet.RequestDispatcher;

import ph.pup.itech.dbtkmgr.dao.UserAddClass;
import ph.pup.itech.dbtkmgr.dao.UserDAO;
import ph.pup.itech.dbtkmgr.encryption.Encryption;
import ph.pup.itech.dbtkmgr.model.UserModel;

public class LoginController extends HttpServlet{
    private static final long serialVersionUID = 1L;
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
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0
        response.setDateHeader("Expires", 0); // Proxies
        switch (path) {
            case "/login/form":
                viewFormLogin(request, response);
            case "/login":
                login(request, response);
                break;
            case "/signup/form":
                viewSignUpPage(request, response);
                break;
            case "/signup":
                try {
                    signUp(request, response);
                } catch (ClassNotFoundException | ServletException | IOException e) {
                    System.out.println("SignUpException " + e);
                }
                break;
            case "/logout":
                logout(request, response);
                break;
            case "/welcome":
                welcome(request, response);
                break;
            case "/passwordreset/form":
                resetFormPassword(request, response);
                break;
            case "/passwordreset":
                resetPassword(request, response);
                break;
            default:
        }
    }

    private void viewFormLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/login-page.jsp");
        rd.forward(request, response);
    }

    protected void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");
        UserDAO userDao = new UserDAO();
        String loginMessage = "";
        int maxAttempts = 3;

        try{
            if(request.getParameter("login") != null){
                UserModel user = userDao.checkLogin(userId, password);
                String rdPage = "/home";
                HttpSession session = request.getSession();
                Integer loginAttempts = (Integer) session.getAttribute("loginAttempts");
                if (loginAttempts == null) {
                    loginAttempts = 0;
                }
                else if(loginAttempts == 3){

                }

                if(user != null){
                    if (!"Invalid".equals(user.getAccountStatus())) {
                        //Correct Credentials
                        session.setAttribute("userId", user.getUserId());
                        session.setAttribute("userName", user.getFirstName() + " " + user.getLastName());
                        session.setAttribute("loginAttempts", 0); // Reset the counter on successful login
                        session.removeAttribute("loginMessage");
                        rdPage = user.getUserType().equals("Administrator") ? "/inventory" : "/welcome";
                    }
                    else if ("Invalid".equals(user.getAccountStatus())) {
                        //Deactivated Account
                        loginMessage = "Your account is deactivated. Please reset your password.";
                        session.setAttribute("loginMessage", loginMessage);
                        rdPage = "/passwordreset/form"; // Redirect to password reset page
                    }
                }
                else{
                    //Incorrect Credentials
                    loginAttempts++;
                    session.setAttribute("loginAttempts", loginAttempts);
                    if (loginAttempts >= maxAttempts) {
                        userDao.updateAccountStatus(userId, "Invalid");
                        loginMessage = "Too many failed attempts. Your account has been deactivated. Please reset your password.";
                        rdPage = "/passwordreset/form"; // Redirect to password reset page
                    } else {
                        loginMessage = "Incorrect User ID/Password. Attempts: " + loginAttempts;
                        rdPage = "/login/form";
                    }
                    session.setAttribute("loginMessage", loginMessage);
                }
                response.sendRedirect(request.getContextPath() + rdPage);
            }
        }
        catch (SQLException | ClassNotFoundException e) {
            System.out.println("LoginException " + e);
        }
    }

    private void viewSignUpPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/signup.jsp");
        rd.forward(request, response);
    }

    private void signUp(HttpServletRequest request, HttpServletResponse response)
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
                accountStatus = accountStatus == null ? "Valid" : accountStatus;
                String loginStatus = request.getParameter("loginStatus");
                loginStatus = loginStatus == null ? "Offline" : loginStatus;
                String userType = request.getParameter("userType");
                userType = userType == null ? "User" : userType;

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
        response.sendRedirect(request.getContextPath() + "/home");
    }

    protected void logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{

        HttpSession session = request.getSession(false);
        if (session != null) {
            session.removeAttribute("userId");
            session.removeAttribute("userName");
            session.removeAttribute("loginAttempts");
            session.invalidate();
        }
        response.sendRedirect(request.getContextPath() + "/home");
    }

    protected void welcome(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("userId") == null) {
            response.sendRedirect("login.jsp"); // Redirect to login page
            return;
        }
        else{
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/welcome.jsp");
            rd.forward(request, response);
        }
    }

    protected void resetFormPassword(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/reset-password.jsp");
        rd.forward(request, response);
    }

    protected void resetPassword(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        HttpSession session = request.getSession();
        session.removeAttribute("loginMessage");
        if (request.getParameter("submitReset") != null) {
            String userId = request.getParameter("userId");
            String newPassword = request.getParameter("newPassword");
            UserDAO userDao = new UserDAO();
            Boolean passwordValid = false;
            Encryption pass = new Encryption();
            String rdPage = "/home";

            try {
                passwordValid = userDao.validatePassword(userId, newPassword);
                if(!passwordValid){
                    session.setAttribute("loginMessage", "You can't use your old password as new password!");
                    rdPage = "/passwordreset/form";
                }
                else{
                    userDao.updatePassword(userId, pass.encrypt(newPassword));
                    userDao.updateAccountStatus(userId, "Valid"); // Reactivate the account
                    session.setAttribute("showModal", "true");
                    rdPage = "/home";
                }
                //else here that user not found
                response.sendRedirect(request.getContextPath() + rdPage);
            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
            }
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
