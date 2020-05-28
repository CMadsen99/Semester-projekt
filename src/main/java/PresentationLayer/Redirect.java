package PresentationLayer;

import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * redirecter dig til den side man øsnker
 * @author jacobsimonsen
 * @version 2020.1
 * @since 17-04-2020
 */
public class Redirect extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        String destination = request.getParameter("destination");
        return destination;


    }
}
