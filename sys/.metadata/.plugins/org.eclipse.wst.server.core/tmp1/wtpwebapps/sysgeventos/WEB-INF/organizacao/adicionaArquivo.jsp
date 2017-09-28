<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../basePag/cabecalhoOrganizador.jsp"></c:import>

<div class="container">
	<div class="arquivo">
		<form action="adicionarArquivo" method="post" enctype="multipart/form-data">
		    <input type="file" name="file" id="file"/> 
		    <input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">
		</form>
			<button type="submit" class="btn">Enviar</button>
	</div>
</div>

<c:import url="../basePag/rodape.jsp"></c:import>