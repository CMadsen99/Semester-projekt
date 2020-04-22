package FunctionLayer;

public class Product {

    private int id;
    private double value;
    private String tiltVal;

    public Product(int id, String tiltVal) {
        this.id = id;
        this.tiltVal = tiltVal;
    }

    public Product(int id, double value) {
        this.id = id;
        this.value = value;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public String getTiltVal() {
        return tiltVal;
    }

    public void setTiltVal(String tiltVal) {
        this.tiltVal = tiltVal;
    }
}
