package it.corso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.corso.dao.TagDao;

import it.corso.model.Tag;

@Service
public class TagServiceImpl implements TagService {
	
	@Autowired
	private TagDao tagDao;
	
	@Override
	public void registraTag(Tag tag) {
		tagDao.save(tag);		
	}
	

	@Override
	public Tag getTagById(int id) {
		return tagDao.findById(id).get();
	}

	@Override
	public List<Tag> getTags() {
		return (List<Tag>) tagDao.findAll();
	}

	@Override
	public void cancellaTag(Tag tag) {
		tagDao.delete(tag);

	}


}
