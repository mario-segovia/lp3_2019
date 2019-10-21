package unae.lp3.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import unae.lp3.app.models.Persona;

@Controller
@RequestMapping(value="/formularios")


public class formController {
	@RequestMapping(value="/formulario", method=RequestMethod.GET) 
	public String formulario(){
		return  "formulario";
	}
	
	@RequestMapping(value="/datosform", method=RequestMethod.POST) 
	public String datosform(@RequestParam("nombre") String nombre, @RequestParam("correo") String correo, @RequestParam("mensaje") String mensaje,Model model){
		
		model.addAttribute("nombre", nombre);
		model.addAttribute("correo", correo);
		model.addAttribute("mensaje", mensaje);
		return  "datosForm";
	}
	
	@RequestMapping(value="/formulario1", method=RequestMethod.GET) 
	public String formulario1 (){
		return  "formulario1";
	}
	
	@RequestMapping(value="/datosform1", method=RequestMethod.POST) 
	public String datosform1 (Persona persona, Model model){
		
		model.addAttribute("persona", persona);
		
		return  "datosForm1";
	}
}
