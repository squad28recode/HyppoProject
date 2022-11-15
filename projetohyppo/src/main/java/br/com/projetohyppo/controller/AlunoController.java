package br.com.projetohyppo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.projetohyppo.model.Aluno;
import br.com.projetohyppo.repository.AlunoRepositorio;

public class AlunoController {
	
	@Autowired
    private AlunoRepositorio alunoRepositorio;

	@GetMapping("/{id}")
    public ModelAndView detalhes(@PathVariable Long id) {
        ModelAndView modelAndView = new ModelAndView("cliente/detalhes");

        modelAndView.addObject("cliente", alunoRepositorio.getOne(id));

        return modelAndView;
    }
	
	@GetMapping("/cadastraraluno")
    public ModelAndView cadastrar() {
        ModelAndView modelAndView = new ModelAndView("aluno/registraraluno");

        modelAndView.addObject("aluno", new Aluno());

        return modelAndView;
    }
	
	 @GetMapping("/{id}/editar")
	    public ModelAndView editar(@PathVariable Long id) {
	        ModelAndView modelAndView = new ModelAndView("aluno/registraraluno");

	        modelAndView.addObject("aluno", alunoRepositorio.getOne(id));

	        return modelAndView;
	    }
	 
	 @PostMapping({"/cadastrar", "/{id}/editar"})
	    public String salvar(Aluno aluno) {
		 alunoRepositorio.save(aluno);

	        return "redirect:/aluno";
	    }

	    @GetMapping("/{id}/excluir")
	    public String excluir(@PathVariable Long id) {
	    	alunoRepositorio.deleteById(id);

	        return "redirect:/aluno";
	    }
}
