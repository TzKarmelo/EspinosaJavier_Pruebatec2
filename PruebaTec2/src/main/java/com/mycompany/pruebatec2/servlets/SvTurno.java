package com.mycompany.pruebatec2.servlets;

import com.mycompany.pruebatec2.logica.Ciudadano;
import com.mycompany.pruebatec2.logica.Controladora;
import com.mycompany.pruebatec2.logica.Turno;
import static com.mycompany.pruebatec2.logica.Turno_.estado;
import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SvTurno", urlPatterns = {"/SvTurno"})
public class SvTurno extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String estadoFiltro = request.getParameter("estadoFiltro");

        if (!estadoFiltro.equals("todos")) {
            Boolean estado = false;
            if (estadoFiltro != null && !estadoFiltro.isEmpty()) {
                estado = Boolean.parseBoolean(estadoFiltro);
            }

            List<Turno> turnos = control.traerTurnosPorEstado(estado);

            request.setAttribute("turnosFiltrados", turnos);

            request.getRequestDispatcher("mostrar_tramites.jsp").forward(request, response);

        } else {
            List<Turno> turnos = control.traerTurnos();
            
            request.setAttribute("turnosFiltrados", turnos);
            request.getRequestDispatcher("mostrar_tramites.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String tramite = request.getParameter("tramite");
        LocalDate fecha = LocalDate.parse(request.getParameter("fecha"));
        String dniBuscado = request.getParameter("dni");

        String estadoTramite = request.getParameter("estado");
        boolean estado = estadoTramite.equalsIgnoreCase("En espera");

        List<Ciudadano> ciudadanos = control.traerCiudadanos();
        Ciudadano ciudadanoEncontrado = null;

        for (Ciudadano ciudadano : ciudadanos) {
            if (ciudadano.getDni().equals(dniBuscado)) {
                ciudadanoEncontrado = ciudadano;
                break;
            }
        }

        if (ciudadanoEncontrado != null) {
            int ultimoTurno = control.obtenerUltimoTurno();
            int nuevoTurno = ultimoTurno + 1;

            control.crearTurno(fecha, nuevoTurno, tramite, estado, ciudadanoEncontrado);
            response.sendRedirect("solicitud_tramite.jsp");
        } else {
            System.out.println("Error: Ciudadano no encontrado para el DNI " + dniBuscado);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
