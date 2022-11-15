package br.com.projetohyppo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import br.com.projetohyppo.model.Psicologo;

public interface PsicologoRepositorio extends JpaRepository<Psicologo, Long> {

    @EntityGraph(attributePaths = "email")
    List<Psicologo> findAll();
    
}
