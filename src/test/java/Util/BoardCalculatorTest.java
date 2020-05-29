package Util;

import DBAccess.UserMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Material;
import FunctionLayer.User;
import junit.framework.TestCase;
import org.junit.Test;


public class BoardCalculatorTest extends TestCase {
    int height = 250;
    int width = 300;
    int boardID = 1;


    //opnå, at se om den henter det rigtige materiale ud fra databasen
    @Test
    public void testCalculateBack1() throws LoginSampleException {
        Material material = BoardCalculator.calculateBack(height, width, boardID);

        assertEquals("Tværgående profilbrædder", material.getName());
    }

    // tester om resultatet af udregningen giver det rigtige, forventer 20 da der tages 250/12,5 da det er brættes højde.
    @Test
    public void testCalculateBack2() throws LoginSampleException {
        Material material = BoardCalculator.calculateBack(height, width, boardID);

        assertEquals(20, material.getQuantity());
    }
}




