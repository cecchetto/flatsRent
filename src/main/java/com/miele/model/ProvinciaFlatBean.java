package com.miele.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnore;

@Entity
@Table(name="provincia_flat")
public class ProvinciaFlatBean{


	@Id
    @Column(name="idprovincia_flat")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idProvinciaFlat;
    
	@Column(name="idcomune_flat")
    private int idComuneFlat;
	
	@Column(name="nomeprovincia_flat")
    private String nomeProvinciaFlat;

	@JsonIgnore
	@OneToOne(cascade = CascadeType.ALL,mappedBy="provinciaFlatBean",fetch = FetchType.EAGER)
	private InfoFlatBean infoFlatBean;
	
	public InfoFlatBean getInfoFlatBean() {
		return infoFlatBean;
	}

	public void setInfoFlatBean(InfoFlatBean infoFlatBean) {
		this.infoFlatBean = infoFlatBean;
	}	

	public int getIdProvinciaFlat() {
		return idProvinciaFlat;
	}

	public void setIdProvinciaFlat(int idProvinciaFlat) {
		this.idProvinciaFlat = idProvinciaFlat;
	}

	public int getIdComuneFlat() {
		return idComuneFlat;
	}

	public void setIdComuneFlat(int idComuneFlat) {
		this.idComuneFlat = idComuneFlat;
	}

	public String getNomeProvinciaFlat() {
		return nomeProvinciaFlat;
	}

	public void setNomeProvinciaFlat(String nomeProvinciaFlat) {
		this.nomeProvinciaFlat = nomeProvinciaFlat;
	}

	
	
	
	
}
