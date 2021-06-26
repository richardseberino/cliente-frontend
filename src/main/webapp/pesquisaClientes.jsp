<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pesquisa Clientes</title>
<script>
  (function(s,t,a,n){s[t]||(s[t]=a,n=s[a]=function(){n.q.push(arguments)},
  n.q=[],n.v=2,n.l=1*new Date)})(window,"InstanaEumObject","ineum");

  ineum('reportingUrl', 'http://instana.seberino.com.br:2999/');
  ineum('key', 'jdhjLTzZTraoGDnXOPbWLg');
  ineum('trackSessions');
  ineum('page', 'pesquisaClientes.jsp');
  ineum('user', '<%=request.getUserPrincipal().getName()%>');
</script>
<script defer crossorigin="anonymous" src="http://instana.seberino.com.br:2999/eum.min.js"></script>
<script>
	function pesquisar()
	{
	    var xhttp = new XMLHttpRequest();
	    xhttp.onreadystatechange = function() {
	    	//alert(this.responseText);
	         if (this.readyState == 4 ) {
	            //alert(this.responseText);
	             if (this.status == 200)
	             {
	            	 const list = JSON.parse(this.responseText);
	            	 
	            	 var cols = [];
	                 
	                 for (var i = 0; i < list.length; i++) {
	                     for (var k in list[i]) {
	                         if (cols.indexOf(k) === -1) {
	                               
	                             // Push all keys to the array
	                             cols.push(k);
	                         }
	                     }
	                 }
	                 
	              // Create a table element
	                 var table = document.createElement("table");
	                   
	                 // Create table row tr element of a table
	                 var tr = table.insertRow(-1);
	                   
	                 for (var i = 0; i < cols.length; i++) {
	                       
	                     // Create the table header th element
	                     var theader = document.createElement("th");
	                     theader.innerHTML = cols[i];
	                      
	                     if (i==0 || i==1 || i==7||i==8)
	                   	 {
		                     // Append columnName to the table row
		                     tr.appendChild(theader);
	                  	 }
	                 }
	                   
	                 // Adding the data to the table
	                 for (var i = 0; i < list.length; i++) {
	                       
	                     // Create a new row
	                     trow = table.insertRow(-1);
	                     for (var j = 0; j < cols.length; j++) {
		                     if (j==0 || j==1 || j==7||j==8)
		                   	 {
		                         var cell = trow.insertCell(-1);
		                    	 // Inserting the cell at particular place
		                         cell.innerHTML = list[i][cols[j]];
		                   	 }
	                     }
	                 }
	                   
	                 // Add the newely created table containing json data
	                 var el = document.getElementById("table");
	                 el.innerHTML = "";
	                 el.appendChild(table);
	            	 
	            	// window.history.back();
	             }
	         }
	    };
	    xhttp.open("GET", "http://cliente-bff-cliente.garage-poc-510ad6ebead8e7457a6e62904edfa48f-0000.us-south.containers.appdomain.cloud/bff/cliente/pesquisa/" + form1.pesquisa.value, true);
	    xhttp.setRequestHeader("Content-type", "application/json");
	    xhttp.send();
	}
</script>
    
</head>
<body>
	<h4>Pesquisar Clientes</h4>
	<form name=form1 >
		Nome do cliente: <input type=text name=pesquisa> <input type=button value=Pesquisar onclick=javascript:pesquisar() >  <input type=button value=Voltar onclick=javascript:window.history.back()>
		<br />
		<br />
		<table id="table" border=1 align = "left" border="1px"></table>
		 
		 <br /><br />

		 
	</form>
</body>
</html>