<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
  <link rel="stylesheet" href="./style.css" />

  <!-- FavIcon -->
  <link rel="shortcut icon" href="./imagens/favicon.ico" type="image/x-icon" />	
  
  <!-- GOOGLE FONTS  -->
  <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;700&display=swap" rel="stylesheet">

  <!-- BOOTSTRAP ICONS-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css" />

  <title>Hyppo Project</title>

  <style>
    * {
  font-family: 'Comfortaa', cursive;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

.bg-secondary-color {
  background-color: whitesmoke;
}

.bgnav {
  background-color: black;
}


.subtitle {
  text-align: center;
  font-size: 50px;
  color: #5f5d5ad8;
  text-shadow: #000 2px 2px;
}


h2,h3,h4 {
  text-align: center;
}

p {
  font-size: 15px;
  font-style: normal;
  margin: 0 auto;
}

.bgnav {
  background-color: black;
}

#slider {
  margin-bottom: 1em;
}

#slider .carousel-caption {
  bottom: 5em;
  text-align: center;
  text-shadow: #fff 2px 2px;
  color: black;
  font-weight: bold;
  font-size: 1.3em;
}

#slider .carousel-caption h5 {
  text-shadow: white 2px;
  color: #87CEFA;
}

.btn {
  border-radius: 300px;
}

#slider .bnt {
  padding: 0.3 0.8em;
  font-size: 1em;
  margin-top: 1em;
}

.carousel-control-prev i,
.carousel-control-next i {
  color: #111;
  font-size: 3em;
}

.carousel-indicatiors[data-bs-target] {
  background-color: #222;
  opacity: 0.8;
}

.carousel-indicators .active {
  background-color: #000;
}

@media(min-width:768px) {

  #slider .carousel-caption {
    bottom: 15em;
  }

  #slider .carousel-caption h5 {
    font-size: 2em;
    text-shadow: #050505 2px 3px;
  }

}

.carousel-indicatiors {
  bottom: 7em;
}

.carousel-inner>.carousel-item>img {
  width: 600px;
  height: 500px;
}

body {
  background-color: #87CEFA;
}


#featured-images {
  margin-top: 1em;
}

.title {
  font-size: 1.5em;
  margin-bottom: 0.4em;
  position: relative;
}

#featured-images .col-md-4 {
  position: relative;
  cursor: pointer;
  padding-top: 50px;
  justify-items: center;
}

#featured-images .col-md-4:hover>.banner-content {
  opacity: 0.8;
}

#featured-images .banner-content {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  background-color: #fff;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  opacity: 0.6;
  transition: 0.5s;
}

@media (min-width: 768px) {
  .title {
    font-size: 2.4em;
  }

  .title:before {
    bottom: 1.5em;
  }

  #featured-images .banner-content {
    opacity: 0;
  }

}

.card-text {
  text-align: center;
  font-size: 15px;
  height: 235px;
}

.card-text-1 {
  text-align: center;
  font-size: 15px;
  height: 235px;
  justify-content: center;
}

.card:hover {
  transform: scale3d(1.1, 1.1, 1);
  margin-bottom: 100px;
}

.card {
  margin-top: 3em;
  margin-bottom: 1em;
}

#fundo {
  border-color: #000;
  margin-bottom: 3em;
  padding-bottom: 2em;
  justify-content: center;
  width: 50%;
  height: 50%;
  padding-top: 2px;
  padding-bottom: 2px;
  background-color: #87CEFA;
  color: #fff;
  height: 50px;
}

h1 {
  color: #5f5d5ad8;
  position: center;
  top: 50%;
  left: 50%;
  text-shadow: #000 2px 2px;
  font-size: 50px;
  text-align: center;
  line-height: 60px;
}

/* INFO */
#info-content {
  margin-bottom: 4em;
  padding: 4em 1em;
}

#info-numbers {
  margin: 1.5em 0;
}

#info-banner {
  align-items: center;
  display: flex;
  margin-bottom: 2.5em;
}

#info-numbers h3 {
  font-size: 3em;
}

@media (min-width: 768px) {
  #info-content {
    padding: 3.5em;
  }

}

