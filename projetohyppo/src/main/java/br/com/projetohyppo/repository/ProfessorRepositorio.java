package br.com.projetohyppo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import br.com.projetohyppo.model.Professor;

public interface ProfessorRepositorio extends JpaRepository<Professor, Long> {

    @EntityGraph(attributePaths = "email")
    List<Professor> findAll();
    
}
