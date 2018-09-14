package com.ms.avalon.master.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="empemployer")
public class EmpEmployerPojo 
{
	@Id
	@Column(name="EmployerId")
	private int employerId;
	
	@Column(name="EmpId")
	private int empId;
	
	@Column(name="EmployerName")
	private String employerName;
	
	@Column(name="JoiningDate")
	private String joiningDate;
	
	@Column(name="RelievingDate")
	private String relievingDate;
	
	@Column(name="Designation")
	private String designation;
	
	@Column(name="Role")
	private String role;
	
	@Column(name="ReportingPerson")
	private String reportingPerson;
	
	@Column(name="ReportingContact")
	private String reportingContact;
	
	@Column(name="CTC")
	private double ctc;
	
	@Column(name="MonthlySalary")
	private double monthlySalary;
	
	@Column(name="HRName")
	private String hrName;
	
	@Column(name="HREmail")
	private String hrEmail;
	
	@Column (name="HRMobile")
	private String hrMobile;

	public int getEmployerId() {
		return employerId;
	}

	public void setEmployerId(int employerId) {
		this.employerId = employerId;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getEmployerName() {
		return employerName;
	}

	public void setEmployerName(String employerName) {
		this.employerName = employerName;
	}

	public String getJoiningDate() {
		return joiningDate;
	}

	public void setJoiningDate(String joiningDate) {
		this.joiningDate = joiningDate;
	}

	public String getRelievingDate() {
		return relievingDate;
	}

	public void setRelievingDate(String relievingDate) {
		this.relievingDate = relievingDate;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getReportingPerson() {
		return reportingPerson;
	}

	public void setReportingPerson(String reportingPerson) {
		this.reportingPerson = reportingPerson;
	}

	public String getReportingContact() {
		return reportingContact;
	}

	public void setReportingContact(String reportingContact) {
		this.reportingContact = reportingContact;
	}

	public double getCtc() {
		return ctc;
	}

	public void setCtc(double ctc) {
		this.ctc = ctc;
	}

	public double getMonthlySalary() {
		return monthlySalary;
	}

	public void setMonthlySalary(double monthlySalary) {
		this.monthlySalary = monthlySalary;
	}

	public String getHrName() {
		return hrName;
	}

	public void setHrName(String hrName) {
		this.hrName = hrName;
	}

	public String getHrEmail() {
		return hrEmail;
	}

	public void setHrEmail(String hrEmail) {
		this.hrEmail = hrEmail;
	}

	public String getHrMobile() {
		return hrMobile;
	}

	public void setHrMobile(String hrMobile) {
		this.hrMobile = hrMobile;
	}
	
}
