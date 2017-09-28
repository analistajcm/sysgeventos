<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="../basePag/cabecalhoUsuario.jsp"></c:import>
	<div class="panel">
		<c:if test='${not empty param["cadastrosucesso"]}'>
			<div class="alert alert-info">
				Inscrição feita com sucesso.
			</div>
		</c:if>
		<c:if test='${not empty param["cadastrado"]}'>
			<div class="alert alert-warning">
				Você já está inscrito.
			</div>
		</c:if>
	</div>
<c:import url="../usuario/lista/listaEventos.jsp"></c:import>
<c:import url="../basePag/rodape.jsp"></c:import>