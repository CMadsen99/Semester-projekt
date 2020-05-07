package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Material;
import FunctionLayer.Order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ListMapper {

    public static void insertListElement(Material material, int maxOrderId) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO carport.collectlist(orderid, materialid, materialname, height, width, length, quantity)\n" +
                    "VALUES(?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, maxOrderId);
            ps.setInt(2, material.getId());
            ps.setString(3, material.getName());
            ps.setString(4, String.valueOf(material.getHeight()));
            ps.setString(5, String.valueOf(material.getWidth()));
            ps.setInt(6, material.getLength());
            ps.setInt(7, material.getQuantity());
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static ArrayList<Material> getList(int id) throws LoginSampleException {
        ArrayList<Material> collectList = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM carport.collectlist WHERE orderid = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int materialid = rs.getInt("materialid");
                String name = rs.getString("materialname");
                double height = rs.getDouble("height");
                double width = rs.getDouble("width");
                int length = rs.getInt("length");
                int quantity = rs.getInt("quantity");

                Material material = new Material(materialid, name, width, height, length, quantity);
                collectList.add(material);
            }
            return collectList;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }
}
