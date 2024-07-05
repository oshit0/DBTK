package ph.pup.itech.dbtkmgr.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ph.pup.itech.dbtkmgr.model.UserModel;

public class UserUpdateClass {

    public ArrayList<UserModel> getUserDetails(String userId) throws ClassNotFoundException{
        ArrayList<UserModel> userDetails = new ArrayList<>();
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
            + "FROM user_data "
            + "WHERE userId = ?";
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userId);
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
                userDetails.add(user);
            }
            conn.close();
        }
        catch(SQLException e){
            System.out.println("GetUserError" + e);
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

        return userDetails;
    }

    public boolean editUserDetails(
            String userId,
            String password,
            String firstName,
            String middleName,
            String lastName,
            String completeAddress,
            String birthday,
            String mobileNumber,
            String accountStatus,
            String loginStatus,
            String userType
    ) throws ClassNotFoundException {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            String query = "UPDATE user_data SET "
                    + "password = ?, "
                    + "firstName = ?, "
                    + "middleName = ?, "
                    + "lastName = ?, "
                    + "completeAddress = ?, "
                    + "birthday = ?, "
                    + "mobileNumber = ?, "
                    + "accountStatus = ?, "
                    + "loginStatus = ?, "
                    + "userType = ? "
                    + "WHERE userId = ?";

            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, password);
            ps.setString(2, firstName);
            ps.setString(3, middleName);
            ps.setString(4, lastName);
            ps.setString(5, completeAddress);
            ps.setString(6, birthday);
            ps.setString(7, mobileNumber);
            ps.setString(8, accountStatus);
            ps.setString(9, loginStatus);
            ps.setString(10, userType);
            ps.setString(11, userId);

            int rowsAffected = ps.executeUpdate();
            if(rowsAffected != 0 ){
                success = true;
            }
            conn.close();
        }
        catch(SQLException e){
            System.out.println("GetUserException" + e);
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

    public void deleteUser(String userId) throws ClassNotFoundException{
        Connection conn = null;
        PreparedStatement ps = null;

        try{
            String query = "DELETE FROM user_data WHERE userId = ?";
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userId);
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