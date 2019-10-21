package unae.lp3.app.controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import unae.lp3.app.models.Noticia;
import unae.lp3.app.repository.NoticiasRepository;

@Controller
@RequestMapping(value = "/noticias")

public class NewsController {
	
	@Autowired
	public NoticiasRepository notiRepo;
	
	@GetMapping(value = "/index")
	public String index(Model model) {
		List<Noticia> noticias = (List<Noticia>) notiRepo.findAll();
		model.addAttribute("noticias", noticias);
		return "noticias/index";
	}
	
	@GetMapping(value = "/new")
	public String insert(@ModelAttribute Noticia noticia, Model model) {
		Map<String, String> publicados = new LinkedHashMap<String, String>();
		publicados.put("0", "No Públicado");
		publicados.put("1", "Públicado");
		model.addAttribute("publi", publicados);
		return "noticias/new";
	}
	
	@PostMapping(value = "/create")
	public String create(Noticia noticia, Model model) {
		notiRepo.save(noticia);
		return "redirect:index.html";
		
	}
	
	@GetMapping(value = "/edit/{id}")
	public String edit(Model model, @PathVariable("id") int idNoti) {

		Map<String, String> publicados = new LinkedHashMap<String, String>();
		publicados.put("0", "No Públicado");
		publicados.put("1", "Públicado");
		Noticia noticia = new Noticia();
		Optional<Noticia> valor = notiRepo.findById(idNoti);
		model.addAttribute("publi", publicados);
		if (valor.isPresent()) {
			noticia = valor.get();
		}
		model.addAttribute("noticia", noticia);
		return "noticias/edit";
	}
	
	@PostMapping(value = "/update")
	public String update(Model model, Noticia noti) {
		System.out.println(noti);
		Optional<Noticia> valor = notiRepo.findById(noti.getId());
		if (valor.isPresent()) {

			notiRepo.save(noti);
		}

		return "/noticias/index";

	}
	
	@GetMapping(value = "/delete/{id}")
	public String destroy(Model model, @PathVariable("id") int idNoti) {
		Optional<Noticia> valor = notiRepo.findById(idNoti);
		if (valor.isPresent()) {
			notiRepo.deleteById(idNoti);
		}

		return "/noticias/index";
	}

}
