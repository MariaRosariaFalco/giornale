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



//localhost:8080/dettaglio
@Controller
@RequestMapping("/dettaglio")
public class DettaglioController {
	
	
	@Autowired
    private ArticoloService articoloService;
	
	@GetMapping
    public String getPage(Model model, @RequestParam("id") int id) {
        
	   List<Articolo> listaArticoli = articoloService.getArticoli();
	        model.addAttribute("id", id);
	        model.addAttribute("listaArticoli", listaArticoli);
	        
	        return "dettaglio";
	    }
      }
	
		