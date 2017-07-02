<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../../includes/admin/head.jsp" %>
<body>


<%@ include file="/includes/admin/autenticacion.jsp" %>
<%@ include file="../../includes/admin/menu.jsp" %>
<h1>Admin</h1>
<h2>Modificar Cliente</h2>
<p>Cambiar contraseņa:</p>

<form name="cambiarContraseniaUsuarioForm" action="${pageContext.request.contextPath}/ServerletCambiarContrasenia" method="post" onsubmit="return validarCambiarContrasenia()">
	<input type="text" name="id" value="${param.usuario}" readonly="readonly">
	<input type="password" name="pass" placeholder="nueva contraseņa">
	<input type="submit" name="cambiar" value="Cambiar">
</form>
<p id="error">
<%
try{
	if (session.getAttribute("errorCambiarContrasenia") != null){
		out.println("Hubo un error al cambiar la contraseņa.");
	}
}
catch(Exception e){
	out.println("error");
}
%>
</p>

<%@ include file="../../includes/admin/footer.jsp" %>
</body>
</html>