
<div>
	<form method="post" >
					<div class="modal-header">
						<label class="control-label" name="textoComentario">Comentário:</label>
						<textarea rows="10" cols="20" class="form-control" id="textoComentario" name="textoComentario"></textarea>
						<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">
						<button type="submit" class="btn btn-default"> Postar </button>
					</div>
	</form>
</div>