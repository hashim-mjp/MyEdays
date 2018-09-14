package com.ms.avalon.master.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="festivalmaster")
public class FestivalMasterPojo {
	@Id
	@GeneratedValue
	@Column(name="FestivalId")
	private int festivalId;
	
	@Column(name="CountryCode")
	private int countryCode;
	
	@Column(name="OfficeId")
	private int officeId;
	
	@Column(name="FestivalName")
	private String festivalName;
	
	@Column(name="NOH")
	private int noh;
	
	@Column(name="Year")
	private int year;
	
	@Column(name="StartDate")
	private String startDate;
	
	@Column(name="EndDate")
	private String endDate;
	
	
	public int getFestivalId() {
		return festivalId;
	}
	public void setFestivalId(int festivalId) {
		this.festivalId = festivalId;
	}
	public int getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(int countryCode) {
		this.countryCode = countryCode;
	}
	public int getOfficeId() {
		return officeId;
	}
	public void setOfficeId(int officeId) {
		this.officeId = officeId;
	}
	public String getFestivalName() {
		return festivalName;
	}
	public void setFestivalName(String festivalName) {
		this.festivalName = festivalName;
	}
	public int getNoh() {
		return noh;
	}
	public void setNoh(int noh) {
		this.noh = noh;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	
}