/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import javax.ejb.Local;

/**
 *
 * @author Andrea22
 */
@Local
public interface SessioneLocal {

    public Long getId();

    public void setId(Long id);

    public String getUsername();

    public void setUsername(String username);
     
    public String getNome();
    
    public void setNome(String nome);
    
    public String getCognome();

    public void setCognome(String cognome);
    
    public String getTipo();

    public void setTipo(String tipo);

    public String getEmail();

    public void setEmail(String email);

    public String getFoto_profilo();

    public void setFoto_profilo(String foto_profilo);
    
}
