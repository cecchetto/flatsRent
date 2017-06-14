package com.miele.dao.impl;

import java.util.LinkedList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.miele.dao.ProvinciaFlatDao;
import com.miele.model.InfoFlatBean;
import com.miele.model.ProvinciaFlatBean;
/**
	   
	    private int idProvinciaFlat;
	    private int idComuneFlat;
		private String nomeProvinciaFlat;
	
 */
public class ProvinciaFlatDaoImpl implements ProvinciaFlatDao{

	@PersistenceContext
	private EntityManager em;
	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<ProvinciaFlatBean> getProvinceByComune(int idComune) {
		
		//Session session = this.sessionFactory.openSession();
		String qlString = "SELECT provinciaFlat FROM ProvinciaFlatBean provinciaFlat WHERE  provinciaFlat.idComuneFlat = ?1";
		TypedQuery <ProvinciaFlatBean> query = em.createQuery(qlString, ProvinciaFlatBean.class);
		query.setParameter(1, idComune);
		
		List<ProvinciaFlatBean> province = new LinkedList<ProvinciaFlatBean>();
		for(Object oggetto : query.getResultList())
		{
			ProvinciaFlatBean provincia = (ProvinciaFlatBean)oggetto;
			province.add(provincia);
		}
		return province;
		/*Session session = this.sessionFactory.openSession();
        Query query = session.createQuery("from ProvinciaFlatBean provinciaFlat where provinciaFlat.idComuneFlat=:idComune" );
        query.setParameter("idComune", idComune);
		List<ProvinciaFlatBean> province = new LinkedList<ProvinciaFlatBean>();
		for(Object oggetto : query.list())
		{
			ProvinciaFlatBean provincia = (ProvinciaFlatBean)oggetto;
			province.add(provincia);
		}
		session.close();
        return province; */
	}

	public ProvinciaFlatBean findProvinciaFlatById(Integer pk) {
		Session session = this.sessionFactory.openSession();
        Query query = session.createQuery("from ProvinciaFlatBean provinciaFlat where provinciaFlat.idProvinciaFlat=:pk" );
        query.setParameter("pk", pk);
        ProvinciaFlatBean provinciaFlat = (ProvinciaFlatBean)query.list().get(0); 
        session.close();
        return provinciaFlat;
	}

	public ProvinciaFlatBean findProvinciaFlatByNome(String nome) {
		Session session = this.sessionFactory.openSession();
        Query query = session.createQuery("from ProvinciaFlatBean provinciaFlat where provinciaFlat.nomeProvinciaFlat=:nome" );
        query.setParameter("nome", nome);
        ProvinciaFlatBean provinciaFlat = (ProvinciaFlatBean)query.list().get(0); 
        session.close();
        return provinciaFlat;
	}

	public List<ProvinciaFlatBean> findProvinciaFlatByProvinciaId(int pkProvincia) {
		Session session = this.sessionFactory.openSession();
        Query query = session.createQuery("from ProvinciaFlatBean provinciaFlat where provinciaFlat.idComuneFlat=:pkProvincia" );
        query.setParameter("pkProvincia", pkProvincia);
        @SuppressWarnings("unchecked")
		List<ProvinciaFlatBean> provinceFlat = (List<ProvinciaFlatBean>)query.list(); 
        session.close();
        return provinceFlat;
	}

}
