package com.ms.avalon.master.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Test1")
public class Test1Pojo {
	
	@Id
	@Column(name="id")
	private int id;
	@Column(name="EmailId")
	private String email;
	
	@Column(name="Name")
	private String name;
	
	@Column(name="MobileNO")
	private int mob;
	
	
	
	@Column(name="DOB")
	private String dob;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getMob() {
		return mob;
	}

	public void setMob(int mob) {
		this.mob = mob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
	
	
	

}
