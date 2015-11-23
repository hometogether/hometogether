/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author giovanna
 */
@Stateless
public class UtenteFacade extends AbstractFacade<Utente> implements UtenteFacadeLocal {
    @PersistenceContext(unitName = "EnterpriseApplication1-ejbPU")
    
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        
        return em;
    }

    public UtenteFacade() {
        super(Utente.class);
    }
    
    @Override
    public Utente getUtente(String email, String password){
        //Query q = em.createNativeQuery(query);
        System.out.println("entro in getutente");
        Query q = em.createQuery("SELECT u FROM Utente u WHERE u.email =:custEmail AND u.password =:custPassword");
        q.setParameter("custEmail", email);
        q.setParameter("custPassword", password);
        List l = q.getResultList();
        System.out.println(l);
        if (l.isEmpty()){
            return null;
        } else {
            System.out.println("prima del find");

            Utente u = em.find(Utente.class, ((Utente)l.get(0)).getId());
            
            System.out.println("dopo il find");
            
            System.out.println(u);


            return u;
        }
        
    }
    
    
    
}
