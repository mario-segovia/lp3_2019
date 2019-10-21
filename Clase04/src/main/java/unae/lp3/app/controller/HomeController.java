package unae.lp3.app.controller;

import java.util.LinkedList;
import java.util.List;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import unae.lp3.app.models.Pelicula;
@Controller

public class HomeController {
	
	
	
	private List<Pelicula> getLista() {
		
		List<Pelicula> lista = null;
		lista= new LinkedList<Pelicula>();
		Pelicula peli1= new Pelicula(1, "Power Rangers",105, "A", "Accion", "cinema.png","0000-00-00", "--");
		Pelicula peli2= new Pelicula(2, "El engendro",105, "A", "Terror", "cinema.png","0000-00-00", "--");
		Pelicula peli3= new Pelicula(3, "Ocean 16",145, "A", "Accion", "cinema.png","0000-00-00", "--");
		Pelicula peli4= new Pelicula(4, "Indiana Jones VI",125, "A", "Aventura", "cinema.png","0000-00-00", "--");
		lista.add(peli1);
		lista.add(peli3);
		lista.add(peli2);
		lista.add(peli4);
		return lista;

	}
	
	@RequestMapping(value="/home", method=RequestMethod.GET ) 
	public String mostrarPrincipal(Model model) 
	{
		
	List<Pelicula> peliculas=getLista();
	model.addAttribute("peliculas", peliculas);
		return "Home";	
	}
	

}
