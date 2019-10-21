package unae.lp3.final2da_Segovia.controllers;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import unae.lp3.final2da_Segovia.models.Persona;
import unae.lp3.final2da_Segovia.repositories.PersonaRepository;


@Controller
@RequestMapping(value="/personas")

public class PersonaController {
	
	@Autowired
	public PersonaRepository persorepo;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index (Model model) {
		
		List<Persona>  personalista =persorepo.findAll();
		
		model.addAttribute("personalista", personalista);
		
		return "/personas/index";
	}
	
	// CREAR REGISTROS
	
	
	@RequestMapping(value="/new", method=RequestMethod.GET)
	public String nuevo(@ModelAttribute Persona persona, Model model) {
		
		
		return "/personas/new";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	
	public String crear(Persona persona, Model model) {
		persorepo.save(persona);
		return "redirect:/personas/"; 
	}
	
	// EDITAR REGISTROS
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String editar(@PathVariable("id") int id, Model model, Persona persona ) {
		
		
		Optional <Persona> t= persorepo.findById(id);
		if (t.isPresent()) {
			 persona = t.get();
		}
		
		
		model.addAttribute("persona", persona);
		return "personas/edit"; 
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update( Persona persona, Model model ) {
		
		
		persorepo.save(persona);
		
		
		return "redirect:/personas/"; 
	}
	
	
	
	// ELIMINAR
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String borrar(@PathVariable("id") int id ) {
		Optional <Persona> t= persorepo.findById(id);
		if (t.isPresent()) {
			persorepo.deleteById(id);
		}
		
		return "redirect:/personas/"; 
	}

}
