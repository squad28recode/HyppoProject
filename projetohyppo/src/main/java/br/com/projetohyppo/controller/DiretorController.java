package br.com.projetohyppo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DiretorController {

	@RequestMapping("/diretorhome")
	public ModelAndView diretorhome() {
		return new ModelAndView("diretorhome");
}
	
}