package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Register extends Command {

    @Override
    String execute( HttpServletRequest request, HttpServletResponse response ) throws LoginSampleException {
        try {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password1 = request.getParameter("password1");
            String password2 = request.getParameter("password2");
            String city = request.getParameter("city");
            int zip = Integer.parseInt(request.getParameter("<zipcode>"));
            String address = request.getParameter("address");
            if (password1.equals(password2)) {
                User user = LogicFacade.createUser(name, email, password1, city, zip, address);

                return "signin";
            } else {
                request.setAttribute("passwordMsg", "De to passwords er ikke ens, prøv igen");
                //throw new LoginSampleException("the two passwords did not match");

            }
        } catch (Exception e){
            request.setAttribute("registermsg", "Der er noget der mangler at blive udfyldt, prøv igen");
            e.printStackTrace();
        }
        return "signUp";
    }

}
