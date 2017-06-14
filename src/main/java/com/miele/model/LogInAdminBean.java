package com.miele.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="loginadmin")
public class LogInAdminBean {

	@Id
    @Column(name="id")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    
	@Column(name="username")
    private String username;
	
	@Column(name="pwd")
    private String pwd;
	
	@Column(name="num_inserzioni")
    private int numInserzioni;

	@Column(name="lastAccess")
    private Date lastAccess;

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

	public Date getLastAccess() {
		return lastAccess;
	}

	public void setLastAccess(Date lastAccess) {
		this.lastAccess = lastAccess;
	}	
}
