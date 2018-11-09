<%@page import="javax.servlet.*" %>

<html>
<body>

The favoritelanguage chosen is : <%= request.getParameter("favoritelanguage") %>
<% 
 String favlang=request.getParameter("favoritelanguage");
 Cookie theCookie=new Cookie("myfavoritelanguage" , favlang);
 theCookie.setMaxAge(60*60*24*365);
 response.addCookie(theCookie);



%>
<p>
Thanks !!
</p>
<hr>
<a href="cookies-homepage.jsp"> Return to homepage </a>
</body>
</html>