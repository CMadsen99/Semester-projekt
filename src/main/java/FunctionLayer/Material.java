package FunctionLayer;

public class Material {

    private int id;
    private String name;
    private double width;
    private double height;
    private int length;
    private int quantity;

    public Material(int id, String name, double width, double height, int length) {
        this.id = id;
        this.name = name;
        this.width = width;
        this.height = height;
        this.length = length;
    }

    public Material(int id, String name, double width, double height, int length, int quantity) {
        this.id = id;
        this.name = name;
        this.width = width;
        this.height = height;
        this.length = length;
        this.quantity = quantity;
    }

    public Material(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getWidth() {
        return width;
    }

    public void setWidth(double width) {
        this.width = width;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
