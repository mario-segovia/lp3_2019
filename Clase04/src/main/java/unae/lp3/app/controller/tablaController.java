package unae.lp3.app.controller;

import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class tablaController {
	
	private List<String> getLista(String numero) {
		
		List <String> lista = null;
		lista= new LinkedList<String>();
		int numEntero = Integer.parseInt(numero);
		int mult;
		mult= numEntero *1;
		lista.add(Integer.toString(mult));
		mult= numEntero *2;
		lista.add(Integer.toString(mult));
		mult= numEntero *3;
		lista.add(Integer.toString(mult));
		mult= numEntero *4;
		lista.add(Integer.toString(mult));
		mult= numEntero *5;
		lista.add(Integer.toString(mult));
		mult= numEntero *6;
		lista.add(Integer.toString(mult));
		mult= numEntero *7;
		lista.add(Integer.toString(mult));
		mult= numEntero *8;
		lista.add(Integer.toString(mult));
		mult= numEntero *9;
		lista.add(Integer.toString(mult));
		return lista;

	}
	
	@RequestMapping(value="/tabla/{numero}", method=RequestMethod.GET)
	public String goSaludoNombre(@PathVariable("numero") String numero, Model model )
	{
		List<String> tabla = getLista(numero);
		model.addAttribute("tabla", tabla);
		return  "page/tabla";
	}

}
