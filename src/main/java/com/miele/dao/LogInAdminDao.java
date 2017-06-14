package com.miele.dao;

import java.util.List;

import com.miele.dto.LogInAdminDTO;
import com.miele.model.LogInAdminBean;


public interface LogInAdminDao {

	public LogInAdminDTO findByUsernameAndPwd(String username,String pwd);
	
	public void save(LogInAdminBean p);
    
    public List<LogInAdminBean> list();
}
