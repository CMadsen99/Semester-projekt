package PresentationLayer;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Material;
import Util.BoardCalculator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CarportCal extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        int height = Integer.parseInt(request.getParameter("height")); //antal bræder i højde
        int width = Integer.parseInt(request.getParameter("width")); //længde på bræder på bagsiden
        int length = Integer.parseInt(request.getParameter("length")); // længde på bræder på siderne
        int bodyMaterialId = Integer.parseInt(request.getParameter("bodymaterial"));

        Material sides = new BoardCalculator().calculateSides(height, length, bodyMaterialId);
        Material back = new BoardCalculator().calculateBack(height, width, bodyMaterialId);

        return null;
    }
}
