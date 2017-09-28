<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="../basePag/cabecalhoOrganizador.jsp"></c:import>

<section class="container">
	<c:if test='${not empty param["salvoPresenca"]}'>
		<div class="alert alert-info">
			A presença foi enviada com sucesso!
		</div>
	</c:if>
		<table class=" table table-houover table-condesed table-striped table-bordered">
			<thead>
				<tr>
					<td>Nome</td>
					<td>Sexo</td>
					<td>Estado</td>
					<td>CPF</td>
				</tr>
			</thead>
								<c:set value="${evento}" var="evento"/>	
			<tbody>
					<c:forEach items="${usuario}" var="usuario">
						<tr>
							<td>${usuario.nome}</td>
							<td>${usuario.sexo}</td>
							<td>${usuario.estado}</td>
							<td>${usuario.cpf}</td>
							<td><form action="presenca" method="post"><button type="submit" class="btn">
							Presente</button>
							<input type="hidden" id="idUsuario" name="idUsuario" value="${usuario.id}">
							<input type="hidden" id="idEvento" name="idEvento" value="${evento.id}">
							<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">	
							</form></td>
							<td><form action="ausente" method="post"><button type="submit" class="btn">Ausente</button>
							<input type="hidden" id="idUsuario" name="idUsuario" value="${usuario.id}">
							<input type="hidden" id="idEvento" name="idEvento" value="${evento.id}">
							<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">
							</form></td>
						</tr>	
						
						<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">			
					</c:forEach>	
						
			</tbody>
			<tfoot>	
				<tr>	
					<td colspan="4">
					    <button type="button" class="btn" onclick="location.href='listaPresenca${evento.id}'">
							Gerar lista de presença
					    </button>
					    <button type="button" class="btn" onclick="location.href='crachas${evento.id}'">
							Gerar crachás
					    </button>
					      <button type="button" class="btn" onclick="location.href='certificado'">
							Gerar certificado para Palestrante
					    </button>  			
					</td>	
				</tr>	
			</tfoot>
		</table>
</section>
	

<c:import url="../basePag/rodape.jsp"></c:import>