package it.corso.service;

import java.time.LocalDateTime;
import java.util.List;

import it.corso.model.Articolo;

public interface ArticoloService {
	
	Articolo getArticoloById(int id);
	List<Articolo> getArticoli();
	List<Articolo> getArticoliByCategoria(String codice);
	List<Articolo> getArticoliByTag(String parola);
	List<Articolo> getArticoloByTagInCategoria(String parola, String Codice);
	List<Articolo> findLatestArticle(LocalDateTime dataPubblicazione);

}
