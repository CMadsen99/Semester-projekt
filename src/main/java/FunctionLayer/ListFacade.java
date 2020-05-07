package FunctionLayer;

import DBAccess.ListMapper;

import java.util.List;

public class ListFacade {

    public static void insertListElement(Material material, int maxOrderId) throws LoginSampleException {
        ListMapper.insertListElement(material, maxOrderId);
    }

    public static List<Material> getCollectList(int orderId) throws LoginSampleException {
        List<Material> collectList = ListMapper.getList(orderId);
        return collectList;
    }
}
