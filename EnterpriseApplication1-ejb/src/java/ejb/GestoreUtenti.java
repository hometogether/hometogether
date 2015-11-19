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
    private UtenteFacadeLocal utenteFacade;
   

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    public int aggiungiUser(String nome,String cognome,String password,String r_password,String email,String r_email,String giorno,String mese,String anno,String sesso) {
        
        if (nome == null || cognome == null || password == null || r_password == null || email == null || 
                r_email == null || giorno == null || mese == null || anno == null || sesso == null){
            return -1;
        }
        Utente u = new Utente();
        u.setNome(nome);
        u.setCognome(cognome);
        if (password.equals(r_password)){
            u.setPassword(password);
        } else {
            return -1;
        }
        if (email.equals(r_email)){
            u.setEmail(email);
        } else {
            return -1;
        }
        u.setData_nascita(anno+"-"+mese+"-"+giorno);
        u.setSesso(sesso);
        u.setUsername(nome+cognome);
        u.setTipo("0");
        u.setIdComune("0");
                
        u.setFoto_profilo("");
        utenteFacade.create(u);
        
        return 0;
    }

    public List<Utente> getUsers() {
        List<Utente> listaUser = utenteFacade.findAll();
        
        return listaUser;
    }
}
