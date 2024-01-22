
<%@page import="com.mycompany.pruebatec2.logica.Ciudadano"%>
<%@page import="com.mycompany.pruebatec2.logica.Tramite"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.pruebatec2.logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="includes/header.jspf" %>


        <title>Turnos</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>


    </head>
    <body style="background-color: #303030;">

        <%@include file="includes/navigator.jspf" %>

        <%@include file="includes/title.jspf" %>

        <div class="container">
            <div class="row justify-content-center" style="padding: 20px;">
                <div class="mx-auto formularios border border-black border-5" style="width: 75%;">
                    <div class="container-fluid text-center">
                        <div class="row align-items-center" style="height: 250px;">

                            <div class="col">
                                <a class="nav-link" href="registro_ciudadano.jsp"><h2 class="border border-white border-5">Registro Ciudadano</h2></a>Se solicitará el nombre, apellido y dni del ciudadano para su registro.
                            </div>                

                            <div class="col">
                                <a class="nav-link " href="registro_tramite.jsp"><h2 class="border border-white border-5">Registro Trámite</h2></a>Se solicitará el tipo de trámite y el número en el que se iniciará el turno.
                            </div>

                        </div>
                    </div>

                    <div class="container-fluid text-center formularios">
                        <div class="row align-items-center" style="height: 250px;">

                            <div class="col">
                                <a class="nav-link" href="solicitud_tramite.jsp"><h2 class="border border-white border-5">Solicitud Trámite</h2></a>Se solicitará el trámite, dni del solicitante, fecha y se deberá fijar un estado.
                            </div>              

                            <div class="col">
                                <a class="nav-link" href="mostrar_tramites.jsp"><h2 class="border border-white border-5">Mostrar Trámites</h2></a>Podrá visualizarse todos los trámites y filtrarse por "En espera" o "Ya atendido"
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
