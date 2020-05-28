package PresentationLayer;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.OrderFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.List;
/**
 * Viser ordrene for en kunde
 * @author jacobsimonsen, christanmadsen
 * @version 2020.1
 * @since 17-04-2020
 */

public class OrderView extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();
        int userId = Integer.parseInt(request.getParameter("idOrder"));

        List<Order> orderList = OrderFacade.getOrdersUser(userId);

        session.setAttribute("orderList", orderList);

        return "orderlistUser";
    }
}
