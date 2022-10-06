<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!doctype html>
<html lang="pt-br">

<head>
  <title>Hyppo - Project</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- FavIcon -->
  <link rel="shortcut icon" href="./imagens/favicon.ico" type="image/x-icon" />	
  
  <style>
    * {
      font-family: 'Comfortaa', cursive;
      padding: 0;
      margin: 0;
      box-sizing: border-box;
    }
    
    .cadastroform{
    	margin: 100px 200px 300px 600px;
    }
    
    .normal{
    	width: 400px;
    	height: 40px;
    }
    
    .especial{
    	width: 400px;
    	height: 40px;
    	border: 2px solid blue;
    }
    
    .btn{
    	border: none;
    	width: 120px;
    	height: 40px;
    	margin-left: 150px;
    	margin-top: 20px;
    	background-color: green;
    	color: black;
    	cursor: pointer;
    }
    
  </style>
</head>

<body>
	<form name="cadastroformulario" action="" class="cadastroform">
		<table>
			<tr>
				<td><input type="text" name="nome" class="normal" placeholder="Nome" value="<%out.print(request.getAttribute("nome"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="sobrenome" class="normal" placeholder="Sobrenome" value="<%out.print(request.getAttribute("sobrenome"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="cidade" class="normal" placeholder="Endereço" value="<%out.print(request.getAttribute("endereco"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="cpf" class="especial" placeholder="CPF" value="<%out.print(request.getAttribute("cpf"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="usuario" class="normal" placeholder="Usuário" value="<%out.print(request.getAttribute("nome_usuario"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="senha" class="normal" placeholder="Senha" value="<%out.print(request.getAttribute("senha"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="cep" class="normal" placeholder="CEP" value="<%out.print(request.getAttribute("cep"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="estado" class="normal" placeholder="Estado" value="<%out.print(request.getAttribute("estado"));%>"></td>
			</tr>
		</table>
		 <button class="btn" onclick="validar()">Salvar</button>
	</form>
 
  
  <script src="./scripts/validador.js"></script>
</body>
</html>