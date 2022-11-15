package br.com.projetohyppo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.projetohyppo.model.Professor;
import br.com.projetohyppo.model.Psicologo;

public class PsicologoController {
	
	@Autowired
    private PsicologoController psicologoController;

	@GetMapping("/{id}")
    public ModelAndView detalhes(@PathVariable Long id) {
        ModelAndView modelAndView = new ModelAndView("psicologo/detalhes");

        modelAndView.addObject("monitor", psicologoController.getOne(id));

        return modelAndView;
    }

	private Object getOne(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@GetMapping("/cadastrarpsicologo")
    public ModelAndView cadastrar() {
        ModelAndView modelAndView = new ModelAndView("psicologo/registramonitor");

        modelAndView.addObject("psicologo", new Psicologo());

        return modelAndView;
    }
	
	 @GetMapping("/{id}/editar")
	    public ModelAndView editar(@PathVariable Long id) {
	        ModelAndView modelAndView = new ModelAndView("monitor/registrarpsicologo");

	        modelAndView.addObject("psicologo", psicologoController.getOne(id));

	        return modelAndView;
	    }
	 
	 @PostMapping({"/cadastrar", "/{id}/editar"})
	    public String salvar(Psicologo psicologo) {
		 psicologoController.save(psicologo);

	        return "redirect:/monitor";
	    }

	    private void save(Psicologo psicologo) {
		// TODO Auto-generated method stub
		
	}

		@GetMapping("/{id}/excluir")
	    public String excluir(@PathVariable Long id) {
	    	psicologoController.deleteById(id);

	        return "redirect:/psicologo";
	    }

		private void deleteById(Long id) {
			// TODO Auto-generated method stub
			
		}
}
