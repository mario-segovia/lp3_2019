package unae.lp3.refu01.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import unae.lp3.refu01.model.Tipo;
import unae.lp3.refu01.repository.TiposRepository;

@Controller
@RequestMapping(value="/tipos")

public class TiposController {
	@Autowired
	public TiposRepository tiposrepo;
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index (Model model) {
		List<Tipo> tipolista = tiposrepo.findAll();
		model.addAttribute("tipolista", tipolista);
		return "tipos/index";
	}
	
	// CREAR REGISTROS
	
	
	@RequestMapping(value="/new", method=RequestMethod.GET)
	public String nuevo(@ModelAttribute Tipo tipo, Model model) {
		
		return "tipos/new";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String crear(Tipo tipo, Model model) {
		tiposrepo.save(tipo);
		return "redirect:/tipos/"; 
	}
	
	// EDITAR REGISTROS
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String editar(@PathVariable("id") int id, Model model, Tipo tipo ) {
		Optional <Tipo> t= tiposrepo.findById(id);
		if (t.isPresent()) {
			 tipo = t.get();
		}
		model.addAttribute("tipo", tipo);
		return "tipos/edit"; 
	}
	
	@RequestMapping(value="/update/{id}", method=RequestMethod.POST)
	public String update(@PathVariable("id") int id, Tipo tipo ) {
		Optional <Tipo> t= tiposrepo.findById(id);
		if (t.isPresent()) {
			tiposrepo.save(tipo);
		}
		
		return "redirect:/tipos/"; 
	}
	
	
	// ELIMINAR
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String borrar(@PathVariable("id") int id ) {
		Optional <Tipo> t= tiposrepo.findById(id);
		if (t.isPresent()) {
			tiposrepo.deleteById(id);
		}
		
		return "redirect:/tipos/"; 
	}
	
	// PRUEBA
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String add() {
		Tipo t= new Tipo();
		t.setNombre	("Noticias");
		tiposrepo.save(t);
		return "redirect:/tipos/"; 
	}
	
	
	
}
