package FunctionLayer;

import DBAccess.UserMapper;

import java.util.ArrayList;
import java.util.List;

/**
 * Laver en arraylist af brugere
 * @author jacobsimonsen, christanmadsen jonasjørgensen
 * @version 2020.1
 * @since 17-04-2020
 */

public class UserList {

    private static List<User> userList;

    public static void initUserList() {

        if (userList == null) {
            userList = new ArrayList<>();
            try {
                userList = UserMapper.getUsers();
            } catch (LoginSampleException e) {
                e.getMessage();
            }
        }
    }

    public static List<User> getUserList() {
        return userList;
    }
}
