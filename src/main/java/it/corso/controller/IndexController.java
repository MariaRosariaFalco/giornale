package it.corso.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.corso.model.Articolo;
import it.corso.service.ArticoloService;



//localhost:8080
@Controller
@RequestMapping("/")
public class IndexController {
	
	
	@Autowired
    private ArticoloService articoloService;
	
	@GetMapping
	public String getPage(Model model, LocalDate dataPubblicazione) {
		
		List<Articolo> listaArticoli = articoloService.findLatestArticle(dataPubblicazione);
        model.addAttribute("listaArticoli", listaArticoli);
        
        List<Articolo> listaEvidenza = articoloService.getArticoli();
        model.addAttribute("listaEvidenza", listaEvidenza);

		return "index";
	}
}
