package FunctionLayer;


import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

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
