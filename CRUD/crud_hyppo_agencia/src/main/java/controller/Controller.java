package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Aluno_Port;
import model.Conexao;

@WebServlet(urlPatterns = { "/Controller", "/main", "/inserir", "/select", "/update", "/delete" })
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Conexao conexao = new Conexao();
	Aluno_Port aluno = new Aluno_Port();

	public Controller() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		String action = request.getServletPath();
		System.out.println(action);
		if (action.equals("/main")) {
			alunos(request, response);
		} else if (action.equals("/inserir")) {
			novoAluno(request, response);
		} else if (action.equals("/select")) {
			listarAluno(request, response);
		} else if (action.equals("/update")) {
			editarAluno(request, response);
		} else if (action.equals("/delete")) {
			removerAluno(request, response);
		}

	}

	// Listar alunos
	protected void alunos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Criando objeto para obter dados
		List<Aluno_Port> lista = conexao.listarAlunos();
		request.setAttribute("alunos", lista);
		RequestDispatcher rd = request.getRequestDispatcher("alunos.jsp");
		rd.forward(request, response);
		// testando recebimento
		for (int i = 0; i < lista.size(); i++) {
			/**
			 * System.out.println(lista.get(i).getNome());
			 * System.out.println(lista.get(i).getSobrenome());
			 * System.out.println(lista.get(i).getEndereco());
			 * System.out.println(lista.get(i).getCpf());
			 * System.out.println(lista.get(i).getNome_usuario());
			 * System.out.println(lista.get(i).getSenha());
			 * System.out.println(lista.get(i).getCep());
			 * System.out.println(lista.get(i).getEstado());
			 **/
		}
	}

	// Novo aluno
	protected void novoAluno(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Teste de captar dados
		// System.out.println(request.getParameter("nome"));
		// System.out.println(request.getParameter("sobrenome"));
		// System.out.println(request.getParameter("cpf"));
		// System.out.println(request.getParameter("cidade"));
		// System.out.println(request.getParameter("estado"));
		// System.out.println(request.getParameter("cep"));
		// System.out.println(request.getParameter("usuario"));
		// System.out.println(request.getParameter("senha"));

		// setar as variáveis
		aluno.setNome(request.getParameter("nome"));
		aluno.setSobrenome(request.getParameter("sobrenome"));
		aluno.setCpf(request.getParameter("cpf"));
		aluno.setEndereco(request.getParameter("cidade"));
		aluno.setEstado(request.getParameter("estado"));
		aluno.setCep(request.getParameter("cep"));
		aluno.setNome_usuario(request.getParameter("usuario"));
		aluno.setSenha(request.getParameter("senha"));

		// invocar o método inserirContato
		conexao.inserirAluno(aluno);
		// redirecionar para o documento alunos.jsp
		response.sendRedirect("main");
	}

	// editar contato
	protected void listarAluno(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Pegando o cpf do contato que será editado
		String cpf = request.getParameter("Cpf");
		aluno.setCpf(cpf);
		conexao.selecionarAluno(aluno);

		request.setAttribute("Cpf", aluno.getCpf());
		request.setAttribute("nome", aluno.getNome());
		request.setAttribute("nobrenome", aluno.getSobrenome());
		request.setAttribute("endereco", aluno.getEndereco());
		request.setAttribute("estado", aluno.getEstado());
		request.setAttribute("cep", aluno.getCep());
		request.setAttribute("nome_usuario", aluno.getNome_usuario());
		request.setAttribute("senha", aluno.getSenha());

		RequestDispatcher rd = request.getRequestDispatcher("editar.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

	protected void editarAluno(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		aluno.setNome(request.getParameter("nome"));
		aluno.setSobrenome(request.getParameter("sobrenome"));
		aluno.setEndereco(request.getParameter("endereco"));
		aluno.setCpf(request.getParameter("Cpf"));
		aluno.setNome_usuario(request.getParameter("nome_usuario"));
		aluno.setSenha(request.getParameter("senha"));
		aluno.setCep(request.getParameter("cep"));
		aluno.setEstado(request.getParameter("estado"));

		response.sendRedirect("main");
	}

	protected void removerAluno(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpf = request.getParameter("Cpf");
		aluno.setCpf(cpf);
		conexao.deletarAluno(aluno);
		response.sendRedirect("main");
	}
}
