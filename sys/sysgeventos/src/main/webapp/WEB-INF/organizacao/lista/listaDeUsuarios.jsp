<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${titulo}</title>

<c:set var="path" value="${pageContext.request.contextPath}" scope="request" />

<style type="text/css">
@IMPORT url("$(path)/static/bootstrap/css/bootstrap.min.css");
@IMPORT url("$(path)/static/bootstrap/css/bootstrap-theme.css");
</style>

</head>
<body>
	<section>
		<table>
			<thead>
				<td>#</td>
				<td>Nome</td>
				<td>Sexo</td>
				<td>Cidade</td>
			</thead>
			<tbody>
				<c:forEach items="${usuarios}" var="usuario">
					<tr>
						<td>${usuario.id}</td>
						<td>${usuario.nome}</td>
						<td>${usuario.sexo}</td>
						<td>${usuario.cidade}</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="3">Usuarios: ${usuario.size()}</td>
				</tr>
			</tfoot>
		</table>
	</section>
</body>
</html>