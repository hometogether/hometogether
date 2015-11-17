/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import java.util.List;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.ejb.LocalBean;
/**
 *
 * @author Andrea22
 */
@Stateless
@LocalBean
public class GestoreUtenti {
    @EJB
    private UtenteFacadeLocal userFacade;

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    public void aggiungiUser(String username, String password) {
        System.out.println("entro in aggiungiUser");
        Utente u = new Utente();
        u.setUsername(username);
        u.setPassword(password);
        userFacade.create(u);
    }

    public List<Utente> getUsers() {
        List<Utente> listaUser = userFacade.findAll();
        
        return listaUser;
    }
}
