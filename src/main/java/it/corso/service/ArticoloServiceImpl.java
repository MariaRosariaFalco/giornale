package it.corso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.corso.Dao.ArticoloDao;
import it.corso.model.Articolo;

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

}
