package PresentationLayer;

import FunctionLayer.LoginSampleException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * hvis der er en ukendt fejl kommer denne besked op i stedet for at siden bryder ned og der så kommer en fejl 5** eller 4** fejl
 * @author jacobsimonsen, christanmadsen jonasjørgensen
 * @version 2020.1
 * @since 17-04-2020
 */
public class UnknownCommand extends Command {

    @Override
    String execute( HttpServletRequest request, HttpServletResponse response ) throws LoginSampleException {
        String msg = "Unknown command. Contact IT";
        throw new LoginSampleException( msg );
    }

}
