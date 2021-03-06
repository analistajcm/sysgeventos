<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="../basePag/cabecalhoOrganizador.jsp"></c:import>
	
	
	
	
<div class="container">
	<div class="ct-chart"></div>
	<c:set value="${m}" var="m"/>
	<c:set value="${f}" var="f"/>
	<script>
	
	var data = {
			  labels: ['Feminino', 'Masculino'],
			  series: [${f}, ${m}]
			};

			var options = {
			  labelInterpolationFnc: function(value) {
			    return value[0]
			  }
			};

			var responsiveOptions = [
			  ['screen and (min-width: 640px)', {
			    chartPadding: 30,
			    labelOffset: 100,
			    labelDirection: 'explode',
			    labelInterpolationFnc: function(value) {
			      return value;
			    }
			  }],
			  ['screen and (min-width: 1024px)', {
			    labelOffset: 80,
			    chartPadding: 20
			  }]
			];

			new Chartist.Pie('.ct-chart', data, options, responsiveOptions);
	</script>
	
	<table class=" table table-houover table-condesed table-striped table-bordered">
			<h3>Quantidade de Inscrito por sexo</h3>
			<thead>
				<tr>
					<td>Masculino</td>
					<td>Femino</td>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td>${m}</td>
						<td>${f}</td>
					</tr>
			</tbody>
	</table>
	</div>
	
	<div class="container">
		<table class=" table table-houover table-condesed table-striped table-bordered">
				<thead>
					<tr>
						<td>Nome</td>
						<td>Sexo</td>
						<td>Estado</td>
						<td>Cidade</td>
						<td>CPF</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${usuario}" var="usuario">
						<tr>
							<td>${usuario.nome}</td>
							<td>${usuario.sexo}</td>
							<td>${usuario.estado}</td>
							<td>${usuario.cidade}</td>
							<td>${usuario.cpf}</td>
						</tr>
					</c:forEach>
				</tbody>
		</table>
	</div>
</div>

<c:import url="../basePag/rodape.jsp"></c:import>