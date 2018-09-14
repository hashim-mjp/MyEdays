package com.ms.avalon.master.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="emphierarchy")
public class EmpHierarchyPojo {
	@Id
	@GeneratedValue
	@Column(name="HierarchyId")
	private int hierarchyId;
	@Column(name="EmpId")
	private String empId;
	@Column(name="ReportingTo")
	private String reportingTo;
	@Column(name="ManagerId")
	private String managerId;
	
	
	@OneToOne
	@JoinColumn(name="EmpID")
	private EmpMasterPojo p;
	
	
	public EmpMasterPojo getP() {
		return p;
	}
	public void setP(EmpMasterPojo p) {
		this.p = p;
	}
	public int getHierarchyId() {
		return hierarchyId;
	}
	public void setHierarchyId(int hierarchyId) {
		this.hierarchyId = hierarchyId;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getReportingTo() {
		return reportingTo;
	}
	public void setReportingTo(String reportingTo) {
		this.reportingTo = reportingTo;
	}
	public String getManagerId() {
		return managerId;
	}
	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}
	

}
