package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

public class Roofmaterials {

    private static List<Material> roofmaterials;

    public static void initRoofmaterials() {
        if (roofmaterials == null) {
            roofmaterials = new ArrayList<>();
            try {
                roofmaterials = ProductMapper.getRoofmaterials();
            } catch (LoginSampleException e) {
                e.getMessage();
            }
        }
    }

    public static List<Material> getRoofmaterials() {
        return roofmaterials;
    }
}