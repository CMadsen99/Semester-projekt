package FunctionLayer;

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

    public Order(int orderId, int userId, int height, int length, int width, int roofType, int roofAngle, int shed, int shedWidth, int shedLength, int colorRoofId, int colorWallId, int colorPillarId) {
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
        this.colorRoofId = colorRoofId;
        this.colorWallId = colorWallId;
        this.colorPillarId = colorPillarId;
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
}
