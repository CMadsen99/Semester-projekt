package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

public class Pillarcolors {
    private static List<Product> pillarcolors;

    public static void initPillarcolors() {
        if (pillarcolors == null) {
            pillarcolors = new ArrayList<>();
            try {
                pillarcolors = ProductMapper.getWallcolors();
            } catch (LoginSampleException e) {
                e.getMessage();
            }
        }
    }

    public static List<Product> getPillarcolors() {
        return pillarcolors;
    }
}
