package FunctionLayer;

import DBAccess.OrderMapper;

import java.util.List;

public class OrderFacade {

    public static void createOrder(Order order) throws LoginSampleException {
        OrderMapper.insertOrder(order);
    }

    public static int getMaxOrderId() throws LoginSampleException {
        return OrderMapper.getMaxOrderID();
    }

    public static List<Order> getAllOrders() throws LoginSampleException {
        List<Order> orders = OrderMapper.getAllOrders();
        return orders;
    }

    public static List<Order> getOrdersUser(int userId) throws LoginSampleException {
        List<Order> orders = OrderMapper.getOrders(userId);
        return orders;
    }

}
