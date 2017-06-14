package com.miele.dao.impl;

import java.text.SimpleDateFormat;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.miele.dao.LogInAdminDao;
import com.miele.dto.LogInAdminDTO;
import com.miele.model.LogInAdminBean;

@Transactional
@Repository(value="logInAdminDao")
public class LogInAdminDaoImpl implements LogInAdminDao{

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public LogInAdminDTO findByUsernameAndPwd(String username,String pwd) {
		LogInAdminDTO logInDTO = null;
		Session session = this.sessionFactory.openSession();
        Query query = session.createQuery("from LogInAdminBean where username=:username and pwd=:pwd");
        query.setParameter("username", username);
        query.setParameter("pwd", pwd);
        @SuppressWarnings("unchecked")
		List<LogInAdminBean> list = query.list();
        
        if(list.size() > 0)
        {
        	LogInAdminBean logInBean = list.get(0);
        	logInDTO = wrapperBeanIntoDTO(logInBean);
        }
       
        session.close();
        return logInDTO;

	}
	
	public void save(LogInAdminBean p) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.persist(p);
		tx.commit();
		session.close();

	}

	@SuppressWarnings("unchecked")
	public List<LogInAdminBean> list() {
		Session session = this.sessionFactory.openSession();
        List<LogInAdminBean> personList = session.createQuery("from LogInAdminBean").list();
        session.close();
        return personList;
	}
	
	private LogInAdminDTO wrapperBeanIntoDTO(LogInAdminBean logInBean)
	{
		LogInAdminDTO logInDTO = new LogInAdminDTO();
		SimpleDateFormat sdf = new SimpleDateFormat(); // creo l'oggetto
		sdf = new SimpleDateFormat("dd/MM/yyyy"); // data corrente (20 febbraio 2014)
		
		logInDTO.setId(logInBean.getId());
		logInDTO.setUsername(logInBean.getUsername());
		logInDTO.setPwd(logInBean.getPwd());
		logInDTO.setNumInserzioni(logInBean.getNumInserzioni());
		logInDTO.setLastAccess(sdf.format(logInBean.getLastAccess()));
		
		return logInDTO;
		
	}


}
