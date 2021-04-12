<%-- 
    Document   : disciplinas
    Created on : 11 de abr. de 2021, 14:53:40
    Author     : Rafael
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <% if(request.getParameter("atribuir") != null) {
        session.setAttribute("session.name", request.getParameter("name"));
// aqui eu so coloquei a mesma sessao q esta no header, so para nao mostrar os valores a url
        response.sendRedirect(request.getRequestURI()); 
    }
%>
<% 
    String errorMessage = null;
    String disciplina = null;
 
    double[][] notasProva = new double[9][2]; 
//essa matriz onde vai ser armazenado as notas das disciplinas; com nove linhas e duas colunas
     
    try {   
        if(request.getParameter("session.n1POO") == ""){
//pegando o valor do campo da P1 da disciplina "POO" e comparando para ver se a disciplina esta vazia
            notasProva[0][0] = 0;
        }else{
            notasProva[0][0] = Double.parseDouble(request.getParameter("session.n1POO"));
        }
        if (request.getParameter("session.n2POO") == "") {
             notasProva[0][1] = 0;
        }else{
            notasProva[0][1] = Double.parseDouble(request.getParameter("session.n2POO"));
//pegando o valor do campo da P1 da disciplina "POO" e comparando para ver se a disciplina esta vazia
        }
        session.setAttribute("session.n1POO", request.getParameter("session.n1POO"));
        session.setAttribute("session.n2POO", request.getParameter("session.n2POO"));
        
    } catch (Exception ex){
        
    } try {
        if (request.getParameter("session.n1BDD") == ""){
            notasProva[1][0] = 0;
        }else{
            notasProva[1][0] = Double.parseDouble(request.getParameter("session.n1BDD"));
        }
        if (request.getParameter("session.n2BDD") == ""){
            notasProva[1][1] = 0;
        }else{
            notasProva[1][1]= Double.parseDouble(request.getParameter("session.n2BDD"));
        }
        session.setAttribute("session.n1BDD", request.getParameter("session.n1BDD"));
        session.setAttribute("session.n2BDD", request.getParameter("session.n2BDD"));
        
    } catch (Exception ex){
        
        } try {
    
        if (request.getParameter("session.n1INGIV") == ""){
           notasProva[2][0] = 0;
        }else{
           notasProva[2][0] = Double.parseDouble(request.getParameter("session.n1INGIV"));
        }
        if (request.getParameter("session.n2INGIV") == ""){
            notasProva[2][1] = 0;
        }else{
            notasProva[2][1] = Double.parseDouble(request.getParameter("session.n2INGIV"));
        }
        session.setAttribute("session.n1INGIV", request.getParameter("session.n1INGIV"));
        session.setAttribute("session.n2INGIV", request.getParameter("session.n2INGIV"));
        
    } catch (Exception ex){
        
        } try {
    
        if (request.getParameter("session.n1EDD") == ""){
            notasProva[3][0] = 0;
        }else{
            notasProva[3][0] = Double.parseDouble(request.getParameter("session.n1EDD"));
        }
        if (request.getParameter("session.n2EDD") == ""){
            notasProva[3][1] = 0;
        }else{
            notasProva[3][1] = Double.parseDouble(request.getParameter("session.n2EDD"));
        }
        session.setAttribute("session.n1EDD", request.getParameter("session.n1EDD"));
        session.setAttribute("session.n2EDD", request.getParameter("session.n2EDD"));
        
    } catch (Exception ex){
        
        } try {
    
        if (request.getParameter("session.n1SOII") == ""){
            notasProva[4][0] = 0;
        }else{
            notasProva[4][0] = Double.parseDouble(request.getParameter("session.n1SOII"));
        }
        if (request.getParameter("session.n2SOII") == ""){
            notasProva[4][1] = 0;
        }else{
            notasProva[4][1] = Double.parseDouble(request.getParameter("session.n2SOII"));
        }
        session.setAttribute("session.n1SOII", request.getParameter("session.n1SOII"));
        session.setAttribute("session.n2SOII", request.getParameter("session.n2SOII"));
        
    } catch (Exception ex){
        
        } try {
    
        if (request.getParameter("session.n1MET") == ""){
            notasProva[5][0] = 0;
        }else{
            notasProva[5][0] = Double.parseDouble(request.getParameter("session.n1MET"));
        }
        if (request.getParameter("session.n2MET") == ""){
            notasProva[5][1] = 0;
        }else{
            notasProva[5][1] = Double.parseDouble(request.getParameter("session.n2MET"));
        }
        session.setAttribute("session.n1MET", request.getParameter("session.n1MET"));
        session.setAttribute("session.n2MET", request.getParameter("session.n2MET"));
        
    } catch (Exception ex){
        
        } try {
    
        if (request.getParameter("session.n1ESIII") == ""){
            notasProva[6][0] = 0;
        }else{
            notasProva[6][0] = Double.parseDouble(request.getParameter("session.n1ESIII"));
        }
        if (request.getParameter("session.n2ESIII") == ""){
            notasProva[6][1] = 0;
        }else{
            notasProva[6][1] = Double.parseDouble(request.getParameter("session.n2ESIII"));
        }
        session.setAttribute("session.n1ESIII", request.getParameter("session.n1ESIII"));
        session.setAttribute("session.n2ESIII", request.getParameter("session.n2ESIII"));
        
    } catch (Exception ex){
        
        } try {
        if(request.getParameter("session.n1LPIV") == ""){
            notasProva[7][0] = 0;
        }else{
            notasProva[7][0] = Double.parseDouble(request.getParameter("session.n1LPIV"));
        }
        if (request.getParameter("session.n2LPIV") == "") {
            notasProva[7][1] = 0;
        }else{
            notasProva[7][1] = Double.parseDouble(request.getParameter("session.n2LPIV"));
        }
        session.setAttribute("session.n1LPIV", request.getParameter("session.n1LPIV"));
        session.setAttribute("session.n2LPIV", request.getParameter("session.n2LPIV"));
            
        } catch (Exception ex){
        
        } try {
        if(request.getParameter("session.n1ALP") == ""){
            notasProva[8][0] = 0;
        }else{
            notasProva[8][0] = Double.parseDouble(request.getParameter("session.n1LPIV"));
        }
        if (request.getParameter("session.n2ALP") == "") {
            notasProva[8][1] = 0;
        }else{
            notasProva[8][1] = Double.parseDouble(request.getParameter("session.n2LPIV"));
        }
        session.setAttribute("session.n1ALP", request.getParameter("session.n1ALP"));
        session.setAttribute("session.n2ALP", request.getParameter("session.n2ALP"));
        } catch (Exception ex) {
            
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DISCIPLINAS</title>
          
           
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <br>
        <% if(session.getAttribute("session.user") != null){ %>
        <form method="post">
            <table border="2" cellpadding="2">
                <tr>
                    <th>DISCIPLINAS</th>
                    <th>P1</th>
                    <th>P2</th>
                </tr>
                <tr>
                    <td>POO</td>
                    <td><input type="number" value="<%= session.getAttribute("session.n1POO") %>" name="session.n1POO"></td>
                    <td><input type="number" value="<%= session.getAttribute("session.n2POO") %>" name="session.n2POO"></td>
                </tr>
                <tr>
                    <td>BDD</td>
                    <td><input type="number" value="<%= session.getAttribute("session.n1BDD") %>" name="session.n1BDD"></td>
                    <td><input type="number" value="<%= session.getAttribute("session.n2BDD") %>" name="session.n2BDD"></td>
                </tr>
                <tr>
                    <td>ING IV</td>
                    <td><input type="number" value="<%= session.getAttribute("session.n1INGIV") %>" name="session.n1INGIV"></td>
                    <td><input type="number" value="<%= session.getAttribute("session.n2INGIV") %>" name="session.n2INGIV"></td>
                </tr>
                <tr>
                    <td>EDD</td>
                    <td><input type="number" value="<%= session.getAttribute("session.n1EDD") %>" name="session.n1EDD"></td>
                    <td><input type="number" value="<%= session.getAttribute("session.n2EDD") %>" name="session.n2EDD"></td>
                </tr>
                <tr>
                    <td>SOII</td>
                    <td><input type="number" value="<%= session.getAttribute("session.n1SOII") %>" name="session.n1SOII"></td>
                    <td><input type="number" value="<%= session.getAttribute("session.n2SOII") %>" name="session.n2SOII"></td>
                </tr>
                <tr>
                    <td>MET</td>
                    <td><input type="number" value="<%= session.getAttribute("session.n1MET") %>" name="session.n1MET"></td>
                    <td><input type="number" value="<%= session.getAttribute("session.n2MET") %>" name="session.n2MET"></td>
                </tr>
                <tr>
                    <td>ES III</td>
                    <td><input type="number" value="<%= session.getAttribute("session.n1ESIII") %>" name="session.n1ESIII"></td>
                    <td><input type="number" value="<%= session.getAttribute("session.n2ESIII") %>" name="session.n2ESIII"></td>
                </tr>
                <tr>
                    <td>LPIV</td>
                    <td><input type="number" value="<%= session.getAttribute("session.n1LPIV") %>" name="session.n1LPIV"></td>
                    <td><input type="number" value="<%= session.getAttribute("session.n2LPIV") %>" name="session.n2LPIV"></td>
                </tr>
                <tr>
                    <td>ALP</td>
                    <td><input type="number" value="<%= session.getAttribute("session.n1ALP") %>" name="session.n1ALP"></td>
                    <td><input type="number" value="<%= session.getAttribute("session.n2ALP") %>" name="session.n2ALP"></td>                 
                </tr>
                <tr>
            </table>
                <br><br>
                <input type="submit" name="atribuir" value="Atribuir">
        </form>
        <%}else{%>
        <div color="red"><p>Sem permissÃ£o, efetue login</p></div>
        <% session.invalidate(); %>
        <%}%>
    </body>
</html>