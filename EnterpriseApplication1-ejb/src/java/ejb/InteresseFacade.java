/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import java.util.List;
import javax.ejb.Stateless;
import javax.ejb.LocalBean;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Andrea22
 */
@Stateless
@LocalBean
public class InteresseFacade extends AbstractFacade<Interesse> implements InteresseFacadeLocal{

    @PersistenceContext(unitName = "EnterpriseApplication1-ejbPU")
    
    private EntityManager em;
    
    @Override
    protected EntityManager getEntityManager() {
        
        return em;
    }

    public InteresseFacade() {
        super(Interesse.class);
    }
    
    /*@Override
    public Profilo getProfilo(String email){
        //Query q = em.createNativeQuery(query);
        Query q = em.createQuery("SELECT p FROM Profilo p WHERE p.email =:custEmail");
        q.setParameter("custEmail", email);
        List l = q.getResultList();
        System.out.println(l);
        if (l.isEmpty()){
            return null;
        } else {
            Profilo p = em.find(Profilo.class, ((Profilo)l.get(0)).getId());
            return p;
        }
        
    }
    
   
    @Override
    public int checkEmailEsistente(String email){
        Query q = em.createQuery("SELECT p FROM Profilo p WHERE p.email =:custEmail");
        q.setParameter("custEmail", email);
        List l = q.getResultList();
        if (l.isEmpty()){
            return 0;
        } else {
            return -1;
        }
        
    }*/
}
