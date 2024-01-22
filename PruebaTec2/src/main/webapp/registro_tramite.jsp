<%@page import="com.mycompany.pruebatec2.logica.Ciudadano"%>
<%@page import="com.mycompany.pruebatec2.logica.Tramite"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.pruebatec2.logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="includes/header.jspf" %>
        <title>Registro Trámites</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="includes/navigator.jspf" %>
        <%@include file="includes/title.jspf" %>
        <div class="container-fluid text-center border border-dark border-4 formularios d-flex align-items-center justify-content-center">
            <div class="row align-items-center">
                <div class="col mx-auto">
                    <form action="SvTramite" method="POST" class="text-center">
                        <div class="form-group"><br><br>
                            <br><h5><b>Registro Nuevo Trámite</b></h5><br><br>
                            <div class="form-row">
                                <div class="col-md-12 mb-3">
                                    <label class="form-label align-label" for="tramite">Tipo de Trámite</label>
                                    <input type="text" name="tramite" class="form-control" required pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ\\s]+"><br><br>
                                </div>
                                <div class="col-md-12 mb-3">
                                    <label class="form-label align-label" for="numero">Número inicio turno</label>
                                    <input type="text" name="numero" class="form-control" required pattern="[0-9]"><br><br><br>
                                </div>
                            </div>
                            <button class="btn btn-danger" type="submit">Crear Trámite</button><br><br><br>         <br>           
                        </div>                
                    </form>
                </div> 
            </div>
        </div>
    </body>
</html>