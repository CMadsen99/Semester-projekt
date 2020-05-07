package PresentationLayer;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.OrderFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.List;

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
