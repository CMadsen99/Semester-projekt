package Util;

import DBAccess.ProductMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Material;

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
