package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Product;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ProductMapper {

    public static ArrayList<Product> getHeights() throws LoginSampleException {
        ArrayList<Product> heights = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM carport.height";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(SQL);
            while (rs.next()) {
                int id = rs.getInt("idheight");
                double height = rs.getDouble("height");
                Product product = new Product(id, height);
                heights.add(product);
            }
            return heights;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static ArrayList<Product> getLengths() throws LoginSampleException {
        ArrayList<Product> lengths = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM carport.length";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(SQL);
            while (rs.next()) {
                int id = rs.getInt("idlength");
                double length = rs.getDouble("length");
                Product product = new Product(id, length);
                lengths.add(product);
            }
            return lengths;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static ArrayList<Product> getTilts() throws LoginSampleException {
        ArrayList<Product> tilts = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM carport.tilt";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(SQL);
            while (rs.next()) {
                int id = rs.getInt("idtilt");
                String tilt = rs.getString("tilt");
                Product product = new Product(id, tilt);
                tilts.add(product);
            }
            return tilts;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static ArrayList<Product> getWidths() throws LoginSampleException {
        ArrayList<Product> widths = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM carport.width";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(SQL);
            while (rs.next()) {
                int id = rs.getInt("idwidth");
                double width = rs.getDouble("width");
                Product product = new Product(id, width);
                widths.add(product);
            }
            return widths;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static ArrayList<Product> getBodymaterials() throws LoginSampleException {
        ArrayList<Product> bodymaterials = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM carport.bodymaterials";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(SQL);
            while (rs.next()) {
                int idbodymaterials = rs.getInt("idbodymaterials");
                String material = rs.getString("material");
                Product product = new Product(idbodymaterials, material);
                bodymaterials.add(product);
            }
            return bodymaterials;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static ArrayList<Product> getRoofmaterials() throws LoginSampleException {
        ArrayList<Product> roofmaterials = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM carport.bodymaterials";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(SQL);
            while (rs.next()) {
                int idroofmaterials = rs.getInt("idroofmaterials");
                String material = rs.getString("material");
                Product product = new Product(idroofmaterials, material);
                roofmaterials.add(product);
            }
            return roofmaterials;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }
}
