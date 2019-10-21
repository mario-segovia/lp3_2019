package unae.lp3.refu01.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class HomeController {
	
	@RequestMapping (value="/index", method=RequestMethod.GET)
	private String homeIndex (Model model) {
		model.addAttribute ("title", "Pagina home");
		model.addAttribute ("content", "Pagina contenido home");
		return "home";
	}
	
	@RequestMapping (value="/otro", method=RequestMethod.GET)
	private String homeOtro (Model model) {
		model.addAttribute ("title", "Pagina Otro");
		model.addAttribute ("content", "Pagina contenido OTRO");
		return "home";
	}
}
