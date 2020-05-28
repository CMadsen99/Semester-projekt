package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

/**
 * Laver en arraylist af roofmaterials
 * @author jacobsimonsen, christanmadsen & jonasjørgensen
 * @version 2020.1
 * @since 17-04-2020
 */

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