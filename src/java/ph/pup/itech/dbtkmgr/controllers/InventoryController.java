/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ph.pup.itech.dbtkmgr.controllers;

//import ph.pup.itech.dbtkmgr.model.InventoryModel;
import ph.pup.itech.dbtkmgr.dao.InventoryAddClass;
//import ph.pup.itech.dbtkmgr.dao.InventoryDao;
//import ph.pup.itech.dbtkmgr.encryption.Encryption;
import ph.pup.itech.dbtkmgr.dao.InventorySearchClass;
import ph.pup.itech.dbtkmgr.model.InventoryModel;

import java.io.IOException;
import java.util.ArrayList;

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
public class InventoryController extends HttpServlet {

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
                String path = request.getServletPath();
                int action = 0;
                switch (path) {
                        case "/inventory/create/form":
                                createFormProduct(request, response);
                                break;
                        case "/inventory/create":
                                try {
                                        createProduct(request, response, action);
                                } catch (ClassNotFoundException | ServletException | IOException e) {
                                        System.out.println("CreateProductException " + e.getMessage()); 
                                }
                                break;
                        case "/inventory/edit":
                                action = 0;
                                try {
                                        viewInventory(request, response, action);
                                } catch (ClassNotFoundException | ServletException | IOException e) {
                                        // TODO Auto-generated catch block
                                        e.printStackTrace();
                                }
                                break;
                        case "/inventory/delete":
                                action = 1;
                                try {
                                        viewInventory(request, response, action);
                                } catch (ClassNotFoundException | ServletException | IOException e) {
                                        // TODO Auto-generated catch block
                                        e.printStackTrace();
                                }
                                break;
                        default:
                                action = 0;
                                try {
                                        viewInventory(request, response, action);
                                } catch (ClassNotFoundException | ServletException | IOException e) {
                                        System.out.println("ViewInventoryException " + e.getMessage()); 
                                }                     
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

        private void viewInventory(HttpServletRequest request, HttpServletResponse response, int action)
                throws ServletException, IOException, ClassNotFoundException {
                InventorySearchClass search = new InventorySearchClass();
                ArrayList<InventoryModel> allItems = search.getAllItems();
                request.setAttribute("allItems", allItems);
                setAction(request, action);
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/inventory.jsp");
                rd.forward(request, response);
        }

        private void setAction(HttpServletRequest request, int action)
                throws ServletException, IOException, ClassNotFoundException {
                String actionTag, path;
                switch (action){
                        case 1:
                                actionTag = "Delete";
                                path = "inventory/delete";
                                break;
                        default:
                                actionTag = "Edit";
                                path = "inventory/edit";
                }
                request.setAttribute("actionTag", actionTag);
                request.setAttribute("path", path);
        }

        private void createFormProduct(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/product-create.jsp");
                rd.forward(request, response);

        }

        private void createProduct(HttpServletRequest request, HttpServletResponse response, int action)
                throws ServletException, IOException, ClassNotFoundException {

                //String rdPage = "/WEB-INF/inventory.jsp";

                if(request.getParameter("addItem") != null){
                        String itemName = request.getParameter("itemName");
                        String itemDescription = request.getParameter("itemDescription");
                        int itemPrice, itemStocks;
                        try{
                                itemPrice = Integer.parseInt(request.getParameter("itemPrice"));
                                itemStocks = Integer.parseInt(request.getParameter("itemStocks"));
                        }
                        catch(NumberFormatException e){
                                itemPrice = 0;
                                itemStocks = 0;
                                System.out.println("SQLException: " + e);
                        }
                        request.setAttribute("itemName", itemName);
                        request.setAttribute("itemDescription", itemDescription);
                        request.setAttribute("itemPrice", itemPrice);
                        request.setAttribute("itemStocks", itemStocks);

                        InventoryAddClass add = new InventoryAddClass();
                        boolean succesfully_added = add.addInventory(itemName, itemDescription, itemPrice, itemStocks);
                        if(succesfully_added){
                                String message = "Item Added: " + itemName;
                                request.setAttribute("message", message);
                        }
                        else{
                                String message = "Database Query Error!";
                                request.setAttribute("message", message);
                        }
                }

                viewInventory(request, response, action);
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
