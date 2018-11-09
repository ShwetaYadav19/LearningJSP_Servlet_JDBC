<html>

<head> <title> Student Confirmation</title></head>

<body>

The name of the student is : ${param.firstName} ${param.lastName}

<br/><br/>
The student confirmed lives in : <%= request.getParameter("country") %>
<br/><br/>

The student's favorite  language is :
<ul>
<% 
String[] langs=request.getParameterValues("favoritelanguage");%>

<% 

 for(int i=0;i<langs.length;i++){
	
	
	out.println(" <li>" +langs[i] +"</li>");
	
}

%>
</ul>


</body>
</html>