package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

public class Roofcolors {

    private static List<Product> roofcolors;

    public static void initRoofcolors() {
        if (roofcolors == null) {
            roofcolors = new ArrayList<>();
            try {
                roofcolors = ProductMapper.getRoofcolors();
            } catch (LoginSampleException e) {
                e.getMessage();
            }
        }
    }

    public static List<Product> getRoofcolors() {
        return roofcolors;
    }
}
