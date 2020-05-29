package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

/**
 * Laver en arraylist af roofcolors
 * @author jacobsimonsen, christanmadsen jonasjørgensen
 * @version 2020.1
 * @since 17-04-2020
 */

public class Roofcolors {

    private static List<Material> roofcolors;

    public static void initRoofcolors() {
        if (roofcolors == null) {
            roofcolors = new ArrayList<>();
            try {
                roofcolors = ProductMapper.getColors();
            } catch (LoginSampleException e) {
                e.getMessage();
            }
        }
    }

    public static List<Material> getRoofcolors() {
        return roofcolors;
    }
}
