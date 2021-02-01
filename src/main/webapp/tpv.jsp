<%-- 
    Document   : tpv
    Created on : Jan 29, 2021, 9:20:29 PM
    Author     : salaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Producto"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hamburgueseria Bosco</title>
    </head>
    <body>
        <h1>Hamburgueseria Bosco</h1>
        <%ArrayList<Producto> hamburguesas = (ArrayList<Producto>) request.getAttribute("hamburguesas");
            ArrayList<Producto> complementos = (ArrayList<Producto>) request.getAttribute("complementos");
            ArrayList<Producto> bebidas = (ArrayList<Producto>) request.getAttribute("bebidas");
        %>
        <form action="tpvServlet">
            <table style="border: 1px solid black;">
                <% for (Producto hamb : hamburguesas) {
                    %>
                
                    <tr>
                        <td><img src="<%=hamb.getImagen()%>"></td>
                        <td><%=hamb.getNombre()%></td>
                        <td><%=hamb.getPrecio()%></td>
                        <td><input type="number" name="<%=hamb.getId()%>"></td>
                    </tr>
                    
                <%
                        }
                %>
            </table>
            
            
            
            <table style="border: 1px solid black;">
                <% for (Producto comp : complementos) {
                    %>
                
                    <tr>
                        <td><img src="<%=comp.getImagen()%>"></td>
                        <td><%=comp.getNombre()%></td>
                        <td><%=comp.getPrecio()%></td>
                        <td><input type="number" name="<%=comp.getId()%>"></td>
                    </tr>
                    
                <%
                        }
                %>
            </table>
            
            
            <table style="border: 1px solid black;">
                <% for (Producto beb : bebidas) {
                    %>
                
                    <tr>
                        <td><img src="<%=beb.getImagen()%>"></td>
                        <td><%=beb.getNombre()%></td>
                        <td><%=beb.getPrecio()%></td>
                        <td><input type="number" name="<%=beb.getId()%>"></td>
                    </tr>
                    
                <%
                        }
                %>
            </table>

        </form>
    </body>
</html>
