package PresentationLayer;

import FunctionLayer.ListFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Material;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
/**
 * Viser styklisten
 * @author christanmadsen
 * @version 2020.1
 * @since 17-04-2020
 */
public class CollectListView extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();

        int orderId = Integer.parseInt(request.getParameter("idOrder"));

        List<Material> collectList = ListFacade.getCollectList(orderId);

        session.setAttribute("collectList", collectList);

        return "collectlist";
    }
}
