package unae.lp3.practica.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import unae.lp3.practica.models.Moto;
import unae.lp3.practica.repository.MotoRepository;









@Controller
@RequestMapping(value="/motos")

public class MotoController {
	
	@Autowired
	public MotoRepository motorepo;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index (Model model) {
		
		List<Moto>  motolista =motorepo.findAll();
		
		model.addAttribute("motolista", motolista);
		
		return "motos/index";
	}
	
	// CREAR REGISTROS
	
	
	@RequestMapping(value="/new", method=RequestMethod.GET)
	public String nuevo(@ModelAttribute Moto moto, Model model) {
		
		
		return "/motos/new";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	
	public String crear(Moto moto, Model model) {
		motorepo.save(moto);
		return "redirect:/motos/"; 
	}
	
	// EDITAR REGISTROS
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String editar(@PathVariable("id") int id, Model model, Moto moto ) {
		
		
		Optional <Moto> t= motorepo.findById(id);
		if (t.isPresent()) {
			 moto = t.get();
		}
		
		
		model.addAttribute("moto", moto);
		return "motos/edit"; 
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update( Moto moto, Model model ) {
		
		
		motorepo.save(moto);
		
		
		return "redirect:/motos/"; 
	}
	
		
	// ELIMINAR
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String borrar(@PathVariable("id") int id ) {
		Optional <Moto> t= motorepo.findById(id);
		if (t.isPresent()) {
			motorepo.deleteById(id);
		}
		
		return "redirect:/motos/"; 
	}
	

}
