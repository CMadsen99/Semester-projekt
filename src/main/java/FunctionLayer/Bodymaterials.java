package FunctionLayer;

import DBAccess.ProductMapper;

import java.util.ArrayList;
import java.util.List;

public class Bodymaterials {

        private static List<Product> bodymaterials;

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

        public static List<Product> getBodymaterials() {
            return bodymaterials;
        }
}
