package com.ms.avalon.master.pojos;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
@Entity
@Table(name="colortable")
public class ColorTablePojo {
	
	@GeneratedValue
	@Column(name="ColorId")
	private int colorId;
	@Id
	@Column(name="LeaveType")
	private String leaveType;
	@Column(name="ColorCode")
	private String colorCode;
	
	
	public int getColorId() {
		return colorId;
	}
	public void setColorId(int colorId) {
		this.colorId = colorId;
	}
	public String getLeaveType() {
		return leaveType;
	}
	public void setLeaveType(String leaveType) {
		this.leaveType = leaveType;
	}
	public String getColorCode() {
		return colorCode;
	}
	public void setColorCode(String colorCode) {
		this.colorCode = colorCode;
	}
}
