package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

/**
 * Laver en arraylist af widths
 * @author jacobsimonsen, christanmadsen jonasjørgensen
 * @version 2020.1
 * @since 17-04-2020
 */

public class Widths {

    private static List<Product> widths;

    public static void initWidths() {
        if (widths == null) {
            widths = new ArrayList<>();
            try {
                widths = ProductMapper.getWidths();
            } catch (LoginSampleException e) {
                e.getMessage();
            }
        }
    }

    public static List<Product> getWidths() {
        return widths;
    }
}
