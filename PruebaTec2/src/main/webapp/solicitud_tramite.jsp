<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.pruebatec2.logica.Ciudadano"%>
<%@page import="com.mycompany.pruebatec2.logica.Tramite"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.pruebatec2.logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="includes/header.jspf" %>
        <title>Solicitud Trámites</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
<body>
    <%@include file="includes/navigator.jspf" %>
    <%@include file="includes/title.jspf" %>
    <div class="container-fluid text-center border border-dark border-4 formularios d-flex align-items-center justify-content-center">
        <div class="row align-items-center">            
            <div class="col mx-auto">
                <form action="SvTurno" method="POST" class="text-center">
                    <div class="form-group">
                        <br><h5><b>Solicitud Nuevo Trámite</b></h5><br>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label class="form-label align-label" for="tramite">Trámite</label><br>
                                <select  name="tramite" style="width: 250px" required>
                                    <%
                                        Controladora control = new Controladora();
                                        List<Tramite> tramites = control.traerTramites();

                                        for (Tramite tramite : tramites) {
                                    %>
                                    <option value="<%=tramite.getTramite()%>"><%=tramite.getTramite()%></option>
                                    <% } %>
                                </select><br>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label class="form-label align-label" for="dni">DNI del solicitante</label><br>
                                <select  name="dni" style="width: 250px" required>
                                    <%
                                        List<Ciudadano> ciudadanos = control.traerCiudadanos();

                                        for (Ciudadano ciudadano : ciudadanos) {
                                    %>
                                    <option value="<%=ciudadano.getDni()%>"><%=ciudadano.getDni()%></option>
                                    <% }%>
                                </select><br>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label class="form-label align-label" for="fecha">Fechas disponibles</label><br>
                                <input type="date" name="fecha" style="width: 250px" required><br>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label class="form-label align-label" for="estado">Estado del trámite</label><br>
                                <select  name="estado" style="width: 250px" required>
                                    <%
                                        List<String> estados = new ArrayList();
                                        estados.add("En espera");
                                        estados.add("Ya atendido");

                                        for (String estado : estados) {
                                    %>
                                    <option value="<%=estado%>"><%=estado%></option>
                                    <% }%>
                                </select><br>
                            </div>
                        </div>
                        <button class="btn btn-danger" type="submit">Solicitar Trámite</button>           
                    </div><br>                
                </form>
            </div>
        </div>
    </div>
</body>
</html>