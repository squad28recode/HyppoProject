<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!doctype html>
<html lang="pt-br">

<head>
  <title>Hyppo - Project</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.0-beta1 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
    integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    
    <!-- FavIcon -->
  <link rel="shortcut icon" href="./imagens/favicon.ico" type="image/x-icon" />	
  
  <!--GOOGLE FONTS-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;700&display=swap" rel="stylesheet">
  <!-- GOOGLE FONTS-->
  <style>
    * {
      font-family: 'Comfortaa', cursive;
      padding: 0;
      margin: 0;
      box-sizing: border-box;
    }

    .bgnav {
      background-color: black;
    }

    .frm {
      border: 1px solid black;

      width: 70%;
      align-content: center;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.7);
      background-color: whitesmoke;
    }

    h3 {
      text-align: center;
    }

    body {
      background-color: lightblue;
    }
    
    .btn-submit{
      color: white;
      text-decoration: none;	
    }
	
	.btn-submit:hover{
	  color: white;
	}
  </style>
</head>

<body>
   <!-- Inicio Nav -->
  <nav class="navbar navbar-expand-lg navbar-dark bgnav mb-5">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">
        <img src="./imagens/hyppo.jpeg" alt="" width="100" height="50"> </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="home.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="atv.jsp">Atividades Extracurriculares</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="monitorias.jsp">Monitorias</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#">Mural</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="academico.jsp">Acadêmico</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
              aria-expanded="false">
              Contato
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="contatoprof.jsp">Professores</a></li>
              <li><a class="dropdown-item" href="contatopsi.jsp">Psicologo</a></li>
              <li><a class="dropdown-item" href="contatocoord.jsp">Coordenadores</a></li>
              <li><a class="dropdown-item" href="contatodir.jsp">Diretores</a></li>
            </ul>
          </li>
        </ul>
        <ul class="nav navbar-nav navbar-right mx-3">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
              aria-expanded="false">
              <img src="./imagens/account.png" class="rounded-circle" height="30" alt="" loading="lazy" /> Profile </a>
            <div class="dropdown-menu" aria-labelledby="dropdownId">
              <a class="dropdown-item " href="login.jsp">Login</a>
              <a class="dropdown-item" href="signin.jsp">Sign in</a>
            </div>
          </li>
        </ul>
        </li>
        </ul>
        </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- Fim Nav -->

  <!-- Corpo -->
  <div class="container frm mb-5">
    <div class="row mt-2 mb-3 p-4">
      <h3>Faça o Cadastro</h3>
      <!-- Inicio do corpo -->
      <form class="row g-3" name="cadastroformulario" action="inserir">
        <div class="col-md-4">
          <label for="validationDefault01" class="form-label">Nome</label>
          <input type="text" class="form-control" id="validationDefault01" required name="nome">
        </div>
        <div class="col-md-4">
          <label for="validationDefault02" class="form-label">Sobrenome</label>
          <input type="text" class="form-control" id="validationDefault02" required name="sobrenome">
        </div>
        <div class="col-md-4">
          <label for="validationDefault06" class="form-label">CPF</label>
          <input type="text" class="form-control" id="validationDefault06" required name="cpf">
        </div>
        <div class="col-md-6">
          <label for="validationDefault03" class="form-label">Cidade</label>
          <input type="text" class="form-control" id="validationDefault03" required name="cidade">
        </div>
        <div class="col-md-3">
          <label for="validationDefault04" class="form-label">Estado</label>
          <input type="text" class="form-control" id="validationDefault03" required name="estado">
        </div>
        <div class="col-md-3">
          <label for="validationDefault05" class="form-label">CEP</label>
          <input type="text" class="form-control" id="validationDefault05" required name="cep">
        </div>
        <div class="col">
          <label for="validationDefaultUsername" class="form-label">Username</label>
          <div class="input-group">
            <span class="input-group-text" id="inputGroupPrepend2">@</span>
            <input type="text" class="form-control" id="validationDefaultUsername" aria-describedby="inputGroupPrepend2"
              required name="usuario">
          </div>
        </div>
        <div class="col">
          <label for="inputPassword5" class="form-label">Password</label>
          <input type="password" id="inputPassword5" class="form-control" aria-describedby="passwordHelpBlock" required name="senha">
          <div id="passwordHelpBlock" class="form-text">
           Sua senha deve conter 8-20 caracteres contendo letras e números, sem espaços,
            caracteres especiais, ou emoji.
          </div>
        </div>
        <div class="col-12">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
            <label class="form-check-label" for="invalidCheck2">
              Concordo com os termos de condição
            </label>
          </div>
        </div>
        <div class="d-grid gap-2 mt-3 mb-3">
          <button class="btn btn-dark" onclick="validar()">Enviar dados</button>
        </div>
      </form>
    </div>
  </div>
  <!-- Fim Container -->
  
  <script src="./scripts/validador.js"></script>
  
	
	<!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
    integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
    crossorigin="anonymous"></script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
    integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy"
    crossorigin="anonymous"></script>
</body>
</html>