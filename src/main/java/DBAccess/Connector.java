package DBAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Får forbindelse med databasen med nødvendig kode, username, og rigtgie ip adresse
 * @author jacobsimonsen, christanmadsen & jonasjørgensen
 * @version 2020.1
 * @since 17-04-2020
 */
public class Connector {

    private static String URL;
    private static String USERNAME;
    private static String PASSWORD;

    private static Connection singleton;

    public static void setConnection(Connection con) {
        singleton = con;
    }

    public static Connection connection() throws ClassNotFoundException, SQLException {
        if (singleton == null) {
            setDBCredentials();
            Class.forName("com.mysql.cj.jdbc.Driver" );
            singleton = DriverManager.getConnection( URL, USERNAME, PASSWORD );
        }
        return singleton;
    }

    public static void setDBCredentials() {
        //String deployed = System.getenv("DEPLOYED");


            //localhost
            URL = "jdbc:mysql://178.128.248.191:3306/carport?serverTimezone=CET&useSSL=false";
            USERNAME = "root";

            PASSWORD = "MitPassword1234/";
        }


    }
