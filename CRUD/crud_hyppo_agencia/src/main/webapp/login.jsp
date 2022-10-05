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

  <style>
    .bgnav {
      background-color: black;
    }

    .frm {
      border: 1px solid black;
      height: 400px;
      width: 60%;
      align-content: center;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.7);
      background-color: whitesmoke
    }

    h3 {
      text-align: center;
    }

    body {
      background-color: lightblue;
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
  <div class="container frm">
    <div class="row  p-4">
      <h3>Faça o login</h3>
    </div>
    <div class="row my-2 p-2">
      <!-- Inicio do corpo -->
      <form>
        <div class="mb-3">
          <label for="exampleInputEmail1" class="form-label">Email: </label>
          <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="mb-5">
          <label for="exampleInputPassword1" class="form-label">Senha: </label>
          <input type="password" class="form-control" id="exampleInputPassword1">
        </div>
        <button type="submit" class="btn btn-primary my-2">Login</button>
        <a href="contatosup.html" class="mx-3">Esqueci a senha </a><a> |</a>
        <a href="signin.html" class="mx-3">Fazer cadastro</a>
      </form>
    </div>
  </div>
  <!-- Fim Container -->

  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
    integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
    crossorigin="anonymous"></script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
    integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy"
    crossorigin="anonymous"></script>
</body>
</html>