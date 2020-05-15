package PresentationLayer;

import FunctionLayer.*;
import Util.BoardCalculator;
import Util.RoofCalculator;
import Util.StandardMaterialCalculator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class CarportCal extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();

        int usersID = 0;
        if (!(request.getParameter("usersID") == "")) {
            usersID = Integer.parseInt(request.getParameter("usersID"));
        }

        if (usersID > 0) {


            try {
                int height = Integer.parseInt(request.getParameter("height")); //antal bræder i højde
                int width = Integer.parseInt(request.getParameter("width")); //længde på bræder på bagsiden

                int length = Integer.parseInt(request.getParameter("length")); // længde på bræder på siderne

                session.setAttribute("length", length);
                session.setAttribute("width", width);


                int bodyMaterialId = Integer.parseInt(request.getParameter("bodymaterial"));
                int roofMaterialId = Integer.parseInt(request.getParameter("roofmaterial"));

                int roof = Integer.parseInt(request.getParameter("roof"));
                int tilt = 0;
                if (roof == 1) {
                    tilt = Integer.parseInt(request.getParameter("tilt"));
                }

                int shed = Integer.parseInt(request.getParameter("shed"));
                int shedWidth = 0;
                int shedLength = 0;
                if (shed == 1) {
                    shedWidth = Integer.parseInt(request.getParameter("shedwidth"));
                    shedLength = Integer.parseInt(request.getParameter("shedlength"));
                }

                int roofColor = Integer.parseInt(request.getParameter("roofcolor"));
                int wallColor = Integer.parseInt(request.getParameter("wallcolor"));
                int pillarColor = Integer.parseInt(request.getParameter("pillarcolor"));

            Order order = new Order(usersID, height, length, width, roof, tilt, shed, shedWidth, shedLength, roofColor, wallColor, pillarColor);
            OrderFacade.createOrder(order);

            List<Material> materials = new ArrayList<>();

            Material sides = BoardCalculator.calculateSides(height, length, bodyMaterialId);
            materials.add(sides);
            Material back = BoardCalculator.calculateBack(height, width, bodyMaterialId);
            materials.add(back);
            Material pillar = StandardMaterialCalculator.calculatePillars(height, length);
            materials.add(pillar);
            Material sternFrontBack = StandardMaterialCalculator.calculateSternFrontBack(width);
            materials.add(sternFrontBack);
            Material sternSides = StandardMaterialCalculator.calculateSternSides(length);
            materials.add(sternSides);
            Material regler = StandardMaterialCalculator.calculateRegler(length, width);
            materials.add(regler);
            Material rafter = StandardMaterialCalculator.calculateRafter(width, length);
            materials.add(rafter);
            Material roofMaterial = RoofCalculator.calculateRoof(width, length, roofMaterialId);
            materials.add(roofMaterial);

            int maxOrderId = OrderFacade.getMaxOrderId();

            for (Material m : materials) {
                ListFacade.insertListElement(m, maxOrderId);
            }

            request.setAttribute("carportMsg", "Carport gemt som ordre");

            } catch (Exception e) {
                request.setAttribute("exeptionMsg", "Der er noget der mangler at blive udfyldt, prøv igen");
                e.printStackTrace();
            }

            return "index";
        } else {
            request.setAttribute("orderMsg", "Login krævet for at bestille");
            return "signin";
        }
    }
}
