package it.corso.service;


import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.corso.dao.ArticoloDao;
import it.corso.model.Articolo;
import it.corso.model.Tag;

@Service
public class ArticoloServiceImpl implements ArticoloService {

	@Autowired
	private ArticoloDao articoloDao;
	
	@Override
	public Articolo getArticoloById(int id) {
		return articoloDao.findById(id).get();
	}

	@Override
	public List<Articolo> getArticoli() {
		return (List<Articolo>) articoloDao.findAll();
	}

	@Override
	public List<Articolo> getArticoliByCategoria(String codice) {
		return articoloDao.findByCategoriaCodice(codice);
	}
	
	

	@Override
	public List<Articolo> getArticoliByTag(String parola) {
		List<Articolo> articoli = (List<Articolo>) articoloDao.findAll();
		List<Articolo> articoliFiltrati = new ArrayList<>();
		
		for (Articolo a : articoli ) {
			for (Tag t : a.getTags() ) {
				if (t.getParola().equalsIgnoreCase(parola)) {
					articoliFiltrati.add(a);
				}
			}
			
		}
		
		return articoliFiltrati;
	}

	@Override
	public List<Articolo> getArticoloByTagInCategoria(String parola, String codice) {
		List<Articolo> articoli = (List<Articolo>) articoloDao.findByCategoriaCodice(codice);
		List<Articolo> articoliFiltrati = new ArrayList<>();
		
		for (Articolo a : articoli ) {
			for (Tag t : a.getTags() ) {
				if (t.getParola().equalsIgnoreCase(parola)) {
					articoliFiltrati.add(a);
				}
			}
			
		}
		
		return articoliFiltrati;
	}

	@Override
	public List<Articolo> findLatestArticle(LocalDateTime dataPubblicazione) {
		 List<Articolo> articoli = (List<Articolo>) articoloDao.findAll();
		 Comparator<Articolo> comparator = Comparator.comparing(Articolo::getDataPubblicazione).reversed();
		 articoli.sort(comparator);
		 articoli=articoli.stream().filter(a->a.getStato().equals("pubblicato")).collect(Collectors.toList());
	        return articoli;
		
	}

}
