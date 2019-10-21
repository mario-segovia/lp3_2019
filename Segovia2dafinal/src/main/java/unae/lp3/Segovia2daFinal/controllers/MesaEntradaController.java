package unae.lp3.Segovia2daFinal.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import unae.lp3.Segovia2daFinal.models.MesaEntrada;
import unae.lp3.Segovia2daFinal.repository.MesaEntradaRepository;


@Controller
@RequestMapping(value="/entrada")
public class MesaEntradaController {
	
	@Autowired
	public MesaEntradaRepository mesarepo;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index (Model model) {
		
		List<MesaEntrada>  mesalista =mesarepo.findAll();
		
		model.addAttribute("mesalista", mesalista);
		
		return "/entrada/index";
	}
	
	// CREAR REGISTROS
	
	
	@RequestMapping(value="/new", method=RequestMethod.GET)
	public String nuevo(@ModelAttribute MesaEntrada mesaEntrada, Model model) {
		
		
		return "/entrada/new";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	
	public String crear(MesaEntrada mesaEntrada, Model model) {
		mesarepo.save(mesaEntrada);
		return "redirect:/entrada/"; 
	}
	
	// EDITAR REGISTROS
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String editar(@PathVariable("id") int id, Model model, MesaEntrada mesaEntrada ) {
		
		
		Optional <MesaEntrada> t= mesarepo.findById(id);
		if (t.isPresent()) {
			 mesaEntrada = t.get();
		}
		
		
		model.addAttribute("mesaEntrada", mesaEntrada);
		return "entrada/edit"; 
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update( MesaEntrada mesaEntrada, Model model ) {
		
		
		mesarepo.save(mesaEntrada);
		
		
		return "redirect:/entrada/"; 
	}
	
	
	
	// ELIMINAR
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String borrar(@PathVariable("id") int id ) {
		Optional <MesaEntrada> ME= mesarepo.findById(id);
		if (ME.isPresent()) {
			mesarepo.deleteById(id);
		}
		
		return "redirect:/entrada/"; 
	}

}
