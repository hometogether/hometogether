/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import javax.ejb.Stateless;
import javax.ejb.LocalBean;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Andrea22
 */
@Stateless
@LocalBean
public class LinguaFacade extends AbstractFacade<Lingua> implements LinguaFacadeLocal{

    @PersistenceContext(unitName = "EnterpriseApplication1-ejbPU")
    
    private EntityManager em;
    
    @Override
    protected EntityManager getEntityManager() {
        
        return em;
    }

    public LinguaFacade() {
        super(Lingua.class);
    }
    
}
