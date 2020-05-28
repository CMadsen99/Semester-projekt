package Util;

import DBAccess.ProductMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Material;
/**
 * beregner alle tre sider, hvor den får bruger input ind og regner det om til hvor mange brædder der skal bruges i højde, bræddet er lige så langt som kunden øsnker længden af carporten
 * @author jacobsimonsen, christanmadsen
 * @version 2020.1
 * @since 17-04-2020
 */

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
