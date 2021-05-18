<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="trataerro.jsp" %>
<%@page import="Bean.Dados" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="notas" class="Bean.Notas" scope="session"></jsp:useBean>
        <%
            String notatxt = request.getParameter("nota");
            int nota = Integer.parseInt(notatxt);
            
             
 
            notas.lista_notas.add(nota);
        %>
        Nota:<%= nota %> adicionada com sucesso<br/>
        <a href="index.html">menu</a><br/>
    </body>
</html>
