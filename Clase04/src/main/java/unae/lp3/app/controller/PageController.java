package unae.lp3.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/paginas")


public class PageController {
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String goIndex()
	{
		return  "page/index";
	}
	
	@RequestMapping(value="/saludo", method=RequestMethod.GET)
	public String goSaludo()
	{
		return  "page/saludo";
	}
	
	
	@RequestMapping(value="/saludo/{nombre}", method=RequestMethod.GET)
	public String goSaludoNombre(@PathVariable("nombre") String nombre, Model model )
	{
		//System.out.println(nombre);
		model.addAttribute("nombre", nombre);
		return  "page/saludo2";
	}

}
