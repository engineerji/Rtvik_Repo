<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tests Adding</title>
<%	int test = (Integer)request.getAttribute("test"); 
	%>
	<form method="get" action="Response">
		<table>
		<tr>
		<td>Number of Test to Added</td><td><input type="number" value="<%out.print(test);%>" name="numberoftests"></td>
		</tr>
		<%for(int i=1;i<=test;i++){%>
			<tr>
			<td><input type="text" name="test<%out.print(i);%>"></td>
			</tr>
				<%
	}
%>
			<tr><td><input type="submit" value="Submit"></td></tr>
		</table>
	</form>

</head>
<body>

</body>
</html>