package com.miele.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="foto_flat")
public class FotoFlatBean {

	@Id
    @Column(name="idfoto_flat")
    @GeneratedValue
    private int id;
    
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "idFlat")
    private InfoFlatBean infoFlat;
	
	@Column(name="foto_path_flat")
    private String pathFoto;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
	public InfoFlatBean getInfoFlat() {
		return infoFlat;
	}

	public void setInfoFlat(InfoFlatBean infoFlat) {
		this.infoFlat = infoFlat;
	}

	public String getPathFoto() {
		return pathFoto;
	}

	public void setPathFoto(String pathFoto) {
		this.pathFoto = pathFoto;
	}
	
	
}
