package ph.pup.itech.dbtkmgr.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ph.pup.itech.dbtkmgr.model.InventoryModel;

public class InventoryUpdateClass {
    
    public ArrayList<InventoryModel> getItemDetails(String id) throws ClassNotFoundException{
        ArrayList<InventoryModel> itemDetails = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try{
            String query = "SELECT "
            + "id, "
            + "itemName, "
            + "itemDesc, "
            + "itemSize, "
            + "itemPrice, "
            + "itemStocks "
            + "FROM inventory_table "
            + "WHERE id = ?";
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();

            while(rs.next()){
                InventoryModel item = new InventoryModel();
                item.setItemId(rs.getInt("id"));
                item.setItemName(rs.getString("itemName"));
                item.setItemDesc(rs.getString("itemDesc"));
                item.setItemSize(rs.getString("itemSize"));
                item.setItemPrice(rs.getInt("itemPrice"));
                item.setItemStocks(rs.getInt("itemStocks"));
                itemDetails.add(item);
            }
            conn.close();
        }
        catch(SQLException e){
            System.out.println("GetItemError " + e);
        }
        finally{
            if(rs != null){
                try{
                    rs.close();
                }
                catch(SQLException e){
                   System.out.println("SQLException " + e.getMessage()); 
                }
            }
            if(ps != null){
                try{
                    ps.close();
                }
                catch(SQLException e){
                   System.out.println("SQLException " + e.getMessage()); 
                }
            }
            if(conn!= null){
                try{
                    conn.close();
                }catch(SQLException e){
                   System.out.println("SQLException " + e.getMessage()); 
                }
            }
        }

        return itemDetails;
    }

    public boolean editItemDetails(
        String itemId,
        String itemName,
        String itemDesc,
        String itemSize,
        int itemPrice,
        int itemStocks
    ) throws ClassNotFoundException{
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;

        try{
            String query = "UPDATE inventory_table SET "
            + "itemName = ?, "
            + "itemDesc = ?, " 
            + "itemSize = ?, " 
            + "itemPrice = ?, "
            + "itemStocks = ? "
            + "WHERE id = ?";

            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, itemName);
            ps.setString(2, itemDesc);
            ps.setString(3, itemSize);
            ps.setInt(4, itemPrice);
            ps.setInt(5, itemStocks);
            ps.setString(6, itemId);

            int rowsAffected = ps.executeUpdate();
            if(rowsAffected != 0 ){
                success = true;
            }
            conn.close();
        }
        catch(SQLException e){
            System.out.println("UpdateItemException " + e);
        }
        finally{
            if(ps != null){
                try{
                    ps.close();
                }
                catch(SQLException e){
                   System.out.println("SQLException" + e.getMessage()); 
                }
            }
            if(conn!= null){
                try{
                    conn.close();
                }catch(SQLException e){
                   System.out.println("SQLException" + e.getMessage()); 
                }
            }
        }

        return success;
    }

    public void deleteItem(String itemId) throws ClassNotFoundException{
        Connection conn = null;
        PreparedStatement ps = null;

        try{
            String query = "DELETE FROM inventory_table WHERE id = ?";
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, itemId);
            ps.executeUpdate();
            conn.close();
        }
        catch(SQLException e){
            System.out.println("DeleteItemException " + e);
        }
        finally{
            if(ps != null){
                try{
                    ps.close();
                }
                catch(SQLException e){
                   System.out.println("SQLException" + e.getMessage()); 
                }
            }
            if(conn!= null){
                try{
                    conn.close();
                }catch(SQLException e){
                   System.out.println("SQLException" + e.getMessage()); 
                }
            }
        }
    }
}