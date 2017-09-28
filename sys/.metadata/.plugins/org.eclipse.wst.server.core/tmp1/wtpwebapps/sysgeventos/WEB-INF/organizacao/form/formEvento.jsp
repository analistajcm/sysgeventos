<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="modal fade" id="formEvento" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="panel">
			<c:if test='${not empty param["erro"]}'>
				<div class="alert alert-warning">
					Campos obrigatórios não foram preenchidos.
					Os campos obrigatórios são aqueles que tem um asterisco.
				</div>
			</c:if>
			
				<form action="evento" method="post">
					<div class="modal-header">
						<h2>Evento:</h2>
					</div>
					<div class="modal-header">
						<div class="form-group">
							<label for="nome"class="control-label">Nome do Evento*: </label>
							<input id="nome" name="nome" class="form-control">
							<label for="dataInicio" class="control-label">Data de Inicio*: </label>
							<input type="date" id="dataInicio" name="dataInicio" class="form-control">
							<label for="dataFim" class="control-label">Data de Fim*: </label>
							<input type="date" id="dataFim" name="dataFim" class="form-control">
							<label for="horarioInicio"class="control-label">Horário de Início*: </label>
							<input type="time" id="horarioInicio" name="horarioInicio" class="form-control">
							<label for="horarioFim"class="control-label">Horário de Termino*: </label>
							<input type="time" id="horarioFim" name="horarioFim" class="form-control">
							<label for="nomePalestrante" class="control-label">Nome do Palestrante:</label>
							<input id="nomePalestrante" name="nomePalestrante" class="form-control">
							<label for="quantidadeVagas" class="control-label">Quantidade de Vagas*:</label>
							<input type="number" id="quantidadeVagas" name="quantidadeVagas" class="form-control">
							<label for="tipo" class="control-label">Tipo*:</label>
								<div class="checkbox">	
								<input type="radio" id="tipo" name="tipo" value="true"> Pago 
								<input type="radio" id="tipo" name="tipo" value="false"> Gratuito
								</div>
							<label for="url" class="control-label">URL de Incorporação:</label>
							<input type="text" id="url" name="url" class="form-control">
							<label for="descricaoUrl" class="control-label">Descrição da URL:</label>
							<input type="text" id="descricaoUrl" name="descricaoUrl" class="form-control">
						</div>
						<label for="descricao">Descrição do evento: </label>
						<textarea rows="10" cols="20" id="descricao" name="descricao" class="form-control"></textarea><br>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-default"> Postar </button>
						<button type="button" class="btn btn-default" data-dismiss="modal"> Cancelar </button>
					</div>
					<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">
				</form>
			</div>
		</div>
	</div>
</div>