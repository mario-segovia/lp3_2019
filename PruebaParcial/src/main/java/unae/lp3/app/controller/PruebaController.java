package unae.lp3.app.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller

public class PruebaController {
	
	@RequestMapping(value="/portada", method=RequestMethod.GET ) 
	public String mostrarPortada(Model model) 
	{
		String  texto= "Soy Portada";
		model.addAttribute("texto", texto);
			return "portada";	
	}
	
	@RequestMapping(value="/pagina1", method=RequestMethod.GET ) 
	public String mostrarPagina1(Model model) 
	{
		String  texto= "Soy pagina secundaria";
		model.addAttribute("texto", texto);
			return "pagina1";	
	}

}
