<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
(function(s,t,a,n){s[t]||(s[t]=a,n=s[a]=function(){n.q.push(arguments)},
n.q=[],n.v=2,n.l=1*new Date)})(window,"InstanaEumObject","ineum");

ineum('reportingUrl', 'http://instana.seberino.com.br:2999/');
ineum('key', 'jdhjLTzZTraoGDnXOPbWLg');
ineum('trackSessions');
ineum('page', 'novoCliente.jsp');
ineum('user', '<%=request.getUserPrincipal().getName()%>');
</script>
<script defer crossorigin="anonymous" src="http://instana.seberino.com.br:2999/eum.min.js"></script>
<script>

function salvarCliente() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
    	//alert(this.responseText);
         if (this.readyState == 4 ) {
             alert(this.responseText);
             if (this.status == 200)
             {
            	 window.history.back();
             }
         }
    };
    xhttp.open("POST", "http://cliente-bff-cliente.garage-poc-510ad6ebead8e7457a6e62904edfa48f-0000.us-south.containers.appdomain.cloud/bff/cliente", true);
    xhttp.setRequestHeader("Content-type", "application/json");
   // xhttp.onreadystatechange = callbackFunction(xhttp);
    xhttp.send('{"nome": "'+ form1.nome.value + 
    	      '","mae": "' + form1.mae.value + 
    	      '","cpf": ' + form1.cpf.value + 
    	      ',"nasc": "' + form1.nasc.value + 
    	      '","logradouro": "' + form1.logradouro.value + 
    	      '","numero": ' + form1.numero.value + 
    	      ',"complemento": "' + form1.complemento.value + 
    	      '", "cidade": "' + form1.cidade.value + 
    	      '","uf": "'+ form1.uf.value + 
    	      '","cep": "'+ form1.cep.value + '"}');
   
}	



</script>

<meta charset="UTF-8">
<title>Novo Cliente</title>
</head>
<body>
	<h2>Cadastrar Novo Cliente</h2>
	<h4>Preencha os dados abaixo para cadastrar um novo cliente</h4>
	<form name=form1>
	<table border=0>
		<tr>
			<th>Nome do cliente</th>
			<td><input type=text name=nome></td>
		</tr>
		<tr>
			<th>Mãe</th>
			<td><input type=text name=mae></td>
		</tr>
		<tr>
			<th>CPF</th>
			<td><input type=number name=cpf></td>
		</tr>
		<tr>
			<th>logradouro</th>
			<td><input type=text name=logradouro></td>
		</tr>
		<tr>
			<th>número</th>
			<td><input type=number name=numero></td>
		</tr>
		<tr>
			<th>Complemento</th>
			<td><input type=text name=complemento></td>
		</tr>
		<tr>
			<th>CEP</th>
			<td><input type=text name=cep></td>
		</tr>
		<tr>
			<th>Cidade</th>
			<td><input type=text name=cidade></td>
		</tr>
		<tr>
			<th>Estado</th>
			<td><select name=uf>
					<option value="sp">Sao Paulo</option>
					<option value="rj">Rio de Janeiro</option>
					<option value="ba">Bahia</option>
					<option value="rs">Rio Grande do Sul</option>
					<option value="sc">Santa Catarina</option>
					<option value="pr">Paraná</option>
					<option value="mt">Mato Grosso</option>
					
				</select>
			</td>
		<tr>
			<th>Nascimento</th>
			<td><input type=date name=nasc></td>
		</tr>			
		</tr>
	</table>
	<br />
	<input type=button value=Salvar onclick=javascript:salvarCliente() > <input type=button value=Cancelar onclick=javascript:window.history.back()>
	</form>
</body>
</html>