#final {
  background-color: black;
  height: 100%;
  margin-bottom: 0;
  padding-bottom: 0;
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
              <li><a class="dropdown-item" href="contatodir.html">Diretores</a></li>
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
  <!-- FIM NAV-->

  <!-- Banner -->
  <div class="container" id="fundo">
    <h1>Hyppo - Estudar é diversão</h1>
  </div>
  </div>
  <!-- CARDS-->
  <div class="container ">
    <div class="row justify-content-center">
      <div class="col-md-4">
        <div class="card shadow" style="width: 20rem;">
          <img src="./imagens/missao.jpg" class="card-img-top" alt="missão">
          <div class="card-body text-center">
            <h5 class="card-title">Missão</h5>
            <p class="card-text">Tornar o ambiente escolar divertido e integrar alunos e escola.
            </p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="col-md-4">
          <div class="card shadow" style="width: 20rem;">
            <img src="./imagens/visao.jpg" class="card-img-top" alt="visão">
            <div class="card-body text-center">
              <h5 class="card-title">Visão</h5>
              <p class="card-text">Ser empresa referência no ramo educacional e tecnológico.</p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="col-md-4">
          <div class="card shadow" style="width: 20rem;">
            <img src="./imagens/valores.jpg" class="card-img-top" alt="Valores">
            <div class="card-body text-center">
              <h5 class="card-title">Valores</h5>
              <p class="card-text-1">
                Integridade e honestidade.<br>
                <br>
                Empenho para com os clientes, parceiros e tecnologia.<br>
                <br>
                Capacidade para aceitar grandes desafios e conduzi-los até ao final.<br>
                <br>
                Atitude crítica, dedicação para com a qualidade e aperfeiçoamento.<br>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--Fim dos cards  -->

  <!-- DESTAQUES-->
  <div class="container" id="featured-container">
    <div class="col-12">
      <p class="subtitle secondary-color">
        Inovador e Revolucionário
      </p>
    </div>
    <div class="col-12" id="featured-images">
      <div class="row g-4">
        <div class="col-12 col-md-4">
          <img src="./imagens/metodo3.jpg" alt="Projeto 1" class="img-fluid" />
          <div class="banner-content">
            <h2>Transforme suas Ideias<h2>
                <h4>Em realidade</h4>
          </div>
        </div>
        <div class="col-12 col-md-4">
          <img src="./imagens/metodo1.jpg" alt="Projeto 2" class="img-fluid" />
          <div class="banner-content">
            <h2>Ambiente programado para seu aprendizado<h2>
                <h4>Sofisticado e Atualizado</h4>
          </div>
        </div>
        <div class="col-12 col-md-4">
          <img src="./imagens/metodo3.jpg" alt="Projeto 3" class="img-fluid" />
          <div class="banner-content">
            <h2>Sua chance de brilhar no</h2>
            <h4>ambiente escolar</h4>
          </div>
        </div>
      </div>
    </div>
    
    <!-- INFO -->
    <div class="container" id="info-container">
      <div class="col-12">
        <div class="row">
          <div class="col-12 col-md-5 my-3" id="info-banner">
            <img src="./imagens/equipe.jpg" alt="Informações" class="img-fluid" />
          </div>
          <div class="col-12 col-md-7 my-3 bg-banner-color bg-secondary-color" id="info-content">
            <div class="row">
              <div class="col-12">
                <h2 class="title">Sobre nós</h2>
                <p class="info-content secondary-color">

                  Projeto que visa integrar alunos e escolas facilitando a comunicação entre ambos em uma gestão
                  democrática. Assim, tornando a escola um ambiente acolhedor e divertido proporcionando atividades
                  extracurriculares a fim de estimular e
                  incentivar os alunos diante seus interesses individuais além de auxiliá-los com aulas de monitorias
                  ministradas por estagiários nas disciplinas nas quais possuem dificuldades
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- FOOTER -->
    <div id="final">
      <div class="container py-4 py-md-5 px-4 px-md-3">
        <div class="row">
          <div class="col-lg-3 mb-3">
            <p class="d-inline-flex align-items-center mb-2 link-light text-decoration-none" href="#"
              aria-label="Bootstrap" style="color: white;">
              <img src="./imagens/hyppo.jpeg" alt="" style="width: 130px; height: 100px;">
              <title>Bootstrap</title>
              <path fill-rule="evenodd" clip-rule="evenodd"
                d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"
                fill="currentColor"></path>
              </svg>
              <span class="fs-5">
                <font style="vertical-align: inherit;">
                  <font style="vertical-align: inherit;"> PROJECT</font>
                </font>
              </span>
            </p>
            <ul class="list-unstyled small text-muted ">
              <li class="mb-2 link-light">
                <font style="vertical-align: inherit;">
                  <font style="vertical-align: inherit;">Feito com muito carinho pela </font>
                </font>
                <p>
                  <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;">squad 28 Recode PRO</font>
                  </font>
                </p>
              <li class="mb-2 link-light">
                <font style="vertical-align: inherit;">
                  <font style="vertical-align: inherit;">Análise por </font>
                </font><a href="home.jsp" target="_blank" rel="noopener" style="text-decoration: none;">
                  <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;">Squad 28</font>
                  </font>
                </a>
                <font style="vertical-align: inherit;">
                  <font style="vertical-align: inherit;"> .</font>
                </font>
              </li>
            </ul>
          </div>
          <div class="col-6 col-lg-2 offset-lg-1 mb-3">
            <h5 class="mb-2 link-light">
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">Links</font>
              </font>
            </h5>
            <ul class="list-unstyled">
              <li class="mb-2"><a href="home.jsp" style="text-decoration: none;">
                  <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;">Casa</font>
                  </font>
                </a></li>
              <li class="mb-2"><a href="academico.jsp" style="text-decoration: none;">
                  <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;">Acadêmico</font>
                  </font>
                </a></li>
              <li class="mb-2"><a href="monitorias.jsp" style="text-decoration: none;">
                  <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;">Monitorias</font>
                  </font>
                </a></li>
              <li class="mb-2"><a href="atv.jsp" style="text-decoration: none;">
                  <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;">Atividades Extra-curriculares</font>
                  </font>
                </a></li>
              <li class="mb-2"><a href="login.jsp" style="text-decoration: none;">
                  <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;">Login</font>
                  </font>
                </a></li>
              <li class="mb-2"><a href="signin.jsp" style="text-decoration: none;">
                  <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;">Registre-se</font>
                  </font>
                </a></li>
            </ul>
          </div>
          <div class="col-6 col-lg-2 mb-3">
            <h5 class="mb-2 link-light">
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">Comunidade</font>
              </font>
            </h5>
            <ul class="list-unstyled">
              <li class="mb-2"><a href="contatosup.jsp" style="text-decoration: none;">
                  <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;">Problemas</font>
                  </font>
                </a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Option 1: Bootstrap Bundle with Popper -->

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>

</html>