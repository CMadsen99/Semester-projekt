package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

/**
 * Laver en arraylist til lengths
 * @author jacobsimonsen, christanmadsen jonasjørgensen
 * @version 2020.1
 * @since 17-04-2020
 */

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
