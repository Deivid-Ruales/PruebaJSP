<%-- 
    Document   : index
    Created on : 09-jul-2024, 23:32:01
    Author     : david
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar código Java en JSP</title>
    </head>
    <body>
        <h1>Formas de insertar código Java en JSP</h1>
        <br></br>
        <h2>Expresiones</h2>
        <%= new String("Deivid").toUpperCase() %>
        <p>La suma de los números 6 y 22 es: <%= 6 + 22 %></p>
        <p>Si 5 es mayor que 32: <%= 5 > 32 %></p>
        <br></br>
        <h2>Scriptlets</h2>
        <%
            for(int i = 1; i < 10; i++){
            out.print("Numero: " + i + " | ");
        }
            %>
        <br></br>
        <h2>Declaraciones</h2>
        <%!
            private int total;
            
            public int metodoSuma(int a, int b){
                return a + b;
            }
                %>
        <p>El resultado de la suma entre 23 y 44 es: </p><%= metodoSuma(23,44)%>
    </body>
</html>
