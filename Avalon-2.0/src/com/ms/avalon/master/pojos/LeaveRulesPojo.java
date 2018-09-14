package com.ms.avalon.master.pojos;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="leaverules")
public class LeaveRulesPojo {
	
	@Id
	@Column(name="LeaveRuleId")
	private int leaveRuleId;
	
	@Column(name="TotalLeaves")
	private int totalLeave;
	
	@Column(name="IsHalfDayAllow")
	private int isHalfDayAllow;
	
	@Column(name="AutoHalfDay")
	private int autoHalfDay;
	
	@Column(name="HalfDayNoOfHours")
	private Date halfDayNoOfHours;
	
	@Column(name="LeaveCarryForward")
	private int leaveCarryForward;
	@Column(name="MaxNODCarryForward")
	private int maxNODCarryForward;
	
	@Column(name="NoOfAdvanceLeave")
	private int noOfAdvanceLeave;
	
	
	
	public int getLeaveCarryForward() {
		return leaveCarryForward;
	}
	public void setLeaveCarryForward(int leaveCarryForward) {
		this.leaveCarryForward = leaveCarryForward;
	}
	public int getLeaveRuleId() {
		return leaveRuleId;
	}
	public void setLeaveRuleId(int leaveRuleId) {
		this.leaveRuleId = leaveRuleId;
	}
	public int getTotalLeave() {
		return totalLeave;
	}
	public void setTotalLeave(int totalLeave) {
		this.totalLeave = totalLeave;
	}
	public int getIsHalfDayAllow() {
		return isHalfDayAllow;
	}
	public void setIsHalfDayAllow(int isHalfDayAllow) {
		this.isHalfDayAllow = isHalfDayAllow;
	}
	public int getAutoHalfDay() {
		return autoHalfDay;
	}
	public void setAutoHalfDay(int autoHalfDay) {
		this.autoHalfDay = autoHalfDay;
	}
	public Date getHalfDayNoOfHours() {
		return halfDayNoOfHours;
	}
	public void setHalfDayNoOfHours(Date halfDayNoOfHours) {
		this.halfDayNoOfHours = halfDayNoOfHours;
	}
	public int getMaxNODCarryForward() {
		return maxNODCarryForward;
	}
	public void setMaxNODCarryForward(int maxNODCarryForward) {
		this.maxNODCarryForward = maxNODCarryForward;
	}
	public int getNoOfAdvanceLeave() {
		return noOfAdvanceLeave;
	}
	public void setNoOfAdvanceLeave(int noOfAdvanceLeave) {
		this.noOfAdvanceLeave = noOfAdvanceLeave;
	}
	
}


