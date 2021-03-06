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
import utility.Constants;

/**
 *
 * @author Andrea22
 */
@Stateless
@LocalBean
public class DiarioFacade extends AbstractFacade<Diario> implements DiarioFacadeLocal {

    @PersistenceContext(unitName = "EnterpriseApplication1-ejbPU")

    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {

        return em;
    }

    public DiarioFacade() {
        super(Diario.class);
    }

    
}
