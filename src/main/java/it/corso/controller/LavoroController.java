package it.corso.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


//localhost:8080/lavoro
@Controller
@RequestMapping("/lavoro")
public class LavoroController {
	
	@GetMapping
	public String getPage(Model model) {
		
		
		return "lavoro";
	}

}
