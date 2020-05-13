package PresentationLayer;


import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.OrderFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class OrderViewAll extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();

        String destination = request.getParameter("destination");

        List<Order> orderListAll = OrderFacade.getAllOrders();

        session.setAttribute("orderListAll", orderListAll);

        return destination;
    }
}
