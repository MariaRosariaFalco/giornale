package it.corso.Dao;

import org.springframework.data.repository.CrudRepository;

import it.corso.model.Articolo;




public interface ArticoloDao extends CrudRepository<Articolo, Integer> {
	
}
