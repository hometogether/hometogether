/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author giovanna
 */
@Entity
public class UtenteGoogle implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    public Long getId() {
        return id;
    }
     public void setId(Long id) {
        this.id = id;
    }
    
    private String idGoogle;

    /**
     * Get the value of email
     *
     * @return the value of email
     */
    public String getIdGoogle() {
        return idGoogle;
    }

    /**
     * Set the value of email
     *
     * @param idGoogle new value of email
     */
    public void setIdGoogle(String idGoogle) {
        this.idGoogle = idGoogle;
    } 
     
    private String email;

    /**
     * Get the value of email
     *
     * @return the value of email
     */
    public String getEmail() {
        return email;
    }

    /**
     * Set the value of email
     *
     * @param email new value of email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    private long idProfilo;

    /**
     * Get the value of idProfilo
     *
     * @return the value of idProfilo
     */
    public long getIdProfilo() {
        return idProfilo;
    }

    /**
     * Set the value of idProfilo
     *
     * @param idProfilo new value of idProfilo
     */
    public void setIdProfilo(long idProfilo) {
        this.idProfilo = idProfilo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UtenteGoogle)) {
            return false;
        }
        UtenteGoogle other = (UtenteGoogle) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.Utente[ id=" + id + " ]";
    }
    
}
