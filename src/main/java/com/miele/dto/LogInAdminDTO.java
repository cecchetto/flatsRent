package com.miele.dto;

import java.util.Date;


public class LogInAdminDTO {

    private int id;
    
    private String username;
	
    private String pwd;
	
    private int numInserzioni;
	
    private String lastAccess;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public int getNumInserzioni() {
		return numInserzioni;
	}

	public void setNumInserzioni(int numInserzioni) {
		this.numInserzioni = numInserzioni;
	}

	public String getLastAccess() {
		return lastAccess;
	}

	public void setLastAccess(String lastAccess) {
		this.lastAccess = lastAccess;
	}
}
