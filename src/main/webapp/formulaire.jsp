<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="dao.dao__formulaire,beans.form,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulaire des questions</title>
<style type="text/css">
div{
border:5px outset cyan;
background-color: skyblue;
text-align: center;
border-radius: 15px;
}
#sub{
	border-radius:10px;
	margin: 10px;
}
</style>
</head>
<body style="background-color:lightblue;">

	<div>
		<h2>Choisir un Sujet</h2>
		<form action="questions.jsp" method="get">
		<%! List<form> ltf = dao__formulaire.getAll(); %>
		<% for(form frm : ltf)
		{%> <label><%= frm.getLib_form() %> </label><input type=radio name=form value=<%= frm.getId_form() %> /><br>
		<% } %>
			<input type=submit id="sub" value=Valider>
		</form>
	</div>
	
</body>
</html>