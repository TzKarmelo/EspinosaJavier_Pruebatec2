package com.mycompany.pruebatec2.servlets;

import com.mycompany.pruebatec2.logica.Ciudadano;
import com.mycompany.pruebatec2.logica.Controladora;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SvCiudadanoMod", urlPatterns = {"/SvCiudadanoMod"})
public class SvCiudadanoMod extends HttpServlet {
    
    Controladora control = new Controladora();

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
        
        int idCiudadano = Integer.parseInt(request.getParameter("id"));
        
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String dni = request.getParameter("dni");
        
        Ciudadano ciud = control.buscarCiudadano(idCiudadano);
        
        ciud.setNombre(nombre);
        ciud.setApellido(apellido);
        ciud.setDni(dni);
        control.modificarCiudadano(nombre, apellido, dni, ciud);
        response.sendRedirect("registro_ciudadano.jsp");
        
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
