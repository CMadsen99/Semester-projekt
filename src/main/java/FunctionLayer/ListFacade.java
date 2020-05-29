package FunctionLayer;

import DBAccess.ListMapper;

import java.util.List;

/** formålet med Listfacade er at man ikke henter mapper ned direkte i PresentationLayer
 * @author jacobsimonsen, christanmadsen & jonasjørgensen
 * @version 2020.1
 * @since 17-04-2020
 */

public class ListFacade {

    public static void insertListElement(Material material, int maxOrderId) throws LoginSampleException {
        ListMapper.insertListElement(material, maxOrderId);
    }

    public static List<Material> getCollectList(int orderId) throws LoginSampleException {
        List<Material> collectList = ListMapper.getList(orderId);
        return collectList;
    }
}
