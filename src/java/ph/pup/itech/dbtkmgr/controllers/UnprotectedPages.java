package ph.pup.itech.dbtkmgr.controllers;

import java.io.IOException;
//import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mark
 */
public class UnprotectedPages extends HttpServlet {

        // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
        /**
         * Handles the HTTP <code>GET</code> method.
         *
         * @param request servlet request
         * @param response servlet response
         * @throws ServletException if a servlet-specific error occurs
         * @throws IOException if an I/O error occurs
         */
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
                String action = request.getServletPath();
                switch (action) {
                        case "/shop":
                                viewShop(request, response);
                                break;
                        case "/signup":
                                viewSignUpPage(request, response);
                                break;
                        default:
                                viewHome(request, response);
                                break;
                }
        }

        /**
         * Handles the HTTP <code>POST</code> method.
         *
         * @param request servlet request
         * @param response servlet response
         * @throws ServletException if a servlet-specific error occurs
         * @throws IOException if an I/O error occurs
         */
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
                doGet(request, response);
        }

        private void viewHome(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
        }

        private void viewShop(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
                System.out.println("LOLed");
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/shop.jsp");
                rd.forward(request, response);
        }

        private void viewSignUpPage(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/signup.jsp");
                rd.forward(request, response);
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
