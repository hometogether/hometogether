/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import javax.ejb.Stateful;

/**
 *
 * @author Andrea22
 */
@Stateful
public class Sessione implements SessioneLocal {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    private Long id;

    @Override
    public Long getId() {
        return id;
    }
    @Override
     public void setId(Long id) {
        this.id = id;
    }
     
    private String username;

    /**
     * Get the value of username
     *
     * @return the value of username
     */
    @Override
    public String getUsername() {
        return username;
    }

    /**
     * Set the value of username
     *
     * @param username new value of username
     */
    @Override
    public void setUsername(String username) {
        this.username = username;
    }
    
    private String nome;

    /**
     * Get the value of nome
     *
     * @return the value of nome
     */
    @Override
    public String getNome() {
        return nome;
    }

    /**
     * Set the value of nome
     *
     * @param nome new value of nome
     */
    @Override
    public void setNome(String nome) {
        this.nome = nome;
    }

    private String cognome;

    /**
     * Get the value of cognome
     *
     * @return the value of cognome
     */
    @Override
    public String getCognome() {
        return cognome;
    }

    /**
     * Set the value of cognome
     *
     * @param cognome new value of cognome
     */
    @Override
    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    
       private String email;

    /**
     * Get the value of email
     *
     * @return the value of email
     */
    @Override
    public String getEmail() {
        return email;
    }

    /**
     * Set the value of email
     *
     * @param email new value of email
     */
    @Override
    public void setEmail(String email) {
        this.email = email;
    }
    
    private String tipo;

    /**
     * Get the value of tipo
     *
     * @return the value of tipo
     */
    @Override
    public String getTipo() {
        return tipo;
    }

    /**
     * Set the value of tipo
     *
     * @param tipo new value of tipo
     */
    @Override
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    private String foto_profilo;

    /**
     * Get the value of foto_profilo
     *
     * @return the value of foto_profilo
     */
    @Override
    public String getFoto_profilo() {
        return foto_profilo;
    }

    /**
     * Set the value of foto_profilo
     *
     * @param foto_profilo new value of foto_profilo
     */
    @Override
    public void setFoto_profilo(String foto_profilo) {
        this.foto_profilo = foto_profilo;
    }
    
}
