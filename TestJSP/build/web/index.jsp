<%@page import="Calculations.Fraction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>index.jsp</title>
    </head>
    <body>
        <h1>Fraction Calculations:</h1>
<%
    try {
        Calculations.Fraction a = new Fraction(2,3);
        Calculations.Fraction b = new Fraction(3,4);
%>        
    <p><%=a %> + <%=b %> = <% out.print(Calculations.Fraction.add(a,b)); %></p>
    <p><%=a %> - <%=b %> = <% out.print(Calculations.Fraction.subtract(a,b)); %></p>
    <p><%=b %> - <%=a %> = <% out.print(Calculations.Fraction.subtract(b,a)); %></p>
    <p><%=a %> * <%=b %> = <% out.print(Calculations.Fraction.multiply(a,b)); %></p>
    <p><%=a %> / <%=b %> = <% out.print(Calculations.Fraction.division(a,b)); %></p>
    <p><%=b %> / <%=a %> = <% out.print(Calculations.Fraction.division(b,a)); %></p>
<%
    }
    catch( ArithmeticException e) {
        out.print("<p>ArithmeticError: " + e.getMessage() + "</p>" + '\n');
    }
%>
    </body>
</html>
