/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import java.util.List;
import javax.ejb.EJB;
import javax.jws.WebService;
import javax.ejb.Stateless;
import javax.jws.Oneway;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author giovanna
 */
@WebService(serviceName = "NewWebService")
@Stateless()
public class NewWebService {
    @EJB
    private GestoreUtenti ejbRef;// Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Web Service Operation")

    @WebMethod(operationName = "aggiungiUser")
    @Oneway
    public void aggiungiLibro(@WebParam(name = "username") String username, @WebParam(name = "password") String password) {
        ejbRef.aggiungiUser(username, password);
    }

    @WebMethod(operationName = "getUsers")
    public List<Utente> getUsers() {
        return ejbRef.getUsers();
    }
    
}
