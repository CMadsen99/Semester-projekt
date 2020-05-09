package Util;

import DBAccess.ProductMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Material;

public class BoardCalculator {

    public static Material calculateSides(int height, int length, int boardID) throws LoginSampleException {
        double quantity;

        Material bodyMaterial = ProductMapper.getBodyMaterial(boardID, length);

        //Forskellen mellem den fulde højde og højden på et enkelt bræt, ganget med to for at få begge sider
        quantity = (height / bodyMaterial.getHeight()) * 2;
        bodyMaterial.setQuantity((int) quantity);

        return bodyMaterial;
    }

    public static Material calculateBack(int height, int width, int boardID) throws LoginSampleException {
        double quantity;

        Material bodyMaterial = ProductMapper.getBodyMaterial(boardID, width);

        quantity = (height / bodyMaterial.getHeight());
        bodyMaterial.setQuantity((int) quantity);

        return bodyMaterial;
    }
}
