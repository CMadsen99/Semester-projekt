package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

public class Lengths {

    private static List<Product> lengths;

    public static void initLengths() {
        if (lengths == null) {
            lengths = new ArrayList<>();
            try {
                lengths = ProductMapper.getLengths();
            } catch (LoginSampleException e) {
                e.getMessage();
            }
        }
    }

    public static List<Product> getLengths() {
        return lengths;
    }
}
