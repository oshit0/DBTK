package ph.pup.itech.dbtkmgr.controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.servlet.RequestDispatcher;

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
        switch (path) {
            case "/login/form":
                viewFormLogin(request, response);
            case "/login":
                login(request, response);
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
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/welcome.jsp");
        rd.forward(request, response);
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
