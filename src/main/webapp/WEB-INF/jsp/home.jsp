<%@ page import="com.ricardo.models.User" %>
<html>
<body>
<h2>Hello HOME!</h2>

<p>
<%=request.getAttribute("unMensaje")%>
</p>

<%
    User elUsuario=(User)request.getAttribute("unUsuario");
%>
<ul>
    <li>Id: <%=elUsuario.getId()%></li>
    <li>Nombre: <%=elUsuario.getName()%></li>
    <li>Email: <%=elUsuario.getEmail()%></li>
</ul>

</body>
</html>
