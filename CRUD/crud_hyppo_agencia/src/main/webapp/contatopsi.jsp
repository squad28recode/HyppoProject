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
  
  <!-- GOOGLE FONTS-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;700&display=swap" rel="stylesheet">
  <!-- GOOGLE FONTS-->
  <style>
    .bgnav {
      background-color: black;
    }

    * {
      font-family: 'Comfortaa', cursive;
      padding: 0;
      margin: 0;
      box-sizing: border-box;

    }

    .frm {
      border: 1px solid black;
      /* height: 400px; */
      width: 60%;
      align-content: center;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.7);
      background-color: whitesmoke
    }

    body {
      background-color: lightblue;
    }

    .apr {
      text-align: center;

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
    <!-- Inicio do corpo -->
    <form>
      <div class="row apr my-3">
        <div class="col">
          <h3> Lorem Ipsum da Silva </h3>
          <p> Psicólogo </p>
        </div>
      </div>
      <div class="form-group m-3">
        <label for="InputEmail1">Endereço de email</label>
        <input type="email" class="form-control" id="InputEmail1" aria-describedby="emailHelp"
          placeholder="Digite o seu e-mail" required>
        <small id="emailHelp" class="form-text text-muted">Nunca vamos compartilhar seu email com ninguém.</small>
      </div>
      <div class="form-group m-3">
        <label for="validationDefault06" class="form-label">Digite o seu Registro Acadêmico</label>
        <input type="text" class="form-control" id="validationDefault06" placeholder="Digite o seu RA" maxlength="11"
          required>
        <!-- <small id="emailHelp" class="form-text text-muted">Nunca vamos compartilhar seu Registro Acadêmico com ninguém.</small>  -->
      </div>

      <div class="form-group m-3">
        <label for="exampleFormControlTextarea1">Escreva sua mensagem ao psicólogo abaixo. Não esqueça de incluir sua
          disponibilidade para eventuais futuros encontros pessoalmente com o profissional em nossa unidade. </label>
        <textarea class="form-control mt-1" id="exampleFormControlTextarea1" rows="6"></textarea>
      </div>
      <div class="d-grid gap-2 m-3">
        <button type="submit" class="btn btn-dark">Enviar dados</button>
      </div>
    </form>
  </div>
  <!-- fim container -->

  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
    integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
    crossorigin="anonymous"></script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
    integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy"
    crossorigin="anonymous"></script>
</body>
</html>