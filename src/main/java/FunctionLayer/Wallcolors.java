package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

/**
 * Laver en arraylist af wallcolors
 * @author jacobsimonsen, christanmadsen jonasjørgensen
 * @version 2020.1
 * @since 17-04-2020
 */

public class Wallcolors {
    private static List<Material> wallcolors;

    public static void initWallcolors() {
        if (wallcolors == null) {
            wallcolors = new ArrayList<>();
            try {
                wallcolors = ProductMapper.getColors();
            } catch (LoginSampleException e) {
                e.getMessage();
            }
        }
    }

    public static List<Material> getWallcolors() {
        return wallcolors;
    }
}
