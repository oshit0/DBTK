package ph.pup.itech.dbtkmgr.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.lambdaworks.crypto.SCryptUtil;

import ph.pup.itech.dbtkmgr.model.UserModel;

public class UserDAO {
    public UserModel checkLogin(String userId, String password) throws SQLException, ClassNotFoundException{
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        UserModel user = null;
        try{
            String query = "SELECT * FROM user_data "
            + "WHERE userId = ? ";
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);

            ps.setString(1, userId);
            rs = ps.executeQuery();

            if(rs.next()){
                if(rs.getString("userId") != null && rs.getString("userId").equals(userId)){
                    if(SCryptUtil.check(password, rs.getString("password"))){
                        user = new UserModel();
                        user.setUserId(userId);
                        user.setPassword(rs.getString("password"));
                        user.setFirstName(rs.getString("firstName"));
                        user.setLastName(rs.getString("lastName"));
                        user.setUserType(rs.getString("userType"));
                        user.setAccountStatus(rs.getString("accountStatus"));
                    }
                    else if("Invalid".equals(rs.getString("accountStatus"))){
                        user = new UserModel();
                        user.setUserId(userId);
                        user.setAccountStatus(rs.getString("accountStatus"));
                    }
                }
            }

            conn.close();
        }
        catch(SQLException e){
            System.out.println("CheckLogin: " + e);
        }
        finally{
            if(rs != null){
                try{
                    rs.close();
                }
                catch(SQLException e){
                    System.out.println("SQLException: " + e.getMessage());
                }
            }
            if(ps != null){
                try{
                    ps.close();
                }
                catch(SQLException e){
                    System.out.println("SQLException: " + e.getMessage());
                }
            }
            if(conn!= null){
                try{
                    conn.close();
                }catch(SQLException e){
                    System.out.println("SQLException: " + e.getMessage());
                }
            }
        }
        return user;
    }

    public void updateAccountStatus(String userId, String accountStatus) throws SQLException, ClassNotFoundException {
        String query = "UPDATE user_data SET accountStatus = ? WHERE userId = ?";
        Connection conn = ConnectionPool.getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        try{
            ps.setString(1, accountStatus);
            ps.setString(2, userId);
            ps.executeUpdate();
            conn.close();
        }
        catch(SQLException e){
            System.out.println("UpdateAccountStatus: " + e);
        }
        finally{
            if(ps != null){
                try{
                    ps.close();
                }
                catch(SQLException e){
                    System.out.println("SQLException: " + e.getMessage());
                }
            }
            if(conn != null){
                try{
                    conn.close();
                }catch(SQLException e){
                    System.out.println("SQLException: " + e.getMessage());
                }
            }
        }
    }

    public boolean validatePassword(String userId, String newPassword) throws SQLException, ClassNotFoundException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Boolean success = false;
        try{
            String query = "SELECT * FROM user_data "
            + "WHERE userId = ? ";
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);

            ps.setString(1, userId);
            rs = ps.executeQuery();

            if(rs.next()){
                if(rs.getString("userId") != null && rs.getString("userId").equals(userId)){
                    if(!SCryptUtil.check(newPassword, rs.getString("password"))){
                        success = true;
                    }
                    else{
                        success = false;
                    }
                }
            }

            conn.close();
        }
        catch(SQLException e){
            System.out.println("CheckLogin: " + e);
        }
        finally{
            if(rs != null){
                try{
                    rs.close();
                }
                catch(SQLException e){
                    System.out.println("SQLException: " + e.getMessage());
                }
            }
            if(ps != null){
                try{
                    ps.close();
                }
                catch(SQLException e){
                    System.out.println("SQLException: " + e.getMessage());
                }
            }
            if(conn!= null){
                try{
                    conn.close();
                }catch(SQLException e){
                    System.out.println("SQLException: " + e.getMessage());
                }
            }
        }
        return success;
    }


    public void updatePassword(String userId, String newPassword) throws SQLException, ClassNotFoundException {
        String query = "UPDATE user_data SET password = ? WHERE userId = ?";
        Connection conn = ConnectionPool.getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        try{
            ps.setString(1, newPassword);
            ps.setString(2, userId);
            ps.executeUpdate();
            conn.close();
        }
        catch(SQLException e){
            System.out.println("UpdatePassword: " + e);
        }
        finally{
            if(ps != null){
                try{
                    ps.close();
                }
                catch(SQLException e){
                    System.out.println("SQLException: " + e.getMessage());
                }
            }
            if(conn != null){
                try{
                    conn.close();
                }catch(SQLException e){
                    System.out.println("SQLException: " + e.getMessage());
                }
            }
        }
    }

}
