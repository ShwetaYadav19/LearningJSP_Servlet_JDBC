<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.* , com.luv2code.jsp.tagdemo.student" %>


<% 
List<student> data= new ArrayList<student>();
data.add(new student("John","Doe",false));
data.add(new student("Maxwell","Johnson",false));

data.add(new student("Mary","Public",true));
pageContext.setAttribute("myStudents", data);

%>

<html>
<body>

<table border="1">
<tr>
<th>First Name</th>
<th>Last Name </th>
<th>Gold Customer</th>
</tr>


<c:forEach var="tempStudent" items="${myStudents}">
<tr>

<td>${tempStudent.firstName}</td> 
<td>${tempStudent.lastName} </td>
<td>
<c:if test="${tempStudent.goldCustomer}">
Special Discount
</c:if> 
<c:if  test="${not tempStudent.goldCustomer}">
-
</c:if> 
</td> 

</tr>
</c:forEach>


</td>
</table>


</body>



</html>