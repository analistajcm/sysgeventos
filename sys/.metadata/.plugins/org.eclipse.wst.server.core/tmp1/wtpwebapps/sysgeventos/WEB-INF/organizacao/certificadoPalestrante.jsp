<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Certificado do Palestrante</title>

<c:set var="path" value="${pageContext.request.contextPath}" scope="request" />

<style type="text/css">
@IMPORT url("${path}/static/css/normalize.css");
@IMPORT url("${path}/static/bootstrap/css/bootstrap.min.css");
@IMPORT url("${path}/static/bootstrap/css/bootstrap-theme.css");
@IMPORT url("${path}/static/css/rolebsb.css");
@IMPORT url("${path}/static/css/impressao.css");
</style>

</head>
<body>
	<div>	
		<img src="${path}/static/img/certificado.jpg">
		<div class="centro">
		<button type="button" class="btn" onclick="window.print()"> Imprimir </button>
		<button type="button" class="btn" onclick="window.history.back()"> Voltar </button>
		</div>
	</div>
</body>
</html>