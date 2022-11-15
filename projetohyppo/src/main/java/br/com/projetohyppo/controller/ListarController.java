package br.com.projetohyppo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ListarController {
	
	@RequestMapping("/detalharaluno")
	public ModelAndView detalharaluno() {
		return new ModelAndView("aluno/detalharaluno");
	}
	
	@RequestMapping("/detalharprofessor")
	public ModelAndView detalharprofessor() {
		return new ModelAndView("professor/detalharprofessor");
	}
	
	@RequestMapping("/detalharmonitor")
	public ModelAndView detalharmonitor() {
		return new ModelAndView("monitor/detalharmonitor");
	}
	
	@RequestMapping("/detalharpsicologo")
	public ModelAndView detalharpsicologo() {
		return new ModelAndView("psicologo/detalharpsicologo");
	}
}
