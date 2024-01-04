package it.corso.Dao;

import org.springframework.data.repository.CrudRepository;

import it.corso.model.Articolo;
import java.util.List;
import Categoria;


public interface ArticoloDao extends CrudRepository<Articolo, Integer> {
	
}
