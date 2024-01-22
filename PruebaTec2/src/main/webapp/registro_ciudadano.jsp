<%@page import="com.mycompany.pruebatec2.logica.Ciudadano"%>
<%@page import="com.mycompany.pruebatec2.logica.Tramite"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.pruebatec2.logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="includes/header.jspf" %>
        <title>Registro Ciudadanos</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="includes/navigator.jspf" %>
        <%@include file="includes/title.jspf" %>
        <div class="container-fluid text-center border border-dark border-4 formularios d-flex align-items-center justify-content-center">
            <div class="row align-items-center">
                <div class="col mx-auto">
                    <form action="SvCiudadano" method="POST" class="text-center">
                        <div class="form-group">
                            <br><h5><b>Registro Nuevo Ciudadano</b></h5><br>
                            <div class="form-row">
                                <div class="col-md-12 mb-3">
                                    <label class="form-label align-label" for="nombre">Nombre</label>
                                    <input type="text" name="nombre" class="form-control" required pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]+">
                                </div>
                                <div class="col-md-12 mb-3">
                                    <label class="form-label align-label" for="apellido">Apellido</label>
                                    <input type="text" name="apellido" class="form-control" required pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]+">
                                </div>
                                <div class="col-md-12 mb-3">
                                    <label class="form-label align-label" for="dni">DNI (8 Digitos y letra)</label>
                                    <input type="text" name="dni" class="form-control" required pattern="[0-9]{8}[A-Za-z]">
                                </div>
                            </div><br><br>
                            <button class="btn btn-danger" type="submit">Crear Ciudadano</button>
                        </div><br><br><br>
                    </form>
                </div>
                <div class="col mx-auto" style="padding-left: 150px;">
                    <form action="SvCiudadanoMod" method="POST" class="text-center">
                        <div class="form-group">
                            <br><h5><b>Modificar Ciudadano</b></h5><br>
                            <div class="form-row">
                                <div class="col-md-12 mb-3">
                                    <label class="form-label align-label" for="id">Ciudadano a modificar</label>
                                    <select  name="id" style="width: 250px" required>
                                        <%
                                            Controladora control = new Controladora();
                                            List<Ciudadano> ciudadanos = control.traerCiudadanos();

                                            for (Ciudadano ciudadano : ciudadanos) {
                                        %>
                                        <option value="<%=ciudadano.getId()%>"><%=ciudadano.getDni()%></option>
                                        <% } %>
                                    </select><br>
                                </div>
                                <div class="col-md-12 mb-3">
                                    <label class="form-label align-label" for="nombre">Nuevo Nombre</label>
                                    <input type="text" name="nombre" class="form-control" required pattern="[A-Za-zñÑáéíóúÁÉÍÓÚ\s]+">
                                </div>
                                <div class="col-md-12 mb-3">
                                    <label class="form-label align-label" for="apellido">Nuevo Apellido</label>
                                    <input type="text" name="apellido" class="form-control" required pattern="[A-Za-zñÑáéíóúÁÉÍÓÚ\s]+">
                                </div>
                                <div class="col-md-12 mb-3">
                                    <label class="form-label align-label" for="dni">Nuevo DNI (8 Digitos y letra)</label>
                                    <input type="text" name="dni" class="form-control" required pattern="[0-9]{8}[A-Za-z]">
                                </div>
                            </div><br>
                            <button class="btn btn-danger" type="submit">Modificar Ciudadano</button>
                        </div><br>
                    </form>
                </div>
                <div class="col mx-auto" style="padding-left: 150px;">
                    <form action="SvCiudadanoBorrar" method="POST" class="text-center">
                        <div class="form-group">
                            <br><h5><b>Eliminar Ciudadano</b></h5><br>
                            <div class="form-row">
                                <div class="col-md-12 mb-3">
                                    <label class="form-label align-label" for="id">Ciudadano a eliminar</label>
                                    <select name="id" style="width: 250px" required>
                                        <%
                                            List<Ciudadano> ciudadanos2 = control.traerCiudadanos();
                                            for (Ciudadano ciudadano : ciudadanos2) {
                                        %>
                                        <option value="<%=ciudadano.getId()%>">
                                            <%=ciudadano.getDni()%>
                                        </option>
                                        <% } %>
                                    </select><br>
                                </div>
                            </div><br>
                            <button class="btn btn-danger" type="submit">Borrar Ciudadano</button>
                        </div><br>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>