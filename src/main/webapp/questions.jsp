<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="dao.*,beans.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Les questions</title>
</head>
<style type="text/css">
div{
border:2px outset cyan;
background-color: skyblue;
border-radius: 15px;
}
.sub{
	border-radius:10px;
	margin: 8px;
}
</style>
<body style="background-color:lightblue;">
<form action="reponse.jsp" method="get">
<div>
<% int id=0;
  int form = Integer.parseInt( request.getParameter("form"));
  List<question> list_question = dao__question.getQuest(form);
  for(question q : list_question)
  {%>
  <h3><%=++id %>- <%=q.getLib_quest() %></h3>
  
  <%
    List<reponse> list_reponse = dao__response.getRep(q.getId_question());
    for(reponse r : list_reponse){
    %>	
    
    <input type="radio" name="reponse<%=id%>" value="<%=r.getId_reponse() %>">
      <label><%=r.getLib_reponse()%></label><br>
      <%} %>
      <%} %>
      </div>
      <input type="submit" class=sub value="Resultat">
	  <input type="reset" class=sub value="Reessayer">
</form>
</body>
</html>