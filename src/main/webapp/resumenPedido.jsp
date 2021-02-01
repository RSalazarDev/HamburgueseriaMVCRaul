<%-- 
    Document   : resumenPedido
    Created on : Jan 29, 2021, 9:37:51 PM
    Author     : salaz
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%ArrayList<Producto> carrito = (ArrayList<Producto>) request.getAttribute("carrito");
          Float total = (Float) request.getAttribute("total");
        %>
        
        <table style="border: 1px solid black;">
                <% for (Producto hamb : carrito) {
                    %>
                
                    <tr>
                        <td><img src="<%=hamb.getImagen()%>"></td>
                        <td><%=hamb.getNombre()%></td>
                        <td><%=hamb.getPrecio()%></td>
                        <td><%=hamb.getUnidadesPedidas()%></td>
                    </tr>
                    
                <%
                        }
                %>
            </table>
            
            <h2>Total: <%=total%></h2>
    </body>
</html>
