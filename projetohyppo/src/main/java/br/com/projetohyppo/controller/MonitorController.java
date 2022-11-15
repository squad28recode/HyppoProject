package br.com.projetohyppo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.projetohyppo.model.Monitor;
import br.com.projetohyppo.model.Professor;
import br.com.projetohyppo.repository.MonitorRepositorio;

public class MonitorController {
	
	@Autowired
    private MonitorRepositorio monitorRepositorio;

	@GetMapping("/{id}")
    public ModelAndView detalhes(@PathVariable Long id) {
        ModelAndView modelAndView = new ModelAndView("monitor/detalhes");

        modelAndView.addObject("monitor", monitorRepositorio.getOne(id));

        return modelAndView;
    }
	
	@GetMapping("/cadastrarmonitor")
    public ModelAndView cadastrar() {
        ModelAndView modelAndView = new ModelAndView("aluno/registramonitor");

        modelAndView.addObject("monitor", new Monitor());

        return modelAndView;
    }
	
	 @GetMapping("/{id}/editar")
	    public ModelAndView editar(@PathVariable Long id) {
	        ModelAndView modelAndView = new ModelAndView("monitor/registrarmonitor");

	        modelAndView.addObject("monitor", monitorRepositorio.getOne(id));

	        return modelAndView;
	    }
	 
	 @PostMapping({"/cadastrar", "/{id}/editar"})
	    public String salvar(Monitor monitor) {
		 monitorRepositorio.save(monitor);

	        return "redirect:/monitor";
	    }

	    @GetMapping("/{id}/excluir")
	    public String excluir(@PathVariable Long id) {
	    	monitorRepositorio.deleteById(id);

	        return "redirect:/monitor";
	    }
}
