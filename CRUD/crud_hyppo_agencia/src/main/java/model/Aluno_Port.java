package model;

public class Aluno_Port {

	private String nome;
	private String sobrenome;
	private String endereco;
	private String cpf;
	private String nome_usuario;
	private String senha;
	private String cep;
	private String estado;
	
	
	public Aluno_Port() {
		super();
	}
	
	
	public Aluno_Port(String nome, String sobrenome, String endereco, String cpf, String nome_usuario, String senha,
			String cep, String estado) {
		super();
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.endereco = endereco;
		this.cpf = cpf;
		this.nome_usuario = nome_usuario;
		this.senha = senha;
		this.cep = cep;
		this.estado = estado;
	}


	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSobrenome() {
		return sobrenome;
	}
	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getNome_usuario() {
		return nome_usuario;
	}
	public void setNome_usuario(String nome_usuario) {
		this.nome_usuario = nome_usuario;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.cep = estado;
	}
	
	
}
