package unae.lp3.practica3.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import unae.lp3.practica3.models.Cliente;
import unae.lp3.practica3.models.Pelicula;
import unae.lp3.practica3.repository.ClienteRepository;
import unae.lp3.practica3.repository.PeliculaRepository;




@Controller
@RequestMapping(value="/peliculas")


public class PeliculaController {
	
	@Autowired
	public PeliculaRepository pelirepo;
	@Autowired
	public ClienteRepository clienterepo;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index (Model model) {
		
		List<Pelicula>  pelilista = pelirepo.findAll();
		
		model.addAttribute("pelilista", pelilista);
		
		return "/peliculas/index";
	}
	
	// CREAR REGISTROS
	
	
	@RequestMapping(value="/new", method=RequestMethod.GET)
	public String nuevo(@ModelAttribute Pelicula pelicula, Model model) {
		
		List<Cliente> clientes = clienterepo.findAll();
		model.addAttribute("clientes", clientes);
		
		return "/peliculas/new";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	
	public String crear(Pelicula pelicula, Model model) {
		pelirepo.save(pelicula);
		return "redirect:/peliculas/"; 
	}
	
	// EDITAR REGISTROS
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String editar(@PathVariable("id") int id, Model model, Pelicula pelicula ) {
		
		
		Optional <Pelicula> t= pelirepo.findById(id);
		if (t.isPresent()) {
			 pelicula = t.get();
		}
		
		List<Cliente> clientes = clienterepo.findAll();
		model.addAttribute("clientes", clientes);
		
		model.addAttribute("pelicula", pelicula);
		return "peliculas/edit"; 
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update( Pelicula pelicula, Model model ) {
		
		
		pelirepo.save(pelicula);
		
		
		return "redirect:/peliculas/"; 
	}
	
	
	
	// ELIMINAR
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String borrar(@PathVariable("id") int id ) {
		Optional <Pelicula> t= pelirepo.findById(id);
		if (t.isPresent()) {
			pelirepo.deleteById(id);
		}
		
		return "redirect:/peliculas/"; 
	}
	

}
