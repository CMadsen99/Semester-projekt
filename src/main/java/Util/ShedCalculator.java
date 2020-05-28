package Util;

import DBAccess.ProductMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Material;
/**
 * beregner hvor mange brædder der skal bruges til skuret hvis kunden har valgt skur
 * @author jacobsimonsen, christanmadsen & jonasjørgensen
 * @version 2020.1
 * @since 17-04-2020
 */

public class ShedCalculator {

    public static Material calculateSide (int carportHeight, int shedLength, int boardId) throws LoginSampleException {
        double quantity;

        Material shedMaterial = ProductMapper.getBodyMaterial(boardId, shedLength);

        quantity = carportHeight / shedMaterial.getHeight();
        shedMaterial.setQuantity((int) quantity);

        return shedMaterial;
    }

    public static Material calculateFront (int carportHeight, int carportWidth, int shedWidth, int boardId) throws LoginSampleException {
        double quantity;

        if (shedWidth == 1) {
            carportWidth = carportWidth/2; //1 betyder at man har valgt at skuret skal være halvdelen af carporten bredde
        }

        Material shedMaterial = ProductMapper.getBodyMaterial(boardId, carportWidth);

        quantity = carportHeight / shedMaterial.getHeight();
        shedMaterial.setQuantity((int) quantity);

        return shedMaterial;
    }
}
