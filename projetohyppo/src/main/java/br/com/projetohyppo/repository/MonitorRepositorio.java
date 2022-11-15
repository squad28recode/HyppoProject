package br.com.projetohyppo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import br.com.projetohyppo.model.Monitor;
import br.com.projetohyppo.model.Professor;

public interface MonitorRepositorio extends JpaRepository<Monitor, Long> {

    @EntityGraph(attributePaths = "email")
    List<Monitor> findAll();

	void save(Professor professor);
    
}