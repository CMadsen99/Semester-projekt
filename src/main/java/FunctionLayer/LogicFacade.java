package FunctionLayer;

import DBAccess.UserMapper;

/**
 * The purpose of LogicFacade is to...
 * @author kasper
 */
public class LogicFacade {

    public static User login(String name, String email, String password ) throws LoginSampleException {
        return UserMapper.login(name, email, password );
    } 

    public static User createUser(String name, String email, String password, String city, int zip, String address ) throws LoginSampleException {
        User user = new User(name, email, password, city, zip, address, "customer");
        UserMapper.createUser( user );
        return user;
    }

}
