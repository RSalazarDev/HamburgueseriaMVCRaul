<%-- 
    Document   : tpv
    Created on : Jan 29, 2021, 9:20:29 PM
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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h1>Hamburguesería Bosco</h1>
            <%
                ArrayList<Producto> hamburguesas = (ArrayList) request.getAttribute("hamburguesas");
                ArrayList<Producto> complementos = (ArrayList) request.getAttribute("complementos");
                ArrayList<Producto> bebidas = (ArrayList) request.getAttribute("bebidas");
            %>

            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#hamburguesas">Hamburguesas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#complementos">Complementos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#bebidas">Bebidas</a>
                </li>
            </ul>
            
            <form action="tpvServlet" method="post">
                <div class="tab-content">
                    <div class="tab-pane container active" id="hamburguesas">
                        <table style="margin: 10px 0;" class="table">
                            <% for (Producto haburguesa : hamburguesas) {%>
                            <tr>
                                <td>
                                    <img src="<%=haburguesa.getImagen()%>">
                                </td>
                                <td>
                                    <%=haburguesa.getNombre()%>
                                </td>
                                <td>
                                    <%=haburguesa.getPrecio()%>
                                </td>
                                <td>
                                    <input type="number" value="0" name="<%=haburguesa.getId()%>">
                                </td>
                            </tr>
                            <%}%>
                        </table>
                    </div>
                    <div class="tab-pane container fade" id="complementos">
                        <table style="margin: 10px 0;" class="table">
                            <% for (Producto complemento : complementos) {%>
                            <tr>
                                <td>
                                    <img src="<%=complemento.getImagen()%>">
                                </td>
                                <td>
                                    <%=complemento.getNombre()%>
                                </td>
                                <td>
                                    <%=complemento.getPrecio()%>
                                </td>
                                <td>
                                    <input type="number" value="0" name="<%=complemento.getId()%>">
                                </td>
                            </tr>
                            <%}%>
                        </table>
                    </div>
                    <div class="tab-pane container fade" id="bebidas">
                        <table style="margin: 10px 0;" class="table">
                            <% for (Producto bebida : bebidas) {%>
                            <tr>
                                <td>
                                    <img src="<%=bebida.getImagen()%>">
                                </td>
                                <td>
                                    <%=bebida.getNombre()%>
                                </td>
                                <td>
                                    <%=bebida.getPrecio()%>
                                </td>
                                <td>
                                    <input type="number" value="0" name="<%=bebida.getId()%>">
                                </td>
                            </tr>
                            <%}%>
                        </table>
                    </div>
                </div>
                <input type="submit" class="btn btn-outline-primary" value="Realizar pedido">
            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
