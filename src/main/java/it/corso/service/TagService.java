package it.corso.service;

import java.util.List;

import it.corso.model.Tag;



public interface TagService {

	void registraTag(Tag tag); //eventualmente alcuni superflui
	
	Tag getTagById(int id);
	
	List<Tag> getTags();
	
	void cancellaTag(Tag tag);
}
