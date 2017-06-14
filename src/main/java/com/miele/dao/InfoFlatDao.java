package com.miele.dao;

import java.util.List;
import java.util.Map;

import com.miele.model.InfoFlatBean;


public interface InfoFlatDao {
	
	public int save(InfoFlatBean flat);
	
	public void update(InfoFlatBean flat);
	
	public List<InfoFlatBean> getAllAds();
	
	public List<InfoFlatBean> getLastThreeAds();
	
	public List<InfoFlatBean> search(Map<String,Object>parValue);
	
	public List<InfoFlatBean> searchReferingFlats(Map<String,Object>parValue);
	
	public InfoFlatBean findInfoFlatById(Integer pk);
}
