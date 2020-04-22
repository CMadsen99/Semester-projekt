package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

public class Heights {

    private static List<Product> heights;

    public static void initHeights() {
        if (heights == null) {
            heights = new ArrayList<>();
            try {
                heights = ProductMapper.getHeights();
            } catch (LoginSampleException e) {
                e.getMessage();
            }
        }
    }

    public static List<Product> getHeights() {
        return heights;
    }
}

