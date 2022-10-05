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

    h3 {

      text-align: center;
    }

    body {
      background-color: lightblue;
    }


    /* Card */
    .card {
      border-radius: 20px;
      overflow: hidden;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.7);
    }

    .card-title {
      height: 60px;
      /* border:1px solid black; */
    }

    .card-footer {
      background-color: black;
      text-align: center;
      /* border: 1px solid black; */
      height: 44px;
    }

    .card-text {
      height: 180px;
      text-align: justify;
      /* border:1px solid black; */
    }


    .card-footer a {
      color: #fff;
      display: block;
      padding: 5px;
      text-decoration: none;
      font-family: sans-serif;
      font-weight: 400;
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
  <div class="container">
    <div class="row  p-4">
      <h3>Monitorias disponíveis</h3>
      <p class="mt-5">* Ideal para alunos que estão com dificuldades nos conteúdos apresentados em sala de aula </p>
    </div>

    <!-- Inicio dos Cards -->
    <div class="row row-cols-1 row-cols-md-3 g-4">
      <div class="col">
        <div class="card">
          <img src="./imagens/artes.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Artes</h5>
            <p class="card-text">- Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem accusamus ipsum
              provident fugit modi, numquam obcaecati. Est obcaecati rem soluta ea fugit omnis! Deserunt nemo laboriosam
              voluptate iure nisi soluta!</p>
          </div>
          <div class="card-footer ">
            <a href="login.jsp">Saiba mais</a>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card">
          <img src="./imagens/historia.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">História</h5>
            <p class="card-text">- Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias fugit, fuga nisi
              pariatur recusandae totam reprehenderit non laudantium possimus et earum nostrum voluptatum? Voluptates
              magni numquam est neque sit blanditiis.</p>
          </div>
          <div class="card-footer ">
            <a href="login.jsp">Saiba mais</a>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card">
          <img src="./imagens/fisica.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Física</h5>
            <p class="card-text">- Lorem ipsum dolor sit amet consectetur adipisicing elit. Excepturi dolorem eveniet,
              unde molestias totam qui odit ea velit minima vel quia atque nemo reprehenderit quas voluptatem. Quisquam
              accusamus facilis excepturi?</p>
          </div>
          <div class="card-footer ">
            <a href="login.jsp">Saiba mais</a>
          </div>
        </div>
      </div>
      <!-- fim 1 -->
      <div class="col">
        <div class="card">
          <img src="./imagens/math.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Matemática</h5>
            <p class="card-text">- Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nobis at odio autem unde
              debitis impedit. Eos provident debitis deleniti est adipisci dolorem corporis maxime, numquam recusandae
              itaque doloremque hic consectetur.</p>
          </div>
          <div class="card-footer">
            <a href="login.jsp">Saiba mais</a>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card">
          <img src="./imagens/biologia.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Biologia</h5>
            <p class="card-text">- Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam quaerat quo neque
              quod iusto consequatur debitis saepe in soluta totam nesciunt quasi eveniet veritatis illum perferendis
              laboriosam atque, accusantium maxime.</p>
          </div>
          <div class="card-footer  ">
            <a href="login.jsp">Saiba mais</a>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card">
          <img src="./imagens/quimica.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Química</h5>
            <p class="card-text">- Lorem ipsum dolor, sit amet consectetur adipisicing elit. Animi dolor beatae facere,
              nostrum ad veritatis nulla. Soluta, et laborum ut doloremque aut expedita, iusto commodi sed dolor culpa,
              facilis iste!</p>
          </div>
          <div class="card-footer ">
            <a href="login.jsp">Saiba mais</a>
          </div>
        </div>
      </div>
      <!-- fim 2 -->
      <div class="col">
        <div class="card">
          <img src="./imagens/portugues.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Português</h5>
            <p class="card-text">- Lorem ipsum dolor sit amet consectetur, adipisicing elit. Accusantium obcaecati
              nesciunt voluptatum tempore possimus rem at vitae, porro reiciendis deleniti? Earum illum blanditiis
              veritatis illo voluptate asperiores odio numquam dolorem?</p>
          </div>
          <div class="card-footer ">
            <a href="login.jsp">Saiba mais</a>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card">
          <img src="./imagens/geografia.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Geografia</h5>
            <p class="card-text">- Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus asperiores quas
              nemo, consequatur, debitis illo rerum nesciunt repellendus quo est necessitatibus dolore commodi, rem
              expedita. Dolorem ab iste quidem voluptatum.</p>
          </div>
          <div class="card-footer">
            <a href="login.jsp">Saiba mais</a>
          </div>
        </div>
      </div>
      <div class="col mb-5">
        <div class="card">
          <img src="./imagens/redação.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Redação</h5>
            <p class="card-text">- Lorem, ipsum dolor sit amet consectetur adipisicing elit. Rerum repudiandae at dolor
              eos dolores minima deserunt repellat? Eveniet vel tempore, quasi fugiat omnis, facilis nisi illo nulla
              deleniti iusto dicta?</p>
          </div>
          <div class="card-footer ">
            <a href="login.jsp">Saiba mais</a>
          </div>
        </div>
      </div>
      <!-- fim 2 -->

    </div>
    <!-- Fim Cards -->
  </div>
  <!-- Fim container -->

  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
    integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
    crossorigin="anonymous"></script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
    integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy"
    crossorigin="anonymous"></script>
</body>
</html>