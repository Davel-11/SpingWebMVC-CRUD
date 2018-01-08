<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" /> 
        <title>ejemplo JDBC template</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <p>
                    <h1>Ejmplo JDBC</h1>
                    <a href="<c:url value="add.htm"/>" class="btn btn-success">Agregar</a>
                </p>
                
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Mail</th>
                            <th>Telefono</th>
                            <th>Acciones</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                            <c:forEach items="${datos}" var="dato">
                                <tr>
                                    <td><c:out value="${dato.id}"/></td>
                                    <td><c:out value="${dato.nombre}"/></td>
                                    <td><c:out value="${dato.correo}"/></td>
                                    <td><c:out value="${dato.telefono}"/></td>
                                    <td>
                                        <a href="<c:url value="edit.htm?id=${dato.id}"/>" class="btn btn-success">Editar</a>
                                        <a href="<c:url value="delete.htm?id=${dato.id}"/>" class="btn btn-success">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
            
    </body>
</html>
