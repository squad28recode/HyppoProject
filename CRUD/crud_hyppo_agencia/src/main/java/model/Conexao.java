package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Conexao {
		//Usuário
		private static final String USERNAME = "root";
		//Senha
		private static final String PASSWORD = "355543482";
		//URL
		private static final String DATABASE_URL = "jdbc:mysql://localhost:3307/projeto_hyppo?useTimezone=true&serverTimezone=UTC";
		
		//Conexao
		public static Connection createConnectionToMySQL() throws Exception {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection connection = DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);
			
			return connection;
		}
		
		public static void main(String[] args) throws Exception{
			
			Connection con = createConnectionToMySQL();
			
			if(con != null) {
				System.out.println("Conexão obtida com sucesso!");
				con.close();
			}
		}
		
		/** CRUD CREATE **/
		public void inserirAluno(Aluno_Port aluno) {
			String criar = "INSERT INTO aluno_port (Nome, Sobrenome, Endereco, CPF, Nome_usuario, Senha, CEP, Estado) values(?, ?, ?, ?, ?, ?, ?, ?)";
			try {
				//abrir a conexão
				Connection con = createConnectionToMySQL();
				PreparedStatement pst = con.prepareStatement(criar);
				//susbtituir os parâmetros pelo conteúdo
				pst.setString(1, aluno.getNome());
				pst.setString(2, aluno.getSobrenome());
				pst.setString(3, aluno.getEndereco());
				pst.setString(4, aluno.getCpf());
				pst.setString(5, aluno.getNome_usuario());
				pst.setString(6, aluno.getSenha());
				pst.setString(7, aluno.getCep());
				pst.setString(8, aluno.getEstado());
				
				//executar
				pst.execute();
				
				//encerra conexao
				con.close();
				
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		/** CRUD READ **/
		public List<Aluno_Port> listarAlunos(){
			List<Aluno_Port> alunos = new ArrayList<Aluno_Port>();
			String ler = "SELECT * FROM aluno_port order by nome";
			ResultSet rset = null;
			try {
				Connection con = createConnectionToMySQL();
				PreparedStatement pst = con.prepareStatement(ler);
				rset = pst.executeQuery();
				
				//Execução enquanto houver contatos
				while (rset.next()) {
					String nome = rset.getString(1);
					String sobrenome = rset.getString(2);
					String endereco = rset.getString(3);
					String cpf = rset.getString(4);
					String nome_usuario = rset.getString(5);
					String senha = rset.getString(6);
					String cep = rset.getString(7);
					String estado = rset.getString(8);
					
					alunos.add(new Aluno_Port(nome, sobrenome, endereco, cpf, nome_usuario, senha, cep, estado));
				}
				con.close();
				return alunos;
				
			} catch (Exception e) {
				System.out.println(e);
			}
			return alunos;
		}
		
		/** CRUD UPDATE **/
		public void selecionarAluno(Aluno_Port aluno) {
			String leia = "SELECT * FROM aluno_port WHERE CPF = ?";
			try {
				Connection con = createConnectionToMySQL();
				PreparedStatement pst = con.prepareStatement(leia);
				pst.setString(4, aluno.getCpf());
				ResultSet rs = pst.executeQuery();
				while (rs.next()) {
					aluno.setNome(rs.getString(1));
					aluno.setSobrenome(rs.getString(2));
					aluno.setEndereco(rs.getString(3));
					aluno.setCpf(rs.getString(4));
					aluno.setNome_usuario(rs.getString(5));
					aluno.setSenha(rs.getString(6));
					aluno.setCep(rs.getString(7));
					aluno.setEstado(rs.getString(8));
				}
				con.close();
				
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		/** CRUD DELETE **/
		public void deletarAluno(Aluno_Port aluno) {
			String delete = "DELETE FROM aluno_port WHERE CPF =?";
			try {
				Connection con = createConnectionToMySQL();
				PreparedStatement pst = con.prepareStatement(delete);
				pst.setString(1, aluno.getCpf());
				pst.executeUpdate();
				con.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}

}
