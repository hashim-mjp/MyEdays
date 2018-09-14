package com.ms.avalon.master.pojos;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="logintable")
public class LoginTablePojo {
	@Id
	@Column(name="UserName")
	private String userName;
	
	@Column(name="EmpId")
	private String empId;
	
	@Column(name="Password")
	private String password;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="EmpId", insertable=false, updatable=false)
	private EmpMasterPojo emp;
	
	public EmpMasterPojo getEmp() {
		return emp;
	}

	public void setEmp(EmpMasterPojo emp) {
		this.emp = emp;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmpId() {
		return empId;
	}

	public void setEmpId(String empId) {
		this.empId = empId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	

}
