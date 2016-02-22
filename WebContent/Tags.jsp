<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- page directive -->
<%@ page import="java.util.Random" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tags example 1</title>
</head>
<body>
	<!-- JSP Declarion -->
	<%! int r; Random generator = new Random(); %>
	<div>The winning numbers are:<br/>
		<p>
		<!-- JSP Scriptlet -->
		<% for(int i=0; i< 10; i++){
				out.print(generator.nextInt(42));
				if(i < 9)
					out.print(" | ");
			}
		%>
		</p>
	</div>
	<!--  JSP Expression is used here for getting system date -->
    <p>
    	<b>Note:</b> Website updated on: <%= (new java.util.Date()).toLocaleString()%>
	</p>
</body>
</html>