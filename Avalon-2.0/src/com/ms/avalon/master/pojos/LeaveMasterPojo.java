package com.ms.avalon.master.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="leavemaster")
public class LeaveMasterPojo {
	@Id
	@GeneratedValue
	@Column(name="LeaveId")
	private int leaveId;
	
	@Column(name="EmpId")
	private String empId ;
	
	@Column(name="BalanceLeave")
	private float balanceLeave;
	
	@Column(name="AdvanceLeave")
	private float advanceLeave;
	
	@Column(name="TotalLeave")
	private float totalLeave ;
	
	
	
	public int getLeaveId() {
		return leaveId;
	}
	public void setLeaveId(int leaveId) {
		this.leaveId = leaveId;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public float getBalanceLeave() {
		return balanceLeave;
	}
	public void setBalanceLeave(float balanceLeave) {
		this.balanceLeave = balanceLeave;
	}
	public float getAdvanceLeave() {
		return advanceLeave;
	}
	public void setAdvanceLeave(float advanceLeave) {
		this.advanceLeave = advanceLeave;
	}
	public float getTotalLeave() {
		return totalLeave;
	}
	public void setTotalLeave(float totalLeave) {
		this.totalLeave = totalLeave;
	}
	
}
