package PresentationLayer;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.OrderFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
/**
 * viser kundens egne ordre baseret op Userid
 * @author jacobsimonsen, christanmadsen
 * @version 2020.1
 * @since 17-04-2020
 */
public class OrderViewCustomer extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();

        String destination = request.getParameter("destination");

        int usersID = 0;
        if (session.getAttribute("usersID") != null) {
            usersID = (int) session.getAttribute("usersID");

            List<Order> orderListCustomer = OrderFacade.getOrdersUser(usersID);

            session.setAttribute("orderListCustomer", orderListCustomer);
        } else {
            request.setAttribute("noOrdersMsg", "Login kræves for at kunne se tidligere ordre");
        }

        return destination;
    }
}
