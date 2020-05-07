package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 The purpose of UserMapper is to...

 @author kasper
 */
public class UserMapper {

    public static void createUser( User user ) throws LoginSampleException {
        int balance = 0;
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO user(name, email, password, city, zip, address, role, balance) VALUES\n" +
                    "(?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement( SQL, Statement.RETURN_GENERATED_KEYS );
            ps.setString(1, user.getName());
            ps.setString( 2, user.getEmail() );
            ps.setString( 3, user.getPassword() );
            ps.setString( 4, user.getCity() );
            ps.setInt( 5, user.getZip() );
            ps.setString( 6, user.getAddress() );
            ps.setString( 7, user.getRole() );
            ps.setInt(8, balance);
            ps.executeUpdate();
            ResultSet ids = ps.getGeneratedKeys();
            ids.next();
            int id = ids.getInt( 1 );
            user.setId( id );
        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }
    }

    public static User login(String name, String email, String password) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT iduser, role FROM user "
                    + "WHERE name=? AND email=? AND password=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String role = rs.getString("role");
                int id = rs.getInt("iduser");
                User user = new User(name, email, password, role);
                user.setId(id);
                return user;
            } else {
                throw new LoginSampleException("Could not validate user");
            }
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static ArrayList<User> getUsers() throws LoginSampleException {
        ArrayList<User> users = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM carport.user WHERE role = \"customer\"";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(SQL);
            while (rs.next()) {
                int id = rs.getInt("iduser");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String city = rs.getString("city");
                int zip = rs.getInt("zip");
                String address = rs.getString("address");
                String role = rs.getString("role");
                User user = new User(id, name, email, password, city, zip, address, role);
                users.add(user);
            }
            return users;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

}
