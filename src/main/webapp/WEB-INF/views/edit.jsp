<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit User</title>

  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
</head>
<body>


<c:url var="addAction" value="/person/add" ></c:url>

<form:form action="${addAction}" commandName="person">
<table class="table table-condensed">
	<c:if test="${!empty person.name}">
	<tr>
		<td>
			ID:
		</td>
		<td>
			<form:input path="id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="id" />
		</td> 
	</tr>
	</c:if>
	
	<tr >
		<td>
			Name:
		</td>
		<td>
			<form:input path="name" />
		</td>		
	</tr>
	
	<tr>
		<td>
			Birthdate:
		</td>
		<td>
			<form:input path="birthdate" />
		</td>
	</tr>
	
	<tr>
		<td>
			Qualification:
		</td>
		<td>
			<form:input path="qualification" />
		</td>
	</tr>
	
	<tr>
		<td>
			Mobile:
		</td>
		<td>
			<form:input path="mobile" />
		</td>
	</tr>
	
	<tr>
		<td>
			Email:
		</td>
		<td>
			<form:input path="email" />
		</td>
	</tr>
	<tr>
		<td>
			Address:
		</td>
		<td>
			<form:textarea rows="4" path="address" />
		</td>
	</tr>
	
	<tr>
		<td colspan="2">
			<c:if test="${!empty person.name}">
				<input type="submit"
					value="<spring:message text="Edit User"/>" />
			</c:if>
		</td>
	</tr>
	
</table>
	
</form:form>
	
</body>
</html>