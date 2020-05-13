package Util;

import DBAccess.ProductMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Material;

public class RoofCalculator {

    public static Material calculateRoof(int carportWidth, int carportLength, int roofID) throws LoginSampleException {
        Material roofMaterial = ProductMapper.getRoofMaterial(roofID);

        int roofPlateLength = carportLength/5; //der deles med 5, da det er det valgte antal plader i længden
        roofMaterial.setLength(roofPlateLength);

        double roofPlateWidth = carportWidth/2; //samme logik som med længden
        roofMaterial.setWidth(roofPlateWidth);

        int quantity = 5*2;
        roofMaterial.setQuantity(quantity);

        return roofMaterial;
    }
}
