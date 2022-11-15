package br.com.projetohyppo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.projetohyppo.model.Professor;
import br.com.projetohyppo.repository.ProfessorRepositorio;

public class ProfessorController {
	
	@Autowired
    private ProfessorRepositorio professorRepositorio;

	@GetMapping("/{id}")
    public ModelAndView detalhes(@PathVariable Long id) {
        ModelAndView modelAndView = new ModelAndView("professor/detalhes");

        modelAndView.addObject("professor", professorRepositorio.getOne(id));

        return modelAndView;
    }
	
	@GetMapping("/cadastrarprofessor")
    public ModelAndView cadastrar() {
        ModelAndView modelAndView = new ModelAndView("aluno/registraprofessor");

        modelAndView.addObject("professor", new Professor());

        return modelAndView;
    }
	
	 @GetMapping("/{id}/editar")
	    public ModelAndView editar(@PathVariable Long id) {
	        ModelAndView modelAndView = new ModelAndView("aluno/registraraluno");

	        modelAndView.addObject("professor", professorRepositorio.getOne(id));

	        return modelAndView;
	    }
	 
	 @PostMapping({"/cadastrar", "/{id}/editar"})
	    public String salvar(Professor professor) {
		 professorRepositorio.save(professor);

	        return "redirect:/professor";
	    }

	    @GetMapping("/{id}/excluir")
	    public String excluir(@PathVariable Long id) {
	    	professorRepositorio.deleteById(id);

	        return "redirect:/professor";
	    }
}
