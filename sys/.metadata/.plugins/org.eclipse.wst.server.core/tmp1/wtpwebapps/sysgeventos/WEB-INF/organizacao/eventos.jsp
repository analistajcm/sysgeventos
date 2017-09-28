<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../basePag/cabecalhoOrganizador.jsp"></c:import>

<div class="container">
	<div class="panel">
		<c:if test='${not empty param["sucesso"]}'>
			<div class="alert alert-info">
				O evento foi cadastrado com sucesso!
			</div>
		</c:if>
		<c:if test='${not empty param["excluso"]}'>
			<div class="alert alert-info">
				O evento foi excluído!
			</div>
		</c:if>
		<c:if test='${not empty param["alteracao"]}'>
			<div class="alert alert-info">
				O evento foi alterado com sucesso!
			</div>
		</c:if>	
		<c:if test='${not empty param["arquivosucesso"]}'>
			<div class="alert alert-info">
				Arquivos salvos com sucesso.
			</div>
		</c:if>	
	</div>
	
	<div class="menu-organizador">
		<div class="centro">
			<button type="button" class="btn" data-toggle="modal" data-target="#formEvento" >Adicionar</button>
		</div>	
	</div>
	
	<div>		
		<c:forEach items="${evento}" var="evento">
			<div class="eventoOrganizador">
					<div>
						<h3>${evento.nome}</h3>
					</div>
					<div>
						Data de Inicio: ${evento.dataInicio}<br>
						Data de Fim: ${evento.dataFim}<br>
						<c:choose>
							<c:when test="${evento.tipo} = 1">Tipo: Pago<br></c:when>
							<c:otherwise>Tipo: Gratuito</c:otherwise>
						</c:choose>
						Quantidade de vagas: ${evento.quantidadeVagas}
					</div>
					<div >
						<button type="submit" class="btn" onclick="location.href='eventos/editar${evento.id}'">Alterar</button>
						<button type="submit" class="btn" onclick="location.href='eventos/deletar${evento.id}'">Remover</button>
						<button type="submit" class="btn" onclick="location.href='eventos/adicionar${evento.id}'">Adicionar Conteúdo</button>	
					</div>
				</div>
		</c:forEach>
	</div>
</div>

<c:import url="./form/formEvento.jsp"></c:import>
<c:import url="../basePag/rodape.jsp"></c:import>
