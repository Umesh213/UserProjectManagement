<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>User Management</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
</head>
<body>
<div class="container">
  <h3>User Management</h3>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#addUser">Add Users</a></li>
    <li><a data-toggle="tab" href="#listUser">List User</a></li>
  </ul>

  <div class="tab-content">
    
    <div id="addUser" class="tab-pane fade in active">
      <h3>Add User</h3>     
	  <c:url var="addAction" value="/person/add" ></c:url>

<form:form action="${addAction}" commandName="person">

<table class="table table-condensed">
	<tr>
		<td>
			Name:
		</td>
		<td>
			<form:input path="name" />
		</td>		
	</tr>
	
	<tr>
		<td>
			BirthDate:
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
			<c:if test="${empty person.name}">
				<input type="submit"
					value="<spring:message text="Add User"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
    </div>
    
    
    <div id="listUser" class="tab-pane fade">
      <h3>Users List</h3>
	<c:if test="${!empty listPersons}">
	<table class="tg">
	<tr>
		<th width="80">Person ID</th>
		<th width="120">Person Name</th>
		<th width="120">Birthdate</th>
		<th width="120">Mobile</th>
		<th width="120">Email</th>
		<th width="120">Address</th>
		<th width="120">Qualification</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
		<th width="60">Detail</th>
	</tr>
	<c:forEach items="${listPersons}" var="person">
		<tr>
			<td>${person.id}</td>
			<td>${person.name}</td>
			<td>${person.birthdate}</td>
			<td>${person.mobile}</td>
			<td>${person.email}</td>
			<td>${person.address}</td>
			<td>${person.qualification}</td>
			<td><a href="<c:url value='/edit/${person.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${person.id}' />" >Delete</a></td>
			<td><a href="<c:url value='/detail/${person.id}' />" >Detail</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
    </div>
    
  </div>
</div>

</body>
</html>
