package br.com.projetohyppo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("/")
	public ModelAndView home() {
		return new ModelAndView("/diretorhome");
	}
	
	@RequestMapping("/extracurricular")
	public ModelAndView extracurricular() {
		return new ModelAndView("extracurricular");
	}
	
	@RequestMapping("/academico")
	public ModelAndView academico() {
		return new ModelAndView("academico");
	}
	
	@RequestMapping("/contatos")
	public ModelAndView contatos() {
		return new ModelAndView("contatos");
	}
	
	@RequestMapping("/mural")
	public ModelAndView mural() {
		return new ModelAndView("mural");
	}
	
}
