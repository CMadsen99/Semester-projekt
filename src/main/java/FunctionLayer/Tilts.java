package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

/**
 * Laver en arraylist med de mulige hældninger kunden kan vælge
 * @author jacobsimonsen, christanmadsen & jonasjørgensen
 * @version 2020.1
 * @since 17-04-2020
 */

public class Tilts {

    private static List<Product> tilts;

    public static void initTilts() {
        if (tilts == null) {
            tilts = new ArrayList<>();
            try {
                tilts = ProductMapper.getTilts();
            } catch (LoginSampleException e) {
                e.getMessage();
            }
        }
    }

    public static List<Product> getTilts() {
        return tilts;
    }
}
