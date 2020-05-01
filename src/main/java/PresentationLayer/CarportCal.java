package PresentationLayer;

import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CarportCal extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        int height = Integer.parseInt(request.getParameter("height")); //antal bræder i højde
        int width = Integer.parseInt(request.getParameter("width")); //længde på bræder
        int length = Integer.parseInt(request.getParameter("length")); // længde på bræder
        return null;
    }
}
