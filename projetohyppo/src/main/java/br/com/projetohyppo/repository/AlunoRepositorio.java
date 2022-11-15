package br.com.projetohyppo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import br.com.projetohyppo.model.Aluno;

public interface AlunoRepositorio extends JpaRepository<Aluno, Long> {

    @EntityGraph(attributePaths = "email")
    List<Aluno> findAll();
    
}
