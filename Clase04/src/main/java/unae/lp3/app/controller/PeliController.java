package unae.lp3.app.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import unae.lp3.app.models.Pelicula;
import unae.lp3.app.service.IPeliculasService;
@Controller
public class PeliController {
	

	@Autowired
	private IPeliculasService servicePeliculas;
		@RequestMapping(value="/", method=RequestMethod.GET)
		public String goIndex(Model model)
		{
			model.addAttribute("texto", "Soy portada");
			return  "index";
		}
		@RequestMapping(value="empresa", method=RequestMethod.GET)
		public String goEmpresa(Model model)
		{
			model.addAttribute("texto", "Soy Empresa");
			return  "index";
		}
		@RequestMapping(value = "/add", method = RequestMethod.GET)
		public String goAdd() {
			Pelicula peli= new Pelicula();
			peli.setTitulo("Prueba 2");
			peli.setDuracion(111);
			peli.setGenero("Prueba");
			peli.setClasificacion("B");
			String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
			peli.setFechaEstreno(date);
			System.out.println(peli);
			servicePeliculas.insert(peli);
			return "index";
		}
		
		@RequestMapping(value = "/peliForm", method = RequestMethod.GET)
		public String peliform( @ModelAttribute Pelicula pelicula )
		{
			return "peliForm";
		}
		
		@PostMapping(value="/guardar")
		public String guardarPelicula( Pelicula pelicula, Model model )
		{	
			System.out.println(pelicula.getTitulo());
			
			servicePeliculas.insert(pelicula);
			return "Home";
		}
		
		
}
