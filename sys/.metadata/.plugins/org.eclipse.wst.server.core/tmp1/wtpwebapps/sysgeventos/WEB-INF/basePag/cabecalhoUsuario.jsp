<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>RolêBSB - USUÁRIO</title>
<meta name="description" content="RolêBSB - Sistema gerenciador de eventos">
<meta name="keywords" content="Rolê, eventos, sistema de eventos, sistema gerenciados de eventosevento, curso, eventos, cursos, gestão de cursos, organização de eventos, gestão de eventos, cadastro de eventos, congressos, seminários, carreiras esportivas, cursos, semanas de cursos, corporativos, treinamentos">
<meta name="robots" content="index, follow">
<meta name="author" content="João Carlos de Sá Machado">

<c:set var="path" value="${pageContext.request.contextPath}" scope="request" />

<style type="text/css">
@IMPORT url("${path}/static/css/normalize.css");
@IMPORT url("${path}/static/bootstrap/css/bootstrap.min.css");
@IMPORT url("${path}/static/bootstrap/css/bootstrap-theme.css");
@IMPORT url("${path}/static/css/rolebsb.css");
</style>

<link href="https://fonts.googleapis.com/css?family=Chewy" rel="stylesheet">

</head>
<body>
	<header class="cabecalho">
	<a href="eventos"><h1 class="logo">RolêBSB</h1></a>
	<button class="botao-menu"> <span class="glyphicon glyphicon-menu-hamburger"></span></button>
	<nav class="menu">
		<a class="botao-close"><span class="glyphicon glyphicon-remove"></span></a>
		<ul>
			<li><button onclick="location.href='/sysgeventos/app/usuario/eventos'" ><a>Eventos</a></button></li>
			<li><button onclick="location.href='/sysgeventos/app/usuario/inscritos'" ><a>Inscrições</a></button></li>
			<li><button onclick="location.href='/sysgeventos/app/usuario/noticias'"><a>Notícias</a></button></li>
			<li><form action="${path}/sair" method="post">
			<input type="hidden" name="_csrf" value="${_csrf.token}">
			<a><button type="submit" id="logout">Logout</button></a>
			</form>
			</li>
		</ul>
	</nav>
	</header>
	