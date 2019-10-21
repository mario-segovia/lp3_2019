package unae.lp3.practica.controllers;

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
	
	
}
