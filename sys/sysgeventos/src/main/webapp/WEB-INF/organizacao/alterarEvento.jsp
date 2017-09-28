<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:import url="../basePag/cabecalhoOrganizador.jsp"></c:import>

		<div class="container">
			<form action="alterar" method="post">
				<div class="modal-header">
					<h2>Evento:</h2>
				</div>
				<div class="modal-header">
					<div class="form-group">
						<label for="nome"class="control-label">Nome do Evento*: </label>
						<input name="nome" value="${evento.nome}" class="form-control">
						<label for="dataInicio" class="control-label">Data Inicio*: </label>
						<input type="date" id="dataInicio" name="dataInicio" value="${evento.dataInicio}" class="form-control">
						<label for="dataFim" class="control-label">Data Fim*: </label>
						<input type="date" id="dataFim" name="dataFim" value="${evento.dataFim}" class="form-control">
						<label for="horarioInicio"class="control-label">Horario de Início*: </label>
						<input type="time" id="horarioInicio" name="horarioInicio" class="form-control">
						<label for="horarioFim"class="control-label">Horario de Termino*: </label>
						<input type="time" id="horarioFim" name="horarioFim" class="form-control">
						<label for="nomePalestrante" class="control-label">Nome do Palestrante:</label>
						<input id="nomePalestrante" name="nomePalestrante" value="${evento.nomePalestrante}" class="form-control">
						<label for="quantidadeVagas" class="control-label">Quantidade de Vagas*:</label>
						<input id="quantidadeVagas" name="quantidadeVagas" value="${evento.quantidadeVagas}" class="form-control">
						<label for="tipo" class="control-label">Tipo*:</label>
							<div class="checkbox">	
							<input type="radio" id="tipo" name="tipo" value="${evento.tipo}"> Pago 
							<input type="radio" id="tipo" name="tipo" value="${evento.tipo}"> Gratuito
							</div>
						<label for="url" class="control-label">URL de Incorporação:</label>
						<input type="text" id="url" name="url" value="${evento.url}" class="form-control">
						<label for="descricaoUrl" class="control-label">Descrição da URL:</label>
						<input type="text" id="descricaoUrl" name="descricaoUrl" value="${evento.descricaoUrl}" class="form-control">
					</div>
					<label for="descricao">Descrição:</label>
					<textarea rows="10" cols="20" id="descricao" name="descricao" class="form-control">${evento.descricao}</textarea><br>
					<input type="hidden" id="id" name="id" value="${evento.id}" >
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-default"> Postar </button>
					<button type="button" class="btn btn-default" onclick="window.history.back()"> Voltar </button>
				</div>
				<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">
			</form>
		</div>
<c:import url="../basePag/rodape.jsp"></c:import>