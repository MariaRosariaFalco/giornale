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
	public String getPage(Model model, @RequestParam(name="richiesta", required=false) String richiesta, @RequestParam(name="categoria", required=false)String categoria 
			//, @RequestParam(name="id", required=false) Integer o int id
			) {
		
	List<Articolo> risultati = richiesta==null ? articoloService.getArticoliByCategoria(categoria): articoloService.getArticoloByTagInCategoria(richiesta, categoria);
	//come trasmetto la parola del tag per recuperare id dell'articolo? come passo la categoria? per ora messa come opzionale perché andava in errore
	//model.addAttribute("id", id);
	model.addAttribute(categoria);
    model.addAttribute("risultati", risultati);
		
		
		return "sezione";
	}
}


