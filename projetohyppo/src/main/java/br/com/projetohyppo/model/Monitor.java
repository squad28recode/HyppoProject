package br.com.projetohyppo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Monitor {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column (nullable = false)
	private String nome;
	
	@Column (nullable = false)
	private String sobrenome;
	
	@Column (nullable = false)
	private String idade;
	
	@Column (nullable = false)
	private String email;
	
	@Column (nullable = false)
	private String senha;
	
	public Monitor(Monitor monitor) {		
	}
	
	public Monitor(Long id, String nome, String sobrenome, String idade, String email, String senha) {
		this.id = id;
		this.sobrenome = sobrenome;
		this.nome = nome;
		this.idade = idade;
		this.email = email;
		this.senha = senha;
		
}		


	public Monitor() {
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public String getIdade() {
		return idade;
	}

	public void setIdade(String idade) {
		this.idade = idade;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
        int result = 1;
        result = prime * result + ((id == null) ? 0 : id.hashCode());
        result = prime * result + ((nome == null) ? 0 : nome.hashCode());
        result = prime * result + ((sobrenome == null) ? 0 : sobrenome.hashCode());
        result = prime * result + ((idade == null) ? 0 : idade.hashCode());
        result = prime * result + ((email == null) ? 0 : email.hashCode());
        result = prime * result + ((senha == null) ? 0 : senha.hashCode());
        return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Monitor other = (Monitor) obj;
        if (id == null) {
            if (other.id != null)
                return false;
        } else if (!id.equals(other.id))
            return false;
        if (nome == null) {
            if (other.nome != null)
                return false;
        } else if (!nome.equals(other.nome))
            return false;
        if (sobrenome == null) {
            if (other.sobrenome != null)
                return false;
        } else if (!sobrenome.equals(other.sobrenome))
            return false;
        if (idade == null) {
            if (other.idade != null)
                return false;
        } else if (!idade.equals(other.idade))
            return false;
        if (email == null) {
            if (other.email != null)
                return false;
        } else if (!email.equals(other.email))
            return false;
        if (senha == null) {
            if (other.senha != null)
                return false;
        } else if (!senha.equals(other.senha))
            return false;
        return true;
	}

	@Override
	public String toString() {
		return "AlunoModel [id=" + id + ", nome=" + nome + ", sobrenome=" + sobrenome + ", idade=" + idade + ", email="
				+ email + ", senha=" + senha + "]";
	}
	
	
}
		
		
		
		
