package com.mycompany.pruebatec2.servlets;

import com.mycompany.pruebatec2.logica.Controladora;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SvCiudadano", urlPatterns = {"/SvCiudadano"})
public class SvCiudadano extends HttpServlet {
    
    private Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombreCiudadano = request.getParameter("nombre");
        String apellidoCiudadano = request.getParameter("apellido");
        String dniCiudadano = request.getParameter("dni");        
               
        control.crearCiudadano(nombreCiudadano, apellidoCiudadano, dniCiudadano);
        
        response.sendRedirect("registro_ciudadano.jsp");
        
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}