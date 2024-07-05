package ph.pup.itech.dbtkmgr.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ph.pup.itech.dbtkmgr.dao.InventorySearchClass;
import ph.pup.itech.dbtkmgr.model.InventoryModel;

public class InventoryTableController {
        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
                        throws ServletException, IOException, ClassNotFoundException {
                InventorySearchClass search = new InventorySearchClass();
                ArrayList<InventoryModel> allItems = search.getAllItems();
                request.setAttribute("allItems", allItems);

                RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/inventory.jsp");
                rd.forward(request, response);
        }

}
