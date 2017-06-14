package com.miele.dto;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.miele.model.FotoFlatBean;
import com.miele.model.ProvinciaFlatBean;

public class InfoFlatDTO {

    private int id;
    
    private String categoria;
	
    private String tipologia;
	
    private int provincia;
    
    private String comune;

    private Double prezzo;

    private Double superficie;

    private Boolean affittasi;
	
    private Boolean vendesi;
    
    private int locali;
    
    private int bagni;
    
    private Boolean boxAuto;
	
    private Boolean giardino;
    
    private Boolean balcone;
    
    private Boolean terrazzo;
	
    private Boolean ascensore;
    
    private String descrizione;
    
    private List<ProvinciaFlatBean> listaComuni;
	
   /* private Date dataInserimento;
	
    private Date dataModifica;*/

	private Set<FotoFlatBean> foto = new HashSet<FotoFlatBean>();

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

	public String getComune() {
		return comune;
	}

	public void setComune(String comune) {
		this.comune = comune;
	}

	public int getProvincia() {
		return provincia;
	}

	public void setProvincia(int provincia) {
		this.provincia = provincia;
	}


	public Double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(Double prezzo) {
		this.prezzo = prezzo;
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
	
	

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	/*	public Date getDataInserimento() {
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
*/
	public Set<FotoFlatBean> getFoto() {
		return foto;
	}

	public void setFoto(Set<FotoFlatBean> foto) {
		this.foto = foto;
	}

	public List<ProvinciaFlatBean> getListaComuni() {
		return listaComuni;
	}

	public void setListaComuni(List<ProvinciaFlatBean> listaComuni) {
		this.listaComuni = listaComuni;
	}	
}
