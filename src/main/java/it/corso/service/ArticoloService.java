package it.corso.service;

import java.util.List;

import it.corso.model.Articolo;

public interface ArticoloService {
	Articolo getArticoloById(int id);
	List<Articolo> getArticoli();

}
