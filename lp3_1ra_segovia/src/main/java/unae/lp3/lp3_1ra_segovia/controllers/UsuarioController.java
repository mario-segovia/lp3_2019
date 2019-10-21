package unae.lp3.lp3_1ra_segovia.controllers;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import unae.lp3.lp3_1ra_segovia.models.Usuario;
import unae.lp3.lp3_1ra_segovia.repository.UsuarioRepository;





@Controller
@RequestMapping(value="/usuarios")

public class UsuarioController {
	
	@Autowired
	public UsuarioRepository userrepo;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index (Model model) {
		
		List<Usuario>  userlista =userrepo.findAll();
		
		model.addAttribute("userlista", userlista);
		
		return "/usuarios/index";
	}
	
	// CREAR REGISTROS
	
	
	@RequestMapping(value="/new", method=RequestMethod.GET)
	public String nuevo(@ModelAttribute Usuario usuario, Model model) {
		
		
		return "/usuarios/new";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	
	public String crear(Usuario usuario, Model model) {
		userrepo.save(usuario);
		return "redirect:/usuarios/"; 
	}
	
	// EDITAR REGISTROS
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String editar(@PathVariable("id") int id, Model model, Usuario usuario ) {
		
		
		Optional <Usuario> t= userrepo.findById(id);
		if (t.isPresent()) {
			 usuario = t.get();
		}
		
		
		model.addAttribute("usuario", usuario);
		return "usuarios/edit"; 
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update( Usuario usuario, Model model ) {
		
		
		userrepo.save(usuario);
		
		
		return "redirect:/usuarios/"; 
	}
	
	
	
	// ELIMINAR
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String borrar(@PathVariable("id") int id ) {
		Optional <Usuario> t= userrepo.findById(id);
		if (t.isPresent()) {
			userrepo.deleteById(id);
		}
		
		return "redirect:/usuarios/"; 
	}

}
