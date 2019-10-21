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

import unae.lp3.practica3.repository.ClienteRepository;




@Controller
@RequestMapping(value="/clientes")

public class ClienteController {
	
	@Autowired
	public ClienteRepository clienterepo;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index (Model model) {
		
		List<Cliente>  clientelista = clienterepo.findAll();
		
		model.addAttribute("clientelista", clientelista);
		
		return "/clientes/index";
	}
	
	// CREAR REGISTROS
	
	
	@RequestMapping(value="/new", method=RequestMethod.GET)
	public String nuevo(@ModelAttribute Cliente cliente, Model model) {
		
		
		return "/clientes/new";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	
	public String crear(Cliente cliente, Model model) {
		clienterepo.save(cliente);
		return "redirect:/clientes/"; 
	}
	
	// EDITAR REGISTROS
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String editar(@PathVariable("id") int id, Model model, Cliente cliente ) {
		
		
		Optional <Cliente> t= clienterepo.findById(id);
		if (t.isPresent()) {
			 cliente = t.get();
		}
		
		
		model.addAttribute("cliente", cliente);
		return "clientes/edit"; 
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update( Cliente cliente, Model model ) {
		
		
		clienterepo.save(cliente);
		
		
		return "redirect:/clientes/"; 
	}
	
	
	
	// ELIMINAR
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String borrar(@PathVariable("id") int id ) {
		Optional <Cliente> t= clienterepo.findById(id);
		if (t.isPresent()) {
			clienterepo.deleteById(id);
		}
		
		return "redirect:/clientes/"; 
	}

}
