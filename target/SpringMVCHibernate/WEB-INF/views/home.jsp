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
  
  
  <link rel="stylesheet" href="resources/css/home.css">
  <link rel="stylesheet" href="resources/bootstrap/bootstrap.css">
  
</head>
<body>

<!-- Menu Area -->
<div id="menuArea" class="ui-layout-west" >

<form:form action="${addAction}" commandName="person">
<table class="table table-condensed">
<tr>
		<td colspan="2">
			<a href="<c:url value='/persons'/>" >User Management</a>
		</td>
	</tr>
</table>
</form:form>
</div>

<!-- Content area -->
    <div id="contentArea" class="ui-layout-center">
    	Main page area
	   <div id="page_View" ></div>
    </div>
    
    
</body>
</html>