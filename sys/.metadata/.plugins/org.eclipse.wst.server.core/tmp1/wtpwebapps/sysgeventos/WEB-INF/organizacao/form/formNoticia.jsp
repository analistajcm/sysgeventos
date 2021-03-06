<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="modal fade" id="formNoticia" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<form method="post" action="noticia" >
				<div class="modal-header">
					<h2>Not�cia:</h2>
				</div>
				<div class="modal-header">
					<label class="control-label" name="foto">Eventos:</label>
					<select id="evento.id" name="evento.id"  class="form-control">
						<c:forEach items="${evento}" var="evento">
							<option value="${evento.id}">${evento.nome}</option>		
						</c:forEach>
					</select>
					<label class="control-label" name="titulo">T�tulo:</label>
					<input class="form-control" id="titulo" name="titulo">
					<label class="control-label" name="lead">Lead:</label>
					<input class="form-control" id="lead" name="lead">
					<label class="control-label" name="noticia">Not�cia:</label>
					<textarea rows="10" cols="30" class="form-control" id="noticia" name="noticia"></textarea>
					<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-default"> Postar </button>
					<button type="button" class="btn btn-default" data-dismiss="modal"> Cancelar </button>
				</div>
			</form>
		</div>
	</div>
</div>