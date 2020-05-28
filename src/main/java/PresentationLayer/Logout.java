package PresentationLayer;

import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Logger brugeren ud når bruger trykker log ud på jsp siden, reset session
 * @author jacobsimonsen
 * @version 2020.1
 * @since 17-04-2020
 */
public class Logout extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        HttpSession session = request.getSession();
        String destination = request.getParameter("destination");

        session.invalidate();

        return destination;
    }
}
