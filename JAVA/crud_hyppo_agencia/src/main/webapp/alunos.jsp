<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="model.Aluno_Port"%>
    <%@ page import="java.util.List"%>
<%
	List<Aluno_Port> lista = (List<Aluno_Port>) request.getAttribute("alunos");
	/** 
		for (int i =0; i < lista.size(); i++){
		out.println(lista.get(i).getNome());
		out.println(lista.get(i).getSobrenome());
		out.println(lista.get(i).getEndereco());
		out.println(lista.get(i).getCpf());
		out.println(lista.get(i).getNome_usuario());
		out.println(lista.get(i).getSenha());
		out.println(lista.get(i).getCep());
		out.println(lista.get(i).getEstado());
	} 
	**/
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Alunos Hyppo</title>

<!-- FavIcon -->
  <link rel="shortcut icon" href="./imagens/favicon.ico" type="image/x-icon" />	
<style>
	*{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		text-decoration: none;
	}
	
	body{
		display: flex;
		flex-direction: column;
		background: lightgrey;
	}
	
	.top{
		display: flex;
		flex-direction: column;
		margin-left: 40%;
		margin-top: 40px;
		padding-bottom: 50px;
	}
	
	.top > h1{
		color: black;
		letter-spacing: 2px;
	}
	
	.top > a{
		background: linear-gradient(-45deg, #4dffe4, lightblue, #4dbffe);
		width: 200px;
		height: 50px;
		text-align: center;
		margin-top: 30px;
		padding-top: 15px;
		border-radius: 8px;
		font-size: 18px;
		color: #333;
	}
	
	.top > a:hover{
		color: blue;
		background: white;
		border: 1px solid #333;
	}
	
	.tabela{
		margin-top: 30px;
		border-collapse: collapse;
		background-color: white;
		color: black;
	}
	
	.tabela th{
		border: 1px solid #ddd;
		padding: 10px;
		text-align: left;
		background-color: #87CEFA;
		color: black;
	}
	
	.tabela td{
		border: 1px solid #ddd;
		padding: 10px;
	}
	
	.edit{
		color: green;
	}
	
	.delete{
		color: red;
	}
	
</style>	
</head>
<body>
	<div class="top">
	<h1>Alunos Cadastrados</h1>
	<a href="signin.jsp">Cadastrar novo aluno</a>
	</div>
	<div class="bottom">
		<table class="tabela">
			<thead>
				<tr>
					<th>Nome</th>
					<th>Sobrenome</th>
					<th>Endereço</th>
					<th>CPF</th>
					<th>@Username</th>
					<th>Senha</th>
					<th>CEP</th>
					<th>Estado</th>
					<th>Opções</th>
				</tr>
			</thead>
			<tbody>
				<%for (int i = 0; i < lista.size(); i++) { %>
					<tr>
						<td><%=lista.get(i).getNome() %></td>
						<td><%=lista.get(i).getSobrenome() %></td>
						<td><%=lista.get(i).getEndereco() %></td>
						<td><%=lista.get(i).getCpf() %></td>
						<td><%=lista.get(i).getNome_usuario() %></td>
						<td><%=lista.get(i).getSenha() %></td>
						<td><%=lista.get(i).getCep() %></td>
						<td><%=lista.get(i).getEstado()%></td>
						<td><a href="select?Cpf=<%=lista.get(i).getCpf() %>" class="edit">Editar</a>
							<a href="" class="delete" onclick="confirmar()">Excluir</a>
						</td>
					</tr>
				<%} %>
			</tbody>
		</table>
	</div>
	
	<script src="./scripts/excluir.js"></script>
</body>
</html>