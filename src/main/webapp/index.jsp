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
  ineum('page', 'index.jsp');
  ineum('user', '<%=request.getUserPrincipal().getName()%>');
</script>
<script defer crossorigin="anonymous" src="http://instana.seberino.com.br:2999/eum.min.js"></script>
    
<meta charset="UTF-8">
<title>Cadastro de Clientes</title>
</head>
<body>
<h2>Menu principal</h2>
<ul>
	<li>
		<a href=pesquisaClientes.jsp>Pesquisar clientes</a></li>
	<li>
		<a href="novoCliente.jsp">Cadastrar novo Cliente</a>
	</li>
</ul>

</body>
</html>    