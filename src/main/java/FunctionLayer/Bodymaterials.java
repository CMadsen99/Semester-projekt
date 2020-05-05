package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

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
