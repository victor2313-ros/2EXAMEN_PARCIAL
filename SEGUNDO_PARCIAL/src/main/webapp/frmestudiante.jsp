<%@page import="com.emergentes.modelo.estudiante"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%
        estudiante est = (estudiante) request.getAttribute("estudiante");
    %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <h1>Registro</h1>
    <form action="estudianteController" method="post">
        <input type="hidden" name="id" value="<%= est != null ? est.getId() : "" %>">
        <table>
            <tr>
                <td>Nombre:</td>
                <td><input type="text" name="nombre" value="<%= est != null ? est.getNombre() : "" %>"/></td>
            </tr>
            <tr>
                <td>Apellido:</td>
                <td><input type="text" name="apellidos" value="<%= est != null ? est.getApellidos() : "" %>"/></td>
            </tr>
            <tr>
                <td>Seminario:</td>
                <td><input type="text" name="seminario" value="<%= est != null ? est.getSeminario() : "" %>"/></td>
            </tr>
            <tr>
                <td>Confirmado:</td>
                <td>
                    <input type="checkbox" name="confirmado" value="si" ${est.confirmado == 'si' ? 'checked' : ''}/> Si<br>
                        <input type="checkbox" name="confirmado" value="no" ${est.confirmado == 'no' ? 'checked' : ''}/> No
                </td>
            </tr>
            <tr>
                <td>Fecha:</td>
                <td><input type="date" name="fecha_d_ins" value="<%= est != null ? est.getFecha_d_ins(): "" %>"/></td>
            </tr>
            <tr>
                <td><input type="submit" value="Enviar"/></td>
            </tr>
        </table>
    </form>
</body>
</html>
