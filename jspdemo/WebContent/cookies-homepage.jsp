<html>
<head><title>Welcome to Cookies homepage</title></head>
<body>
<h1>Learning portal</h1>

<%
String favLang="Java";

Cookie[] theCookies=request.getCookies();

if(theCookies != null){
	for(Cookie tempcookie:theCookies){
		if(("myfavoritelanguage").equals(tempcookie.getName())){
			favLang=tempcookie.getValue();
		}
	}
}


%>

<h2>Books for <%= favLang%> </h2>
<br/>
blah blah<br/>
blah blah<br/>
blah blah<br/>

<br/><br/>
<h2>Recent news for <%= favLang%> </h2>
<br/>
blah blah
<br/>
blah blah<br/>
blah blah<br/>


<br/><br/>
<h2>Hot jobs for <%= favLang%> </h2>
<br/>
blah blah<br/>
blah blah<br/>
blah blah<br/>
<br/>

<hr>

<a href="cookies-personalize-form.html">Customize this page </a>


</body>






</html>