package it.corso.model;

import java.time.LocalDate;
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
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="articoli")
public class Articolo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="titolo")
	private String titolo;
	
	@Column(name="sottotitolo")
	private String sottotitolo;
	
	@Column(name="autore")
	private String autore;
	
	@Column(name="data_pubblicazione")
	private LocalDate dataPubblicazione;
	
	@Column(name="testo")
	private String testo;
	
	@Column(name="immagine")
	private String immagine;
	
	@ManyToOne
	@JoinColumn(name="fk_id_categoria", referencedColumnName = "id")
	private Categoria categoria;
	
	@ManyToOne
	@JoinColumn(name="fk_id_sottocategoria", referencedColumnName = "id")
	private Sottocategoria sottocategoria;
	
	@Column(name="stato")
	private String stato;
	
	@ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	@JoinTable(name = "articoli_tag", joinColumns = @JoinColumn(name="id_articolo", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name= "id_tag", referencedColumnName = "id"))
	private List<Tag> tags = new ArrayList<>();
	
	
	

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}

	public String getSottotitolo() {
		return sottotitolo;
	}

	public void setSottotitolo(String sottotitolo) {
		this.sottotitolo = sottotitolo;
	}

	public String getAutore() {
		return autore;
	}

	public void setAutore(String autore) {
		this.autore = autore;
	}

	public LocalDate getDataPubblicazione() {
		return dataPubblicazione;
	}

	public void setDataPubblicazione(LocalDate dataPubblicazione) {
		this.dataPubblicazione = dataPubblicazione;
	}

	public String getTesto() {
		return testo;
	}

	public void setTesto(String testo) {
		this.testo = testo;
	}

	public String getImmagine() {
		return immagine;
	}

	public void setImmagine(String immagine) {
		this.immagine = immagine;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	
	public Sottocategoria getSottocategoria() {
		return sottocategoria;
	}

	public void setSottocategoria(Sottocategoria sottocategoria) {
		this.sottocategoria = sottocategoria;
	}

	public List<Tag> getTags() {
		return tags;
	}

	public void setTags(List<Tag> tags) {
		this.tags = tags;
	}
	
	public String getStato() {
		return stato;
	}

	public void setStato(String stato) {
		this.stato = stato;
	}
}
