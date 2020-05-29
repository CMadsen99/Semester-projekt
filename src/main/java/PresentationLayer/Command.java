package PresentationLayer;

import FunctionLayer.LoginSampleException;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * sørger for at der er forbindelse mellem java og jsp siderne
 * @author jacobsimonsen, christanmadsen jonasjørgensen
 * @version 2020.1
 * @since 17-04-2020
 */

abstract class Command {

    private static HashMap<String, Command> commands;

    private static void initCommands() {
        commands = new HashMap<>();
        commands.put( "login", new Login() );
        commands.put( "register", new Register() );
        commands.put( "redirect", new Redirect() );
        commands.put( "carportCal", new CarportCal() );
        commands.put("logout", new Logout() );
        commands.put("orderViewAll", new OrderViewAll() );
        commands.put("collectListView", new CollectListView() );
        commands.put("orderView", new OrderView() );
        commands.put("collectListViewUser", new CollectListViewUser() );
        commands.put("orderViewCustomer", new OrderViewCustomer() );
    }

    static Command from( HttpServletRequest request ) {
        String TagetName = request.getParameter( "taget" );
        if ( commands == null ) {
            initCommands();
        }
        return commands.getOrDefault(TagetName, new UnknownCommand() );   // unknowncommand er default.
    }

    abstract String execute( HttpServletRequest request, HttpServletResponse response ) 
            throws LoginSampleException;


}
