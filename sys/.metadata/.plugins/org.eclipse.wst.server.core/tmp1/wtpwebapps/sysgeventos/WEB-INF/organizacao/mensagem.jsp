<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../basePag/cabecalhoOrganizador.jsp"></c:import>
<div class="container">
	<form method="post">
		<div>
			<h2>Mensagem:</h2>
		</div>
		<div>
		<label class="control-label">Evento*:</label>
				<select id="evento" name="evento" class="form-control">
					<c:forEach items="${evento}" var="evento">
						<option value="${evento.id}">${evento.nome}</option>
					</c:forEach>
				</select>
			<label class="control-label">Assunto:</label>
			<input type="text" name="subject" id="subject" class="form-control" >
			<label class="control-label">Mensagem:</label>
				<textarea rows="10" cols="20" id="mensagem" name="mensagem" class="form-control"></textarea>
			<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">
			
		</div>
		<div class="modal-footer">
			<button class="btn" type="submit">Enviar</button>
		</div>
	</form>
</div>

<c:import url="../basePag/rodape.jsp"></c:import>

