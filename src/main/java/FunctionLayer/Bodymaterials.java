package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

/**
 * Laver en ArrayList til bodymaterials
 * @author jacobsimonsen, christanmadsen & jonasjørgensen
 * @version 2020.1
 * @since 17-04-2020
 */

public class Bodymaterials {

        private static List<Material> bodymaterials;

        public static void initBodymaterials() {
            if (bodymaterials == null) {
                bodymaterials = new ArrayList<>();
                try {
                    bodymaterials = ProductMapper.getBodymaterials();
                } catch (LoginSampleException e) {
                    e.getMessage();
                }
            }
        }

        public static List<Material> getBodymaterials() {
            return bodymaterials;
        }
}
