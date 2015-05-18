<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.Enumeration, java.util.ArrayList"%>

<%

class argTyping {
	private String name;
	private String value;
	
	protected argTyping(String name, String value) {
		this.name = name;
		this.value = value;
	}
	
	protected String getName() {
		return name;
	}
	protected String getValue() {
		return value;
	}
}

ArrayList<argTyping> parameters = new ArrayList<argTyping>();

Enumeration<String> parameterList = request.getParameterNames();

while( parameterList.hasMoreElements() ) {
	String parameterName = parameterList.nextElement();
	if( request.getParameter(parameterName) != null ) {
		parameters.add(new argTyping(parameterName,request.getParameter(parameterName)));
	}
}

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Parameters</title>
</head>
<body>
<%
int parametersSize = parameters.size();
if( parametersSize <= 0 ) {
	%>
	<h3>No active parameters</h3>
	<%
}
else {
	%>
	<h3>Parameters:</h3>
	<ul>
	<%
	argTyping parameter;
	for( int i = 0; i < parametersSize; i++ ) {
		parameter = parameters.get(i);
		out.print("<li>" + parameter.getName() + " = " + parameter.getValue() + "</li>");
	}
	%>
	</ul>
	<%
}
%>
</body>
</html>