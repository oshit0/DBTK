package ph.pup.itech.dbtkmgr.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class UserAddClass {

public boolean addUser(
        String userId,
        String password,
        String firstName,
        String middleName,
        String lastName,
        String completeAddress,
        Date birthday,
        String mobileNumber,
        String accountStatus,
        String loginStatus,
        String userType
    ) throws ClassNotFoundException {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            String query = "INSERT INTO user_data ( "
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
            + "userType) "
            + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userId);
            ps.setString(2, password);
            ps.setString(3, firstName);
            ps.setString(4, middleName);
            ps.setString(5, lastName);
            ps.setString(6, completeAddress);
            ps.setDate(7, birthday != null ? new java.sql.Date(birthday.getTime()) : null);
            ps.setString(8, mobileNumber);
            ps.setString(9, accountStatus);
            ps.setString(10, loginStatus);
            ps.setString(11, userType);

            int rowsAffected = ps.executeUpdate();
            if(rowsAffected != 0 ){
                success = true;
            }
            conn.close();
        }catch(SQLException e){
          System.out.println("SQLException" + e);
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

}