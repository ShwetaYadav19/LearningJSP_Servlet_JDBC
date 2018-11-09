<html>

<%@page import="java.util.*" %>


<head><title>To Do List</title></head>

<body>

<form action="todo-demo.jsp">
Enter to do item :
 
<input type="textbox" name= "theitem">
 <input type="submit" value="Submit"/> 
 </form>
<br/> 


<%

List<String> items=(List<String>) session.getAttribute("mytodolist");
if(items==null){
	items=new ArrayList<String>();
	session.setAttribute("mytodolist", items);
}

String theItem=request.getParameter("theitem");
if((theItem !=null) && (! theItem.trim().equals(""))){
	
	items.add(theItem);
	
}

%>
<hr>

<b>The list items </b>
<ol>
<%
 for(String item:items){
 out.println("<li>" +item + "</li>");
 }
%>
</ol>

</body>



</html>