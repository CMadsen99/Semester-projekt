package FunctionLayer;


import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

/**
 * Laver en arraylist af accessories
 * @author jacobsimonsen, christanmadsen & jonasjørgensen
 * @version 2020.1
 * @since 17-04-2020
 */

public class Accessories {

    private static List<Accessory> accessories;

    public static void initAccessories() {

        if (accessories == null) {
            accessories = new ArrayList<>();
            try {
                accessories = ProductMapper.getAccessories();
            } catch (LoginSampleException e) {
                e.getMessage();
            }
        }
    }

    public static List<Accessory> getAccessories() {
        return accessories;
    }
}
