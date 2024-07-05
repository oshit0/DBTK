package ph.pup.itech.dbtkmgr.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ph.pup.itech.dbtkmgr.model.UserModel;

public class UserSearchClass {
    public ArrayList<UserModel> getAllUsers() throws ClassNotFoundException{
        ArrayList<UserModel> allUsers = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try{
            String query = "SELECT "
            + "userId, "
            + "password, "
            + "firstName, "
            + "middleName, "
            + "lastName, "
            + "completeAddress, "
            + "birthday, "
            + "mobileNumber, "
            + "accountStatus, "
            + "loginStatus, "
            + "userType "
            + "FROM user_data";

            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while(rs.next()){
                UserModel user = new UserModel();
                user.setUserId(rs.getString("userId"));
                user.setPassword(rs.getString("password"));
                user.setFirstName(rs.getString("firstName"));
                user.setMiddleName(rs.getString("middleName"));
                user.setLastName(rs.getString("lastName"));
                user.setCompleteAddress(rs.getString("completeAddress"));
                user.setBirthday(rs.getString("birthday"));
                user.setMobileNumber(rs.getString("mobileNumber"));
                user.setAccountStatus(rs.getString("accountStatus"));
                user.setLoginStatus(rs.getString("loginStatus"));
                user.setUserType(rs.getString("userType"));
                allUsers.add(user);
            }
            conn.close();
        }
        catch(SQLException e){
            System.out.println("GetItemError" + e);
        }
        finally{
            if(rs != null){
                try{
                    rs.close();
                }
                catch(SQLException e){
                   System.out.println("SQLException" + e.getMessage());
                }
            }
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

        return allUsers;
    }
}
