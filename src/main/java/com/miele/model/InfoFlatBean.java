package com.miele.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="info_flat")
public class InfoFlatBean{

	@Id
    @Column(name="id_flat")
	@GeneratedValue
    private int id;
    
	@Column(name="cat_flat")
    private String categoria;
	
	@Column(name="tip_flat")
    private String tipologia;
	
	@OneToOne(fetch=FetchType.EAGER)
    @JoinColumn(name="id_provincia_flat",insertable=true,
        updatable=true,nullable=false,unique=true)
	private ProvinciaFlatBean provinciaFlatBean;
	
	public ProvinciaFlatBean getProvinciaFlatBean() {
		return this.provinciaFlatBean;
	}

	public void setProvinciaFlatBean(ProvinciaFlatBean provinciaFlatBean) {
		this.provinciaFlatBean = provinciaFlatBean;
	}
	
	@Column(name="prezzo_flat")
    private Double prezzo;
	
	@Transient
    private String prezzoSearch;
	
	@Column(name="superficie_flat")
    private Double superficie;
	
	@Column(name="affitassi_flat")
    private Boolean affittasi;
	
	@Column(name="vendesi_flat")
    private Boolean vendesi;
	
	@Column(name="locali_flat")
    private int locali;
	
	@Column(name="bagni_flat")
    private int bagni;
	
	@Column(name="desc_flat")
	private String descrizione;
	
	@Column(name="boxAuto_flat")
    private Boolean boxAuto;
	
	@Column(name="giardino_flat")
    private Boolean giardino;
	
	@Column(name="balcone_flat")
    private Boolean balcone;
	
	@Column(name="terrazzo_flat")
    private Boolean terrazzo;
	
	@Column(name="ascensore_flat")
    private Boolean ascensore;
	
	@Column(name="dataIns_flat")
    private Date dataInserimento;
	
	@Column(name="dataMod_flat")
    private Date dataModifica;

	@OneToMany(cascade = CascadeType.ALL,mappedBy="infoFlat",fetch = FetchType.EAGER)
	private Set<FotoFlatBean> foto;

	public Set<FotoFlatBean> getFoto() {
		return foto;
	}

	public void setFoto(Set<FotoFlatBean> foto) {
		this.foto = foto;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public String getTipologia() {
		return tipologia;
	}

	public void setTipologia(String tipologia) {
		this.tipologia = tipologia;
	}
	
	
	public Double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(Double prezzo) {
		this.prezzo = prezzo;
	}

	
	public String getPrezzoSearch() {
		return prezzoSearch;
	}

	public void setPrezzoSearch(String prezzoSearch) {
		this.prezzoSearch = prezzoSearch;
	}

	public Double getSuperficie() {
		return superficie;
	}

	public void setSuperficie(Double superficie) {
		this.superficie = superficie;
	}

	public Boolean getAffittasi() {
		return affittasi;
	}

	public void setAffittasi(Boolean affittasi) {
		this.affittasi = affittasi;
	}

	public Boolean getVendesi() {
		return vendesi;
	}

	public void setVendesi(Boolean vendesi) {
		this.vendesi = vendesi;
	}

	public int getLocali() {
		return locali;
	}

	public void setLocali(int locali) {
		this.locali = locali;
	}

	public int getBagni() {
		return bagni;
	}

	public void setBagni(int bagni) {
		this.bagni = bagni;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public Boolean getBoxAuto() {
		return boxAuto;
	}

	public void setBoxAuto(Boolean boxAuto) {
		this.boxAuto = boxAuto;
	}

	public Boolean getGiardino() {
		return giardino;
	}

	public void setGiardino(Boolean giardino) {
		this.giardino = giardino;
	}

	public Boolean getBalcone() {
		return balcone;
	}

	public void setBalcone(Boolean balcone) {
		this.balcone = balcone;
	}

	public Boolean getTerrazzo() {
		return terrazzo;
	}

	public void setTerrazzo(Boolean terrazzo) {
		this.terrazzo = terrazzo;
	}

	public Boolean getAscensore() {
		return ascensore;
	}

	public void setAscensore(Boolean ascensore) {
		this.ascensore = ascensore;
	}

	public Date getDataInserimento() {
		return dataInserimento;
	}

	public void setDataInserimento(Date dataInserimento) {
		this.dataInserimento = dataInserimento;
	}

	public Date getDataModifica() {
		return dataModifica;
	}

	public void setDataModifica(Date dataModifica) {
		this.dataModifica = dataModifica;
	}
	
}
