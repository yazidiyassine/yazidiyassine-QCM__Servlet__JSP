<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dao.*,beans.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Votre resultat</title>
</head>
<style type="text/css">
div{
border:5px outset cyan;
background-color: skyblue;
text-align: center;
border-radius: 15px;
}
</style>
<body style="background-color:lightblue;">
<div>
<%
int i=1;
int resulat=0;
while(request.getParameter("reponse"+i)!= null ){
	
	if(dao__response.repCorrect(Integer.parseInt(request.getParameter("reponse"+i)))) 
		resulat++;
	i++;
	
}

%>
<h3> Votre score : <%= resulat%> sur <%= i-1 %></h3>
</div>
</body>
</html>