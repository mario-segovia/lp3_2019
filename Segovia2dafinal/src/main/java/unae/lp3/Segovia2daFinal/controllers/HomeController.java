package unae.lp3.Segovia2daFinal.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	@RequestMapping (value="/", method=RequestMethod.GET)
	private String homeIndex (Model model) {
		
		return "home";
	}

}
