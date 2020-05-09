package Util;

import DBAccess.ProductMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Material;

public class StandardMaterialCalculator {

    // Stolpe er længden = med carportens højde
    //

    public static Material calculatePillars(int pillarLength, int carportLength) throws LoginSampleException {
        int id = 1;
        pillarLength = pillarLength + 90; // stolperne skal gå 90 cm ned i jorden
        int quantity = ((carportLength/75)+1)*2; //deler med 75, da det er den faste afstand mellem to stolper
        // der gøres brug af integer division, så decimaldelen smides væk. +1 for at få samlet antal stolper
        // der ganges med 2 for at få begge sider af carporten

        Material pillars = ProductMapper.getStandardBodyMaterial(id, pillarLength);

        pillars.setQuantity(quantity);

        return pillars;
    }

    public static Material calculateSternFrontBack(int carportWidth) throws LoginSampleException {
        int id = 2;
        int quantity = 2; //en på forsiden og en på bagsiden

        Material stern = ProductMapper.getStandardBodyMaterial(id, carportWidth);

        stern.setQuantity(quantity);

        return stern;
    }

    public static Material calculateSternSides(int carportLength) throws LoginSampleException {
        int id = 2;
        int quantity = 2; //en på hver side

        Material stern = ProductMapper.getStandardBodyMaterial(id, carportLength);

        stern.setQuantity(quantity);

        return stern;
    }

    public static Material calculateRegler(int carportLength, int carportWidth) throws LoginSampleException {
        int id = 3;
        int quantity = (carportWidth/50)+1; //samme ide som stolpe

        Material regle = ProductMapper.getStandardBodyMaterial(id, carportLength);

        regle.setQuantity(quantity);

        return regle;
    }

    public static Material calculateRafter(int carportWidth, int carportLength) throws LoginSampleException {
        int id = 4;
        int quantity = (carportLength/75)+1; // samme udregning som en langside på stolper

        Material rafter = ProductMapper.getStandardBodyMaterial(id, carportWidth);

        rafter.setQuantity(quantity);

        return rafter;
    }
}
