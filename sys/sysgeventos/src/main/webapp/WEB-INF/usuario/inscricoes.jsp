<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="../basePag/cabecalhoUsuario.jsp"></c:import>
	<div class="panel">
		<c:if test='${not empty param["cancelar"]}'>
			<div class="alert alert-info">
				Evento cancelado com sucesso.
			</div>
		</c:if>
	</div>
<c:import url="../usuario/lista/listaInscricao.jsp"></c:import>
<c:import url="../basePag/rodape.jsp"></c:import>