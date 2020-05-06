package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

public class Pillarcolors {
    private static List<Material> pillarcolors;

    public static void initPillarcolors() {
        if (pillarcolors == null) {
            pillarcolors = new ArrayList<>();
            try {
                pillarcolors = ProductMapper.getColors();
            } catch (LoginSampleException e) {
                e.getMessage();
            }
        }
    }

    public static List<Material> getPillarcolors() {
        return pillarcolors;
    }
}
