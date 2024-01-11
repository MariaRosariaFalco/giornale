package it.corso.dao;


import java.util.List;

import org.springframework.data.repository.CrudRepository;

import it.corso.model.Articolo;


public interface ArticoloDao extends CrudRepository<Articolo, Integer> {
	public List<Articolo> findByCategoriaCodice(String codice);
	
}
