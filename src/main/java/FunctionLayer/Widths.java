package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

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
