package com.miele.dao;

import java.util.List;

import com.miele.model.ProvinciaFlatBean;


public interface ProvinciaFlatDao {
	
	public List<ProvinciaFlatBean> getProvinceByComune(int idComune);
	
	public ProvinciaFlatBean findProvinciaFlatById(Integer pk);
	
	public ProvinciaFlatBean findProvinciaFlatByNome(String nome);
	
	public List<ProvinciaFlatBean> findProvinciaFlatByProvinciaId(int provincia);
}
