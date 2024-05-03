/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ph.pup.itech.dbtkmgr.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mark
 */
public class Inventory extends HttpServlet {

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
                        case "/inventory/create/form":
                                createFormProduct(request, response);
                                break;
                        case "/inventory/create":
                                createProduct(request, response);
                                break;
                        default:
                                viewInventory(request, response);
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

        private void viewInventory(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/inventory.jsp");
                rd.forward(request, response);

        }

        private void createFormProduct(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/product-create.jsp");
                rd.forward(request, response);

        }

        private void createProduct(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
                String itemId = request.getParameter("itemId");
                String itemName = request.getParameter("itemName");
                String itemDescription = request.getParameter("itemDescription");
                String itemPrice = request.getParameter("itemPrice");
                String itemStocks = request.getParameter("itemStocks");
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/inventory.jsp");
                rd.forward(request, response);
                System.out.println("Here's what was received:");
                System.out.println("Item ID:\t" + itemId);
                System.out.println("Item Name:\t" + itemName);
                System.out.println("Item Description:\t" + itemDescription);
                System.out.println("Item Price:\t" + itemPrice);
                System.out.println("Item Stocks:\t" + itemStocks);

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