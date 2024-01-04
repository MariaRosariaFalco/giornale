package it.corso.model;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="tag")
public class Tag {

	@Id
	@GeneratedValue (strategy= GenerationType.IDENTITY)
	private int id;
	
	@Column(name="parola")
	private String parola;
	
	@ManyToMany(cascade= CascadeType.REFRESH, fetch= FetchType.EAGER)
	@JoinTable(name="articoli_tag", joinColumns=@JoinColumn(name= "id_articolo", referencedColumnName="id"), inverseJoinColumns=@JoinColumn(name="id_tag", referencedColumnName="id"))
	private List<Articolo> articoli= new ArrayList<>();

	public List<Articolo> getArticoli() {
		return articoli;
	}

	public void setArticoli(List<Articolo> articoli) {
		this.articoli = articoli;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getParola() {
		return parola;
	}

	public void setParola(String parola) {
		this.parola = parola;
	}
	
	
}
