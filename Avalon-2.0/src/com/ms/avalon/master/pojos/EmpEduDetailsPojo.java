package com.ms.avalon.master.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="empedudetails")
public class EmpEduDetailsPojo 
{
	@Id
	@GeneratedValue
	@Column(name="EmpEduId")
	private int empEduId;
	
	@Column(name="EmpCode")
	private String empCode;
	
	@Column(name="Program")
	private String program;
	
	@Column(name="University")
	private String university;

	@Column(name="CourseStart")
	private String courseStart;
	
	@Column(name="CourseEnd")
	private String courseEnd;
	
	@Column(name="RollNo")
	private String rollNo;
	
	@Column(name="CourseType")
	private String courseType;
	
	@Column(name="Percentage")
	private String percentage;

	public int getEmpEduId() {
		return empEduId;
	}

	public void setEmpEduId(int empEduId) {
		this.empEduId = empEduId;
	}

	public String getEmpCode() {
		return empCode;
	}

	public void setEmpCode(String empCode) {
		this.empCode = empCode;
	}

	public String getProgram() {
		return program;
	}

	public void setProgram(String program) {
		this.program = program;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getCourseStart() {
		return courseStart;
	}

	public void setCourseStart(String courseStart) {
		this.courseStart = courseStart;
	}

	public String getCourseEnd() {
		return courseEnd;
	}

	public void setCourseEnd(String courseEnd) {
		this.courseEnd = courseEnd;
	}

	public String getRollNo() {
		return rollNo;
	}

	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}

	public String getCourseType() {
		return courseType;
	}

	public void setCourseType(String courseType) {
		this.courseType = courseType;
	}

	public String getPercentage() {
		return percentage;
	}

	public void setPercentage(String percentage) {
		this.percentage = percentage;
	}
}
