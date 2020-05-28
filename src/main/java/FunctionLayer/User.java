package FunctionLayer;

/**
 * Laver variabler, constructer og get/set af alle de informationer en costumer har når de opretter en bruger
 * @author jacobsimonsen, christanmadsen & jonasjørgensen
 * @version 2020.1
 * @since 17-04-2020
 */

public class User {

    private int id;
    private String name;
    private String email;
    private String password;
    private String city;
    private int zip;
    private String address;
    private String role;

    public User(String name, String email, String password, String city, int zip, String address, String role) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.city = city;
        this.zip = zip;
        this.address = address;
        this.role = role;
    }

    public User(String name, String email, String password, String role) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.role = role;
    }

    public User(int id, String name, String email, String password, String city, int zip, String address, String role) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.city = city;
        this.zip = zip;
        this.address = address;
        this.role = role;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getZip() {
        return zip;
    }

    public void setZip(int zip) {
        this.zip = zip;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
