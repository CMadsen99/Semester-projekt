package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;

import java.sql.*;
import java.util.ArrayList;

/**
 * Indsætter i ordertabellen, indsætter nye bruger i user tabellen, henter ordre ned fra ordertabellen, henter også max order id'et.
 * @author christanmadsen
 * @version 2020.1
 * @since 17-04-2020
 */

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
            String SQL = "SELECT o.idorders, o.userid, o.height, o.length, o.width, o.rooftype, o.roofangle, o.shed, o.shedwidth, o.shedlength, ca.color as roofcolor, cb.color as wallcolor, cc.color as pillarcolor \n" +
                    "FROM orders o, colors ca, colors cb, colors cc\n" +
                    "WHERE o.colorroofid = ca.idcolor AND o.colorwallid = cb.idcolor AND o.colorpillarid = cc.idcolor AND o.userid = ?\n" +
                    "ORDER BY o.idorders asc";
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
                String colorRoofName = rs.getString("roofcolor");
                String colorWallName = rs.getString("wallcolor");
                String colorPillarName = rs.getString("pillarcolor");

                Order order = new Order(orderId, userId, height, length, width, roofType, roofAngle, shed, shedWidth, shedLength, colorRoofName, colorWallName, colorPillarName);
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
            String SQL = "SELECT o.idorders, o.userid, o.height, o.length, o.width, o.rooftype, o.roofangle, o.shed, o.shedwidth, o.shedlength, ca.color as roofcolor, cb.color as wallcolor, cc.color as pillarcolor \n" +
                    "FROM orders o, colors ca, colors cb, colors cc\n" +
                    "WHERE o.colorroofid = ca.idcolor AND o.colorwallid = cb.idcolor AND o.colorpillarid = cc.idcolor\n" +
                    "ORDER BY o.idorders asc";
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
                String colorRoofName = rs.getString("roofcolor");
                String colorWallName = rs.getString("wallcolor");
                String colorPillarName = rs.getString("pillarcolor");

                Order order = new Order(orderId, userId, height, length, width, roofType, roofAngle, shed, shedWidth, shedLength, colorRoofName, colorWallName, colorPillarName);
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

}
