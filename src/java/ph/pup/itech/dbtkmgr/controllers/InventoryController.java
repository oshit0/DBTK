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
import ph.pup.itech.dbtkmgr.dao.InventoryUpdateClass;
import ph.pup.itech.dbtkmgr.model.InventoryModel;

import java.io.IOException;
import java.util.ArrayList;

//import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mark
 */
public class InventoryController extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
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
            case "/inventory":
                action = 0;
                try {
                    viewInventory(request, response, action);
                } catch (ServletException | IOException | ClassNotFoundException e) {
                    System.out.println("CreateProductFormException " + e);
                }
                break;
            case "/inventory/create/form":
                try {
                    createFormProduct(request, response);
                } catch (ServletException | IOException e) {
                    System.out.println("CreateProductFormException " + e);
                }
                break;
            case "/inventory/create":
                try {
                    createProduct(request, response);
                } catch (ClassNotFoundException | ServletException | IOException e) {
                    System.out.println("CreateProductException " + e.getMessage());
                }
                break;
            case "/inventory/edit/form":
                try {
                    editFormProduct(request, response);
                } catch (ClassNotFoundException | ServletException | IOException e) {
                    System.out.println("InventoryEditFormException" + e);
                    e.printStackTrace();
                }
                break;
            case "/inventory/edit":
                try {
                    editProduct(request, response);
                } catch (ClassNotFoundException | ServletException | IOException e) {
                    System.out.println("EditProductException" + e.getMessage());
                }
                break;
            case "/inventory/removed":
                try {
                    deleteProduct(request, response);
                } catch (ClassNotFoundException | ServletException | IOException e) {
                    System.out.println("RemovedProductException" + e.getMessage());
                }
                break;
            case "/inventory/delete":
                action = 1;
                try {
                    viewInventory(request, response, action);
                } catch (ClassNotFoundException | ServletException | IOException e) {
                    System.out.println("DeleteProductException" + e.getMessage());
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

    private void viewInventory(HttpServletRequest request, HttpServletResponse response, int action)
            throws ServletException, IOException, ClassNotFoundException {
        InventorySearchClass search = new InventorySearchClass();
        ArrayList<InventoryModel> allItems = search.getAllItems();
        request.setAttribute("allItems", allItems);
        String actionTag = "", path = "", query = "";
        switch (action) {
            case 0:
                actionTag = "Edit";
                path = "inventory/edit/form";
                query = "editproduct=true&id=";
                break;
            case 1:
                actionTag = "Delete";
                path = "inventory/removed";
                query = "deleteproduct=true&id=";
                break;
            default:
                actionTag = "Edit";
                path = "inventory/edit/form";
                query = "viewinventory=true&id=";
        }
        HttpSession session = request.getSession();
        String message = (String) session.getAttribute("message");
        session.removeAttribute("message");
        request.setAttribute("message", message);
        request.setAttribute("actionTag", actionTag);
        request.setAttribute("path", path);
        request.setAttribute("query", query);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/inventory.jsp");
        rd.forward(request, response);
    }

    private void createFormProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/product-create.jsp");
        rd.forward(request, response);

    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {

        HttpSession session = request.getSession();
        String message = "";
        if (request.getParameter("addItem") != null){
            String itemName = request.getParameter("itemName");
            if(!itemName.isBlank()){
                String itemDescription = request.getParameter("itemDescription");
                itemDescription = !itemDescription.isBlank() ? itemDescription : "No Description";
                String itemSize = request.getParameter("itemSize");
                itemSize = !itemSize.isBlank() ? itemSize : "N/A";
                int itemPrice, itemStocks;
                try {
                    itemPrice = Integer.parseInt(request.getParameter("itemPrice"));
                    itemStocks = Integer.parseInt(request.getParameter("itemStocks"));
                } catch (NumberFormatException e) {
                    itemPrice = 0;
                    itemStocks = 0;
                    System.out.println("NumberFormatException: " + e);
                }
                request.setAttribute("itemName", itemName);
                request.setAttribute("itemDesc", itemDescription);
                request.setAttribute("itemSize", itemSize);
                request.setAttribute("itemPrice", itemPrice);
                request.setAttribute("itemStocks", itemStocks);

                InventoryAddClass add = new InventoryAddClass();
                boolean successfullyAdded = add.addInventory(itemName, itemDescription, itemSize, itemPrice, itemStocks);
                if (successfullyAdded) {
                    message = "Item Added: " + itemName;
                } else {
                    message = "Database Query Error!";
                }
            }
            else{
                    message = "Item name must not be empty!";
            }
        }
        session.setAttribute("message", message);
        response.sendRedirect(request.getContextPath() + "/inventory");
    }

    private void editFormProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {

        String rdPage = "";

        if (request.getParameter("editproduct") != null) {
            String id = request.getParameter("id");
            InventoryUpdateClass edit = new InventoryUpdateClass();
            ArrayList<InventoryModel> itemDetails = edit.getItemDetails(id);
            request.setAttribute("itemDetails", itemDetails);
            rdPage = "/WEB-INF/product-update.jsp";
        } else {
            InventorySearchClass search = new InventorySearchClass();
            ArrayList<InventoryModel> allItems = search.getAllItems();
            request.setAttribute("allItems", allItems);
            viewInventory(request, response, 0);
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(rdPage);
        rd.forward(request, response);
    }

    private void editProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {

        HttpSession session = request.getSession();
        String message = "";
        if (request.getParameter("editItem") != null) {
            String id = request.getParameter("id");
            String itemName = request.getParameter("itemName");
            if(!itemName.isBlank()){
                String itemDesc = request.getParameter("itemDescription");
                itemDesc= !itemDesc.isBlank() ? itemDesc: "No Description";
                String itemSize = request.getParameter("itemSize");
                itemSize = !itemSize.isBlank() ? itemSize : "N/A";
                int itemPrice, itemStocks;
                try {
                    itemPrice = Integer.parseInt(request.getParameter("itemPrice"));
                    itemStocks = Integer.parseInt(request.getParameter("itemStocks"));
                } catch (NumberFormatException e) {
                    System.out.println("NumberFormatException: " + e);
                    return;
                }
                InventoryUpdateClass update = new InventoryUpdateClass();
                boolean succesfullyUpdated = update.editItemDetails(id, itemName, itemDesc, itemSize, itemPrice, itemStocks);
                if (succesfullyUpdated) {
                    message = "Item Updated: " + itemName;
                } else {
                    message = "Database Query Error!";
                }
            }
            else{
                message = "Item name must not be empty!";
            }
        }
        session.setAttribute("message", message);
        response.sendRedirect(request.getContextPath() + "/inventory");
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {

        HttpSession session = request.getSession();
        String message = "";
        if (request.getParameter("deleteproduct") != null) {
            String id = request.getParameter("id");
            InventoryUpdateClass update = new InventoryUpdateClass();
            update.deleteItem(id);
            message = "Item Deleted Successfully!";
            request.setAttribute("message", message);
        }
        session.setAttribute("message", message);
        response.sendRedirect(request.getContextPath() + "/inventory");
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
