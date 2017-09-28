<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="../basePag/cabecalhoOrganizador.jsp"></c:import>

<div class="container">

	<form action="participantes/evento" method="post" >
	<div>
		<label class="control-label" name="evento"><h2>Eventos:</h2></label>
		<select id="idEvento" name="idEvento" class="form-control">
			<c:forEach items="${evento}" var="evento">	
				<option value="${evento.id}">${evento.nome}</option>
			</c:forEach>
		</select>
	</div>
	<div class="centro">
		<button type="submit" class="btn" onclick="/participantes/evento">Obter lista de usu�rios</button>
	</div>
		<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">
	</form>
</div>	

<c:import url="../basePag/rodape.jsp"></c:import>

