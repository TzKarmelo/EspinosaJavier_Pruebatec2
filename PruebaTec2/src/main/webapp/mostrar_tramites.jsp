<%@ page import="com.mycompany.pruebatec2.logica.Turno" %>
<%@ page import="java.util.List" %>
<%@ page import="com.mycompany.pruebatec2.logica.Controladora" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="includes/header.jspf" %>
    <title>Mostrar Trámites</title>
    <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <%@ include file="includes/navigator.jspf" %>
    <%@ include file="includes/title.jspf" %>
    <div class="container-fluid text-center border border-dark border-4 formularios">
        <div class="row align-items-center">
            <div class="col">
                <form action="SvTurno" method="GET" class="text-center">
                    <div class="form-group">
                        <label for="estadoFiltro">Filtrar por Estado:</label>
                        <select name="estadoFiltro" id="estadoFiltro">
                            <option value="todos">Todos</option>
                            <option value="true">En espera</option>
                            <option value="false">Ya atendido</option>
                        </select>
                        <button class="btn btn-danger" type="submit">Filtrar</button><br>
                    </div>
                </form>
                <%
                    List<Turno> turnosFiltrados = (List<Turno>) request.getAttribute("turnosFiltrados");

                    if (turnosFiltrados != null && !turnosFiltrados.isEmpty()) {
                %>
                <table class="table" style="margin-top: 30px;">
                        <tr class="table-primary">
                            <th>Ciudadano</th>
                            <th>Fecha</th>
                            <th>Número de Turno</th>
                            <th>Trámite</th>
                            <th>Estado</th>
                        </tr>
                        <% for (Turno turno : turnosFiltrados) { %>
                            <tr>
                                <td class="table-light"><%= turno.getCiudadano().getNombre() %> <%= turno.getCiudadano().getApellido() %>
                                <td class="table-warning"><%= turno.getFecha() %></td>
                                <td class="table-danger"><%= turno.getNumTurno() %></td>
                                <td class="table-info"><%= turno.getTramite() %></td>
                                <td class="table-secondary"><%= turno.getEstado() ? "En espera" : "Ya atendido" %></td>
                            </tr>
                        <% } %>
                    </table>
                <% }  %>
            </div>
        </div>
    </div>
</body>
</html>

