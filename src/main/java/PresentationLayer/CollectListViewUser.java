package PresentationLayer;

import FunctionLayer.ListFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Material;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class CollectListViewUser extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();

        int orderId = Integer.parseInt(request.getParameter("idOrder"));

        List<Material> collectList = ListFacade.getCollectList(orderId);

        session.setAttribute("collectListUser", collectList);

        return "collectlistUser";
    }
}
