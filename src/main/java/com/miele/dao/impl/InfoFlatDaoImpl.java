package com.miele.dao.impl;

import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.transaction.annotation.Transactional;

import com.miele.dao.InfoFlatDao;
import com.miele.model.InfoFlatBean;
import com.miele.model.ProvinciaFlatBean;
/**
	    private String categoria;
	    private String tipologia;
	    private int idComune;
	    private Double prezzo;
	    private Double superficie;
	    private Boolean affittasi;
	    private Boolean vendesi;
	    private int locali;
	    private int bagni;
		private String descrizione;
	    private Boolean boxAuto;
	    private Boolean giardino;
	    private Boolean balcone;
	    private Boolean terrazzo;
	    private Boolean ascensore;
	    private Date dataInserimento;
	    private Date dataModifica;
 */
@Transactional
public class InfoFlatDaoImpl implements InfoFlatDao{
	
	
	@PersistenceContext
	private EntityManager em;
	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public int save(InfoFlatBean flat) {
		em.persist(flat);
		em.flush();
		return flat.getId();
	}

	public void update(InfoFlatBean flat) {
		em.merge(flat);
		em.flush();
	}
	
	public List<InfoFlatBean> search(Map<String,Object> parValue) {
		Session session = this.sessionFactory.openSession();
		
		String builderStr = "from InfoFlatBean infoFlat where " ;
		for(String par : parValue.keySet())
		{
			if(par.equals("provinciaFlatBean"))
			{
				ProvinciaFlatBean provinciaFlatBean = (ProvinciaFlatBean)parValue.get("provinciaFlatBean");
				par = "infoFlat.provinciaFlatBean.idProvinciaFlat";
				builderStr = builderStr + par +"="+ provinciaFlatBean.getIdProvinciaFlat() +" and ";
			}
			else if(par.equals("prezzo"))
			{
				String[] prezziRange = (String[])parValue.get("prezzo").toString().split(",");
				builderStr = builderStr +" ("+ par +">="+  Double.parseDouble(prezziRange[0]) +" and "+ par +"<="+  Double.parseDouble(prezziRange[1]) +") and ";	
			}
			else if(par.equals("superficie"))
			{
				String superficieStr = parValue.get("superficie").toString();
				builderStr = builderStr +  par +"<="+  Double.parseDouble(superficieStr) +" and ";
			}
			else
				builderStr = builderStr + par +"=:"+ par +" and ";
		}
		parValue.remove("prezzo");
		parValue.remove("superficie");
		parValue.remove("provinciaFlatBean");
		
		builderStr = builderStr.substring(0,builderStr.length()-5);
		builderStr  = builderStr + " order by infoFlat.dataModifica";
		String queryStr = builderStr.toString();
		Query query = session.createQuery(queryStr);
		for(String par : parValue.keySet())
			query.setParameter(par, parValue.get(par));
		
		@SuppressWarnings("unchecked")
		List<InfoFlatBean> list = query.list();
		session.close();
		return list;
	}
	
	public List<InfoFlatBean> searchReferingFlats(Map<String,Object> parValue) {
		Session session = this.sessionFactory.openSession();
		
		String builderStr = "from InfoFlatBean infoFlat where " ;
		for(String par : parValue.keySet())
		{
			if(par.equals("provinciaFlatBean"))
			{
				ProvinciaFlatBean provinciaFlatBean = (ProvinciaFlatBean)parValue.get("provinciaFlatBean");
				par = "infoFlat.provinciaFlatBean.idProvinciaFlat";
				builderStr = builderStr + par +"="+ provinciaFlatBean.getIdProvinciaFlat() +" and ";
			}
			else if(par.equals("prezzo"))
			{
				String[] prezziRange = (String[])parValue.get("prezzo").toString().split(",");
				Double prezzoDa = Double.parseDouble(prezziRange[0]);
				prezzoDa = prezzoDa.doubleValue()-200;
				Double prezzoA = Double.parseDouble(prezziRange[1]);
				prezzoA = prezzoA.doubleValue()+500;
				builderStr = builderStr +" ("+ par +">="+  prezzoDa +" and "+ par +"<="+  prezzoA +") and ";	
			}
			else
				builderStr = builderStr + par +"=:"+ par +" and ";
		}
		parValue.remove("prezzo");
		parValue.remove("provinciaFlatBean");
		
		builderStr = builderStr.substring(0,builderStr.length()-5);
		builderStr  = builderStr + " order by infoFlat.dataModifica";
		String queryStr = builderStr.toString();
		Query query = session.createQuery(queryStr);
		for(String par : parValue.keySet())
			query.setParameter(par, parValue.get(par));
		
		@SuppressWarnings("unchecked")
		List<InfoFlatBean> list = query.list();
		session.close();
		return list;
	}
	
	public List<InfoFlatBean> getAllAds() {
		Session session = this.sessionFactory.openSession();
        Query query = session.createQuery("from InfoFlatBean infoFlat order by infoFlat.dataModifica desc" );
        List<InfoFlatBean> list = query.list();
        session.close();
        return list; 
	}
	
	@SuppressWarnings("unchecked")
	public List<InfoFlatBean> getLastThreeAds() {
		Session session = this.sessionFactory.openSession();
        Query query = session.createQuery("from InfoFlatBean infoFlat order by infoFlat.dataModifica desc" );
        query.setMaxResults(3);
        List<InfoFlatBean> list = query.list();
        session.close();
        return list; 
	}
	
	public InfoFlatBean findInfoFlatById(Integer pk) {
		Session session = this.sessionFactory.openSession();
        Query query = session.createQuery("from InfoFlatBean infoFlat where infoFlat.id=:pk order by infoFlat.dataModifica desc" );
        query.setParameter("pk", pk);
        InfoFlatBean infoFlat = (InfoFlatBean)query.list().get(0); 
        session.close();
        return infoFlat;
	}
	


}
