<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../basePag/cabecalho.jsp"></c:import>

<div class="container">
	<div class="panel">
		<c:if test='${not empty param["cadastroerro"]}'>
			<div class="alert alert-warning">
				Campo(s) obrigat�rio(s) n�o informado!
				Os campos obrigat�rios s�o aqueles que tem asterisco.
			</div>
		</c:if>
		<c:if test='${not empty param["emailExiste"]}'>
			<div class="alert alert-warning">
				E-mail j� existente!
			</div>
		</c:if>
	
		<form method="post" action="cadastro">
						<div class="modal-header">
							<h2>Cadastro:</h2>
						</div>
						<div class="modal-header">
							<label class="control-label obrigatorio" name="nome" >Nome*:</label>
							<input class="form-control" id="nome" name="nome">
							<label class="control-label" name="cpf">CPF*:</label>
							<input class="form-control" id="cpf" name="cpf">
							<label class="control-label" name="rg">RG*:</label>
							<input class="form-control" id="rg" name="rg">
							<label class="control-label" name="dataNascimento">Data de Nascimento:*</label>
							<input type="date" class="form-control" id="dataNascimento" name="dataNascimento">
							<label class="control-label" name="sexo">Sexo*:</label>
							<label class="radio-inline"><input type="radio" value="true" id="sexo" name="sexo">Masculino</label>
							<label class="radio-inline"><input type="radio" value="false" id="sexo" name="sexo">Feminino</label><br>
							<label class="control-label" name="endereco">Endere�o*:</label>
							<input class="form-control" id="endereco" name="endereco">
							<label class="control-label" name="cidade">Cidade*:</label>
							<input class="form-control" id="cidade" name="cidade">
							<label class="control-label" name="estado">Estado*:</label>
							<select id="estado" name="estado" class="form-control" >
								<c:forEach items="${estados}" var="estados">
									<option value="${estados}">${estados}</option>
								</c:forEach>
							</select>
							<label class="control-label" name="telefone">Telefone*:</label>
							<input type="tel" class="form-control" id="telefone" name="telefone">
							<label class="control-label" name="email">E-mail*:</label>
							<input type="email" class="form-control" id="email" name="email">
							<label class="control-label" name="senha">Senha*:</label>
							<input type="password" class="form-control" id="senha"" name="senha">
							<label class="control-label" name="organizador">O que deseja ser*:</label>
							<label class="radio-inline"><input type="radio" value="true" id="organizador" name="organizador">Organizador</label>
							<label class="radio-inline"><input type="radio" value="false" id="organizador" name="organizador">Usu�rio</label>
							<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-default"> Cadastrar </button>
						</div>
			
		</form>
	</div>
</div>	

<c:import url="../basePag/rodape.jsp"></c:import>
