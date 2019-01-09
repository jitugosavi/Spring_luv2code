<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title> Student Confirmation form </title>
</head>

<body>

The student is confirmed: ${student.firstName} ${student.lastName}
<br> Your country is ${student.country}
<br> Favorite Language ${student.favoriteLanguage}
<br> 

Operating Systems:

<ul>

	<c:forEach var="temp" items="${student.operatingSystems}">
		<li> ${temp} </li>
	</c:forEach>
	

</ul>

</body>

</html>