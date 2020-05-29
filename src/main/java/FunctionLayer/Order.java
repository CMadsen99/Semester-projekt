package FunctionLayer;

/**
 * Laver variabler, constructer og get/set af orderId, brugerId, Størrelser, om carporten har tag/skur og Id/navn på farver.
 * @author jacobsimonsen, christanmadsen jonasjørgensen
 * @version 2020.1
 * @since 17-04-2020
 */

public class Order {

    private int orderId;
    private int userId;
    private int height;
    private int length;
    private int width;
    private int roofType;
    private int roofAngle;
    private int shed;
    private int shedWidth;
    private int shedLength;
    private int colorRoofId;
    private int colorWallId;
    private int colorPillarId;
    private String colorRoofName;
    private String colorWallName;
    private String colorPillarName;

    public Order(int userId, int height, int length, int width, int roofType, int roofAngle, int shed, int shedWidth, int shedLength, int colorRoofId, int colorWallId, int colorPillarId) {
        this.userId = userId;
        this.height = height;
        this.length = length;
        this.width = width;
        this.roofType = roofType;
        this.roofAngle = roofAngle;
        this.shed = shed;
        this.shedWidth = shedWidth;
        this.shedLength = shedLength;
        this.colorRoofId = colorRoofId;
        this.colorWallId = colorWallId;
        this.colorPillarId = colorPillarId;
    }

    public Order(int orderId, int userId, int height, int length, int width, int roofType, int roofAngle, int shed, int shedWidth, int shedLength, String colorRoofName, String colorWallName, String colorPillarName) {
        this.orderId = orderId;
        this.userId = userId;
        this.height = height;
        this.length = length;
        this.width = width;
        this.roofType = roofType;
        this.roofAngle = roofAngle;
        this.shed = shed;
        this.shedWidth = shedWidth;
        this.shedLength = shedLength;
        this.colorRoofName = colorRoofName;
        this.colorWallName = colorWallName;
        this.colorPillarName = colorPillarName;
    }


    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getRoofType() {
        return roofType;
    }

    public void setRoofType(int roofType) {
        this.roofType = roofType;
    }

    public int getRoofAngle() {
        return roofAngle;
    }

    public void setRoofAngle(int roofAngle) {
        this.roofAngle = roofAngle;
    }

    public int getShed() {
        return shed;
    }

    public void setShed(int shed) {
        this.shed = shed;
    }

    public int getShedWidth() {
        return shedWidth;
    }

    public void setShedWidth(int shedWidth) {
        this.shedWidth = shedWidth;
    }

    public int getShedLength() {
        return shedLength;
    }

    public void setShedLength(int shedLength) {
        this.shedLength = shedLength;
    }

    public int getColorRoofId() {
        return colorRoofId;
    }

    public void setColorRoofId(int colorRoofId) {
        this.colorRoofId = colorRoofId;
    }

    public int getColorWallId() {
        return colorWallId;
    }

    public void setColorWallId(int colorWallId) {
        this.colorWallId = colorWallId;
    }

    public int getColorPillarId() {
        return colorPillarId;
    }

    public void setColorPillarId(int colorPillarId) {
        this.colorPillarId = colorPillarId;
    }

    public String getColorRoofName() {
        return colorRoofName;
    }

    public void setColorRoofName(String colorRoofName) {
        this.colorRoofName = colorRoofName;
    }

    public String getColorWallName() {
        return colorWallName;
    }

    public void setColorWallName(String colorWallName) {
        this.colorWallName = colorWallName;
    }

    public String getColorPillarName() {
        return colorPillarName;
    }

    public void setColorPillarName(String colorPillarName) {
        this.colorPillarName = colorPillarName;
    }
}
