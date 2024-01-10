package it.corso.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.corso.model.Articolo;
import it.corso.service.ArticoloService;




//localhost:8080/sezione
@Controller
@RequestMapping("/sezione")
public class SezioneController {
	
	 @Autowired
	 private ArticoloService articoloService;
	
	@GetMapping
	public String getPage(Model model, @RequestParam(name="richiesta", required=false) String richiesta, @RequestParam(name="categoria", required=false)String categoria) {
		
	List<Articolo> risultati = richiesta==null ? articoloService.getArticoliByCategoria(categoria): articoloService.getArticoloByTagInCategoria(richiesta, categoria);

	model.addAttribute("categoria", categoria);
    model.addAttribute("risultati", risultati);
		
		
		return "sezione";
	}
}


