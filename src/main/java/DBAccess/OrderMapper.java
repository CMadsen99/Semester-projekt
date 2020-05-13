package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;

import java.sql.*;
import java.util.ArrayList;

public class OrderMapper {

    public static void insertOrder(Order order) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO carport.orders(userid, height, length, width, rooftype, roofangle, shed, shedwidth, shedlength, colorroofid, colorwallid, colorpillarid)\n" +
                    "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, order.getUserId());
            ps.setInt(2, order.getHeight());
            ps.setInt(3, order.getLength());
            ps.setInt(4, order.getWidth());
            ps.setInt(5, order.getRoofType());
            ps.setInt(6, order.getRoofAngle());
            ps.setInt(7, order.getShed());
            ps.setInt(8, order.getShedWidth());
            ps.setInt(9, order.getShedLength());
            ps.setInt(10, order.getColorRoofId());
            ps.setInt(11, order.getColorWallId());
            ps.setInt(12, order.getColorPillarId());
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static ArrayList<Order> getOrders(int id) throws LoginSampleException {
        ArrayList<Order> orders = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM carport.orders WHERE userid = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int orderId = rs.getInt("idorders");
                int userId = rs.getInt("userid");
                int height = rs.getInt("height");
                int length = rs.getInt("length");
                int width = rs.getInt("width");
                int roofType = rs.getInt("rooftype");
                int roofAngle = rs.getInt("roofangle");
                int shed = rs.getInt("shed");
                int shedWidth = rs.getInt("shedwidth");
                int shedLength = rs.getInt("shedlength");
                int colorRoofId = rs.getInt("colorroofid");
                int colorWallId = rs.getInt("colorwallid");
                int colorPillarId = rs.getInt("colorpillarid");

                Order order = new Order(orderId, userId, height, length, width, roofType, roofAngle, shed, shedWidth, shedLength, colorRoofId, colorWallId, colorPillarId);
                orders.add(order);
            }
            return orders;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static ArrayList<Order> getAllOrders() throws LoginSampleException {
        ArrayList<Order> orders = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM carport.orders";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(SQL);
            while (rs.next()) {
                int orderId = rs.getInt("idorders");
                int userId = rs.getInt("userid");
                int height = rs.getInt("height");
                int length = rs.getInt("length");
                int width = rs.getInt("width");
                int roofType = rs.getInt("rooftype");
                int roofAngle = rs.getInt("roofangle");
                int shed = rs.getInt("shed");
                int shedWidth = rs.getInt("shedwidth");
                int shedLength = rs.getInt("shedlength");
                int colorRoofId = rs.getInt("colorroofid");
                int colorWallId = rs.getInt("colorwallid");
                int colorPillarId = rs.getInt("colorpillarid");

                Order order = new Order(orderId, userId, height, length, width, roofType, roofAngle, shed, shedWidth, shedLength, colorRoofId, colorWallId, colorPillarId);
                orders.add(order);
            }
            return orders;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static int getMaxOrderID() throws LoginSampleException {
        int orderID = 0;
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT MAX(idorders) as id FROM carport.orders";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(SQL);
            if (rs.next()) {
                orderID = rs.getInt("id");
            }
            return orderID;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static String getColor(int colorID) throws LoginSampleException {
        String color = null;
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT color FROM carport.colors WHERE idcolor = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, colorID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                color = rs.getString("color");
            }
            return color;

        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }
}
