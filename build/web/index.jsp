
<%-- 
    Document   : index
    Created on : 20/06/2020, 03:25:48 AM
    Author     : luisa
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="ejemplodirectiva.ElevarX_a_Y" %>
<jsp:declaration> double z=0;</jsp:declaration>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 2</title>
    </head>
    
    <center>
        
        <body>
            
            <h1>Manejo de expresiones en JSP!</h1>
            
            <h2>
            <%-- Expresiones con '<%= expresion %>' --%>
            <li>La Fecha y Hora Actual Es: <%=new java.util.Date() %></li>
            <li>16 Elevado Al Cuadrado Es: <%=Math.pow(16, 2) %></li>
            <li>La Raiz Cuadrada De 16 Es: <%= Math.sqrt(16) %></li>
            
            <%-- Ejemplo De Algo Dinamico --%>
            <br>
            <li><% if(Calendar.getInstance().get(Calendar.AM_PM) == Calendar.AM) {%>
                BUENOS DIAS!
            <%} else{%>
                BUENAS TARDES!
            <% } %>
            </li>
            
            <%-- Ejemplo De Codigo Java --%>
            <li>
                <%
                    ElevarX_a_Y x_y = new ElevarX_a_Y(2.0, 8.0);
                    
                    out.println(x_y.elevarX_a_la_Y());
                %>
            </li>
            </h2>
            
        </body>
        
    </center>
    
</html>
