<%--
  Created by IntelliJ IDEA.
  User: falk
  Date: 06.01.21
  Time: 20:52
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<p>${'$'}{amp1}: ${amp1}</p>
<p>${'$'}{raw(amp1)}: ${raw(amp1)}</p>
<p/>
<p>${'$'}{amp2}: ${amp2}</p>
<p>${'$'}{raw(amp2)}: ${raw(amp2)}</p>
<p/>
<p>
<g:if test="${amp1 == amp2}">
    amp1 == amp2
</g:if>
<g:else>
    amp1 != amp2
</g:else>
</p>
</body>
</html>