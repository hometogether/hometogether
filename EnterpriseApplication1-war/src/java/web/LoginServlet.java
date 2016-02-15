/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

import com.google.gson.Gson;
import ejb.GestoreUtenti;
import ejb.Interesse;
import ejb.Profilo;
import ejb.ProfiloFacade;
import ejb.UtenteApp;
import ejb.UtenteGoogle;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Andrea22
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

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
    @EJB
    private ProfiloFacade profiloFacade;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String action = request.getParameter("action");
            System.out.println("action is:" + action);
            if (action.equals("login")) {
                //String username = request.getParameter("username");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                System.out.println("prima della query loginutente");
                UtenteApp u = gestoreUtenti.loginUtente(email, password);
                if (u != null) {
                    HttpSession session = request.getSession();
                    session.setAttribute("id", u.getIdProfilo());
                    session.setAttribute("email", u.getEmail());
                    
                    Profilo p = profiloFacade.getProfilo(email);
                    session.setAttribute("nome",""+p.getNome());
                    session.setAttribute("cognome",""+p.getCognome());
                    session.setAttribute("email",""+p.getEmail());
                    session.setAttribute("data",""+p.getData_nascita());
                    session.setAttribute("sesso",""+p.getSesso());
                  //  s.setAttribute("location",""+location);
                    session.setAttribute("foto",""+p.getFoto_profilo()); 
                    
                     

                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/home.jsp");
                    rd.forward(request, response);

                } else {
                    //GESTIRE ERRORE
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

            } else {
                
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
        processRequest(request, response);
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
        processRequest(request, response);
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
