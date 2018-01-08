<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />        
          
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" /> 
    </head>
    <body>
        
        <div class="container">
            <div class="row">
                <h1>Ingresa tus datos</h1>
                
                
                <form:form method="POST" commandName="usuarios">
                    <form:errors path="*" element="div" cssClass="alert alert-danger" />
                
                    <p>
                        <form:label path="nombre">Nombre </form:label>
                        <form:input path="nombre" cssClass="form-control" />
                        
                    </p>                    
                    <p>
                        <form:label path="correo">E-mail</form:label>
                        <form:input path="correo" cssClass="form-control" />
                    </p>                    
                    <p>
                         <form:label path="telefono">Telefono</form:label>
                        <form:input path="telefono" cssClass="form-control" />
                    </p>      
                    <hr />
                    <input type="submit" value="Enviar" class="form-control" />
                </form:form>
            </div>
        </div>
            
        
        
    </body>
</html>
