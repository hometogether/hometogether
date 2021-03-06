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
 * @author Andrea22
 */
@Stateless
public class UtenteAppFacade extends AbstractFacade<UtenteApp> implements UtenteAppFacadeLocal{

    @PersistenceContext(unitName = "EnterpriseApplication1-ejbPU")
    
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        
        return em;
    }

    public UtenteAppFacade() {
        super(UtenteApp.class);
    }
    
    @Override
    public UtenteApp getUtente(String email, String password){
        //Query q = em.createNativeQuery(query);
        System.out.println("entro in getutente Google");
        Query q = em.createQuery("SELECT u FROM UtenteApp u WHERE u.email =:custEmail AND u.password =:custPassword");
        q.setParameter("custEmail", email);
        q.setParameter("custPassword", password);
        List l = q.getResultList();
        System.out.println(l);
        if (l.isEmpty()){
            return null;
        } else {
            UtenteApp u = em.find(UtenteApp.class, ((UtenteApp)l.get(0)).getId());
            return u;
        }
        
    }
}
