/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken.Payload;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.Json;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import ejb.GestoreUtenti;
import ejb.UtenteGoogle;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Andrea22
 */
@WebServlet(name = "GoogleServlet", urlPatterns = {"/GoogleServlet"})
public class GoogleServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @EJB
    private GestoreUtenti gestoreUtenti;

    // private Sessione sessione = new Sessione();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, GeneralSecurityException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String action = request.getParameter("action");
            if (action.equals("loginGoogle")) {
                //HttpTransport transport = new HttpTransport();
                JsonFactory jsonFactory = new JacksonFactory();
                NetHttpTransport transport = new NetHttpTransport();

                GoogleIdTokenVerifier verifier = new GoogleIdTokenVerifier.Builder(transport, jsonFactory)
                        .setAudience(Arrays.asList("914513079502-evc4u51vs3mijtfebssfqr0mjpk7cs2l.apps.googleusercontent.com"))
                        .build();

            // (Receive idTokenString by HTTPS POST)
                String idTokenString = request.getParameter("token");
                System.out.println("idTokenString:" + idTokenString);
              //  System.out.println("verifier is:" + verifier.toString());
                GoogleIdToken idToken = verifier.verify(idTokenString);

                if (idToken != null) {
                    Payload payload = idToken.getPayload();
                    String id = request.getParameter("id");
                    if (id.equals(payload.getUserId())) {
                        System.out.println("id utente e id del token uguali");
                        String email = request.getParameter("email");
                        String idgoogle = request.getParameter("idgoogle");
                        UtenteGoogle u = gestoreUtenti.loginGoogle(email, idgoogle);
                        if (u!=null){
                            System.out.println("son loggato!");
                        } else {
                            System.out.println("non sono loggato!");
                            out.println("0");
                        }
                    } else {
                        System.out.println("id utente e id del token non uguali");
                        out.println("-1");
                    }
              //if (payload.getHostedDomain().equals("localhost:8080/")
                    // If multiple clients access the backend server:
                 /*&& Arrays.asList(ANDROID_CLIENT_ID, IOS_CLIENT_ID).contains(payload.getAuthorizedParty())*//*) {*/

                    /*System.out.println(payload.getUnknownKeys());
                     Map<String, Object> map = payload.getUnknownKeys();
                     for (Map.Entry<String, Object> entry : map.entrySet()) {
                     System.out.println(entry.getKey()+":"+entry.getValue());
                     }*/

                //System.out.println("User email: " + idToken.toString());
                    /*} else {
                     System.out.println("Invalid ID token.");
                     }*/
                } else {
                    System.out.println("Invalid ID token.");
                    out.println("-1");
                }

                /*  
                
                
                
                
                 //String username = request.getParameter("username");
                 String id = request.getParameter("id");
                 String email = request.getParameter("email");
                 String nome = request.getParameter("nome");
                 String cognome = request.getParameter("cognome");
                 String sesso = request.getParameter("sesso");

                 String foto_profilo = request.getParameter("foto_profilo");
                 String token = request.getParameter("token");

                 System.out.println("id:"+id);
                 System.out.println("sesso:"+sesso);
                 System.out.println("nome:"+nome);
                 System.out.println("cognome:"+cognome);

                
                
                 Utente u = gestoreUtenti.loginUtente(email,token);
                
                 if (u != null){
                 //List<Utente> lista = gestoreUtenti.getUsers();
                 //Utente[] arLibro = lista.toArray(new Utente[lista.size()]);
                 //String gsonList = buildGson(lista);
                 HttpSession session = request.getSession();
                 session.setAttribute("id", u.getId());
                 session.setAttribute("nome", u.getNome());
                 session.setAttribute("cognome", u.getCognome());
                 session.setAttribute("username", u.getUsername());
                 session.setAttribute("tipo", u.getTipo());
                 session.setAttribute("email", u.getEmail());
                 session.setAttribute("foto_profilo", u.getFoto_profilo());
                 //sessione.setId(u.getId());
                 /*sessione.setNome(u.getNome());
                 sessione.setCognome(u.getCognome());
                 sessione.setUsername(u.getUsername());
                 sessione.setTipo(u.getTipo());
                 sessione.setEmail(u.getEmail());
                 sessione.setFoto_profilo(u.getFoto_profilo());*/
                   // System.out.println("attributi:"+s.getAttribute("idSessione"));
                   /* System.out.println("sto per andare in home.jsp!");
                 RequestDispatcher rd = getServletContext().getRequestDispatcher("/home.jsp");
                 rd.forward(request,response);
                    
                 } else  {
                 //bisogna registrare l'utente!
                    

                 String giorno = "01";
                 String mese = "01";
                 String anno = "1980";
                
                 int res = gestoreUtenti.aggiungiUser(nome, cognome, token, token, email, email, giorno, mese, anno, sesso);
                
                 if (res == 0){
                 List<Utente> lista = gestoreUtenti.getUsers();
                 String gsonList = buildGson(lista);

                 out.println("<!DOCTYPE html>");
                 out.println("<html>");
                 out.println("<head>");
                 out.println("<title>Servlet RegistrationServlet</title>");            
                 out.println("</head>");
                 out.println("<body>");
                 out.println("<h1>Servlet RegistrationServlet at " + request.getContextPath() + "</h1>");
                 out.println("<h1>"+gsonList+"</h1>");
                 out.println("</body>");
                 out.println("</html>");
                 } else  {
                 out.println("<!DOCTYPE html>");
                 out.println("<html>");
                 out.println("<head>");
                 out.println("<title>Servlet RegistrationServlet</title>");            
                 out.println("</head>");
                 out.println("<body>");
                 out.println("<h1>Errore!</h1>");
                 out.println("</body>");
                 out.println("</html>");
                 }
                
                
                 }*/
            } else {
                System.out.println("Action OTHER");
            }

        }
    }

    private String buildGson(List<UtenteGoogle> u) {

        Gson gson = new Gson();
        String json = gson.toJson(u);

        if (json == null) {
            System.out.println("servlet buildGson: NULL");
        } else {
            System.out.println("servlet buildGson: NOT NULL  " + json);
        }
        return json;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (GeneralSecurityException ex) {
            Logger.getLogger(GoogleServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (GeneralSecurityException ex) {
            Logger.getLogger(GoogleServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
