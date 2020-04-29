package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

public class Wallcolors {
    private static List<Product> wallcolors;

    public static void initWallcolors() {
        if (wallcolors == null) {
            wallcolors = new ArrayList<>();
            try {
                wallcolors = ProductMapper.getWallcolors();
            } catch (LoginSampleException e) {
                e.getMessage();
            }
        }
    }

    public static List<Product> getWallcolors() {
        return wallcolors;
    }
}
