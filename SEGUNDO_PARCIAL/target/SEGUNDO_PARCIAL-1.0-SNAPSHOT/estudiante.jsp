<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.estudiante"%>
<%@page import="java.util.List"%>
<%
       List<estudiante> estudiante = (List<estudiante>)request.getAttribute("estudiante");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Estudiantes</title>
</head>
<style>
            .panel {
            text-align: center; 
            border: 3px solid black; 
            padding: 1px; 
        }
       table {
            margin: 0 auto; 
            text-align: center; 
            border-collapse: collapse; 
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
        }
        h1{
            text-align: center; 
        }
        
</style>
<body>
    <div class="panel">
        <p>SEGUNDO PARCIAL TEMP-742 </p>
        <p>Nombre: Victor Hugo Rosa Mamani </p>                  
        <p>Carnet: 13873717</p>
        </div>
    <h1>Registro Dia del Internet</h1>
    <a  class="ha" href="estudianteController?action=add" >Nuevo</a>
    <table border="1" cellspacing="0">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>Seminario</th>
            <th>Confirmado</th>
            <th>Fecha de Inscripción</th>
            <th>Acciones</th>
        </tr>
        <c:forEach  var="est" items="${estudiante}">
            <tr>
                <td>${est.id}</td>
                <td>${est.nombre}</td>
                <td>${est.apellidos}</td>
                <td>${est.seminario}</td>
                <td><c:choose>
                <c:when test="${est.confirmado eq 'si'}">
                    <input type="checkbox" checked="checked" disabled="disabled">
                </c:when>
                <c:otherwise>
                    <input type="checkbox" disabled="disabled">
                </c:otherwise>
            </c:choose></td>
                <td>${est.fecha_d_ins}</td>
                <td>
                    <a href="estudianteController?action=edit&id=${est.id}">Editar</a> |
                    <a href="estudianteController?action=delete&id=${est.id}">Eliminar</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
</body>
</html>
