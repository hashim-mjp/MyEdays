package com.ms.avalon.master.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="leavedetails")
public class LeaveDetailsPojo {
	@Id
	@Column(name="DetailID")
	private int leaveDetailId;
	
	@Column(name="EmpID")
	private String empId;
	
	

	@Column(name="LeaveType")
	private String leaveType;
	
	@Column(name="LeaveCause")
	private String leaveCause;
	
	@Column(name="FromDate")
	private String fromDate;
	
	@Column(name="EndDate")
	private String endDate;
	
	@Column(name="HSOD")
	private String halfDayFrom;
	
	@Column(name="HEOD")
	private String halfDayEnd;
	
	@Column(name="NOD")
	private float noOfDays;
	
	
	@Column(name="Status")
	private String status;
	
	@Column(name="ApprovedBy")
	private String approvedBy;
	
	@Column(name="ApprovedDate")
	private String approvedDate;
	
	
	
	@Column(name="CreatedDate")
	private String createdDate;
	
	@OneToOne
	@JoinColumn(name="leaveType")
	private LeaveTypePojo p;
	
	@OneToOne
	@JoinColumn(name="EmpId")
	private EmpMasterPojo empojo;
	
	
	
	public EmpMasterPojo getEmpojo() {
		return empojo;
	}
	public void setEmpojo(EmpMasterPojo empojo) {
		this.empojo = empojo;
	}
	public LeaveTypePojo getP() {
		return p;
	}
	public void setP(LeaveTypePojo p) {
		this.p = p;
	}
	public int getLeaveDetailId() {
		return leaveDetailId;
	}
	public void setLeaveDetailId(int leaveDetailId) {
		this.leaveDetailId = leaveDetailId;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getLeaveType() {
		return leaveType;
	}
	public void setLeaveType(String leaveType) {
		this.leaveType = leaveType;
	}
	public String getLeaveCause() {
		return leaveCause;
	}
	public void setLeaveCause(String leaveCause) {
		this.leaveCause = leaveCause;
	}
	public String getFromDate() {
		return fromDate;
	}
	public void setFromDate(String fromDate) {
		this.fromDate = fromDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		endDate = endDate;
	}
			
	public String getHalfDayFrom() {
		return halfDayFrom;
	}
	public void setHalfDayFrom(String halfDayFrom) {
		this.halfDayFrom = halfDayFrom;
	}
	public String getHalfDayEnd() {
		return halfDayEnd;
	}
	public void setHalfDayEnd(String halfDayEnd) {
		halfDayEnd = halfDayEnd;
	}
	public float getNoOfDays() {
		return noOfDays;
	}
	public void setNoOfDays(float noOfDays) {
		noOfDays = noOfDays;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getApprovedBy() {
		return approvedBy;
	}
	public void setApprovedBy(String approvedBy) {
		this.approvedBy = approvedBy;
	}
	public String getApprovedDate() {
		return approvedDate;
	}
	public void setApprovedDate(String approvedDate) {
		this.approvedDate = approvedDate;
	}
	
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	
	

}
