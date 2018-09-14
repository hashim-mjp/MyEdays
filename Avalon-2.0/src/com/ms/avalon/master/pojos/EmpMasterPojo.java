package com.ms.avalon.master.pojos;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="empmaster")

public class EmpMasterPojo {
	@Id
	@Column(name="EmpId")
	private String empId;
	@Column(name="OfficeId")
	private int officeId ;
	@Column(name="DepartmentId")
	private int departmentId;
	@Column(name="ManagerId")
	private String managerId;
	@Column(name="FName")
	private String fName;
	@Column(name="LName")
	private String lName;
	@Column(name="DOB")
	private Date dOB;
	@Column(name="DOJ")
	private Date dOJ;
	@Column(name="Mobile")
	private String mobile;
	@Column(name="AltMobile")
	private String altMobile;
	@Column(name="EmergencyMobile")
	private String emergencyMobile;
	@Column(name="Email")
	private String email;
	@Column(name="AltMail")
	private String altMail;
	@Column(name="Designation")
	private String designation;
	@Column(name="Roll")
	private String roll;
	
	@Column(name="Gender")
	private String gender;
	@Column(name="Status")
	private String status;
	@Column(name="UID")
	private String uID;
	@Column(name="PanNo")
	private String panNo;
	@Column(name="PassportNo")
	private String passportNo;
	@Column(name="Address")
	private String address;
	@Column(name="State")
	private String state;
	@Column(name="Country")
	private String country;
	@Column(name="Pin")
	private String pin;
	@Column(name="Pic")
	private String pic;
	@Column(name="Signature")
	private String signature;
	@Column(name="CreatedBy")
	private String createdBy;
	@Column(name="CreatedDate")
	private String createdDate ;
	@Column(name="UpdatedBy")
	private String updatedBy;
	@Column(name="UpdatedDate")
	private Date updatedDate;
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public int getOfficeId() {
		return officeId;
	}
	public void setOfficeId(int officeId) {
		this.officeId = officeId;
	}
	public int getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
	public String getManagerId() {
		return managerId;
	}
	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public Date getdOB() {
		return dOB;
	}
	public void setdOB(Date dOB) {
		this.dOB = dOB;
	}
	public Date getdOJ() {
		return dOJ;
	}
	public void setdOJ(Date dOJ) {
		this.dOJ = dOJ;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAltMobile() {
		return altMobile;
	}
	public void setAltMobile(String altMobile) {
		this.altMobile = altMobile;
	}
	public String getEmergencyMobile() {
		return emergencyMobile;
	}
	public void setEmergencyMobile(String emergencyMobile) {
		this.emergencyMobile = emergencyMobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAltMail() {
		return altMail;
	}
	public void setAltMail(String altMail) {
		this.altMail = altMail;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getRoll() {
		return roll;
	}
	public void setRoll(String roll) {
		this.roll = roll;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getuID() {
		return uID;
	}
	public void setuID(String uID) {
		this.uID = uID;
	}
	public String getPanNo() {
		return panNo;
	}
	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}
	public String getPassportNo() {
		return passportNo;
	}
	public void setPassportNo(String passportNo) {
		this.passportNo = passportNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getSignature() {
		return signature;
	}
	public void setSignature(String signature) {
		this.signature = signature;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public String getUpdatedBy() {
		return updatedBy;
	}
	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}
	public Date getUpdatedDate() {
		return updatedDate;
	}
	public void setUpdatedDate(Date updatedDate) {
		this.updatedDate = updatedDate;
	}
	
	
	
	
	
	
}
