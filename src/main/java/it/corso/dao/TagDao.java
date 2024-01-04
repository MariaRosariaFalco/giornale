package it.corso.dao;

import org.springframework.data.repository.CrudRepository;

import it.corso.model.Tag;

public interface TagDao extends CrudRepository<Tag, Integer> {

}
