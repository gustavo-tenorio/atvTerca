<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="trataerro.jsp"%>
<%@page import="Bean.Dados" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:useBean id="notas" class="Bean.Notas" scope="session"></jsp:useBean>
    <body> 
        <%  
            String DadosAluno[][] = {
                {"Nome: Arnaldo"},
                {"RA: 3020100653"},
            };
            
            for(int lin = 0; lin< DadosAluno.length; lin++){
                for(int col=0; col<DadosAluno[lin].length; col++){
                    out.print(DadosAluno[lin][col]);
                    out.print("<br/>");
                }
            }
            int i; // utilizado para percorrer a lista //
            int lista; // armazena o tamanho da lista //
            int nota; // armazena a nota atual //

            lista = notas.lista_notas.size();
            
            for( i= 0; i < lista ; i++){
                nota = notas.lista_notas.get(i);
                out.print("Nota " + i + ":" + nota);
                out.print("<br/>");
            }
        %>
        <a href="index.html">menu</a><br/>
    </body>
</html>
