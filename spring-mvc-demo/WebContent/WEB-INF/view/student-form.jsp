<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
	<title> Student Registration form </title>
</head>

<body>

	<form:form action="processForm" modelAttribute="student">
	
	First Name: <form:input path="firstName"/>
	<br> <br>
	Last Name: <form:input path="lastName"/>
	<br><br>
	Country:  <form:select path="country">
				<form:options items="${theCountryOptions}"></form:options>
			  </form:select>
			  
	<br><br>
	Favorite Language:
	
	Java <form:radiobutton path="favoriteLanguage" value="java"/>
	C# <form:radiobutton path="favoriteLanguage" value="c#"/>
	PHP <form:radiobutton path="favoriteLanguage" value="php"/>
	Ruby <form:radiobutton path="favoriteLanguage" value="ruby"/>
	
	<br><br>
	
	Operating System: 
	Linux <form:checkbox path="operatingSystems" value="linux"/>
	MacOS <form:checkbox path="operatingSystems" value="macos"/>
	Windows <form:checkbox path="operatingSystems" value="windows"/>
	Fedora  <form:checkbox path="operatingSystems" value="fedora"/>
	
	<br> <br>
	<input type="submit" />
	
	</form:form>


</body>

</html>

