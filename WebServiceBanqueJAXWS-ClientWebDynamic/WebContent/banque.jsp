<%@page import="webservice.BanqueServiceProxy"%>
<%@page import="webservice.BanqueService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
	double result = 0;
	if(request.getParameter("montant")!=null){
		double mt = Double.parseDouble(request.getParameter("montant"));
		BanqueService stub = new BanqueServiceProxy().getBanqueService();
		result = stub.conversionEuroFcfa(mt);
	}
%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Convert my cash</title>
</head>
<body>
	<h3>Enter a amount to convert from Euros to FCFA</h3>
	<form action="banque.jsp">
		Amount : <input type="text" name="montant">
		<input type="submit" value="Convertir">
		<br><br>
		<hr>
		Result : <%= result %> FCFA
	</form>
</body>
</html>