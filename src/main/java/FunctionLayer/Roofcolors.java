package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

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
