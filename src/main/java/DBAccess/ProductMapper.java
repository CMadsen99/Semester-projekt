package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Material;
import FunctionLayer.Product;

import java.sql.*;
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
                int height = rs.getInt("height");
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
                int length = rs.getInt("length");
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
                int tilt = rs.getInt("tilt");
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
                int width = rs.getInt("width");
                Product product = new Product(id, width);
                widths.add(product);
            }
            return widths;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static ArrayList<Material> getBodymaterials() throws LoginSampleException {
        ArrayList<Material> bodymaterials = new ArrayList<>();
        int length = 0;
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM carport.bodymaterials";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(SQL);
            while (rs.next()) {
                int idbodymaterials = rs.getInt("idbodymaterials");
                String name = rs.getString("material");
                double width = rs.getDouble("width");
                double height = rs.getDouble("height");
                Material material = new Material(idbodymaterials, name, width, height, length);
                bodymaterials.add(material);
            }
            return bodymaterials;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static ArrayList<Material> getRoofmaterials() throws LoginSampleException {
        ArrayList<Material> roofmaterials = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM carport.roofmaterials";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(SQL);
            while (rs.next()) {
                int idroofmaterials = rs.getInt("idroofmaterials");
                String name = rs.getString("material");
                Material material = new Material(idroofmaterials, name);
                roofmaterials.add(material);
            }
            return roofmaterials;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }
    public static ArrayList<Material> getRoofcolors() throws LoginSampleException {
        ArrayList<Material> roofcolors = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM carport.roofcolor";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(SQL);
            while (rs.next()) {
                int idroofcolors = rs.getInt("idroofcolor");
                String roofcolor = rs.getString("color");
                Material material = new Material(idroofcolors, roofcolor);
                roofcolors.add(material);
            }
            return roofcolors;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
}
    public static ArrayList<Material> getWallcolors() throws LoginSampleException {
        ArrayList<Material> wallcolors = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM carport.wallcolor";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(SQL);
            while (rs.next()) {
                int idwallcolors = rs.getInt("idwallcolor");
                String wallcolor = rs.getString("color");
                Material material = new Material(idwallcolors, wallcolor);
                wallcolors.add(material);
            }
            return wallcolors;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }
    public static ArrayList<Material> getPillarcolors() throws LoginSampleException {
        ArrayList<Material> pillarcolors = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM carport.pillarcolor";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(SQL);
            while (rs.next()) {
                int idpillarcolors = rs.getInt("idpillarcolor");
                String pillarcolor = rs.getString("color");
                Material material = new Material(idpillarcolors, pillarcolor);
                pillarcolors.add(material);
            }
            return pillarcolors;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static Material getBodyMaterial(int materialID, int length) throws LoginSampleException {
        Material bodyMaterial = null;
        int quantity = 0;
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM carport.bodymaterials WHERE idbodymaterials = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, materialID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String name = rs.getString("material");
                double width = rs.getDouble("width");
                double height = rs.getDouble("height");
                bodyMaterial = new Material(materialID, name, width, height, length, quantity);
            }
            return bodyMaterial;

        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }
}
