package com.ms.avalon.master.pojos;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="attendancemaster")
public class AttendanceMasterPojo {
	@Id
	@GeneratedValue
	@Column(name="AttendanceID")
	private int attendanceId;
	@Column(name="EmpID")
	private String empId;
	@Column(name="Month")
	private String month;
	@Column(name="Year")
	private int year;
	@Column(name="SDay1")
	private Date sDay1;
	@Column(name="EDay1")
	private Date eDay1;
	@Column(name="HDay1")
	private String hDay1;
	@Column(name="SDay2")
	private Date sDay2;
	@Column(name="EDay2")
	private Date eDay2;
	@Column(name="HDay2")
	private String hDay2;
	@Column(name="SDay3")
	private Date sDay3;
	@Column(name="EDay3")
	private Date eDay3;
	@Column(name="HDay3")
	private String hDay3;
	@Column(name="SDay4")
	private Date sDay4;
	@Column(name="EDay4")
	private Date eDay4;
	@Column(name="HDay4")
	private String hDay4;
	@Column(name="SDay5")
	private Date sDay5;
	@Column(name="EDay5")
	private Date eDay5;
	@Column(name="HDay5")
	private String hDay5;
	@Column(name="SDay6")
	private Date sDay6;
	@Column(name="EDay6")
	private Date eDay6;
	@Column(name="HDay6")
	private String hDay6;
	@Column(name="SDay7")
	private Date sDay7;
	@Column(name="EDay7")
	private Date eDay7;
	@Column(name="HDay7")
	private String hDay7;
	@Column(name="SDay8")
	private Date sDay8;
	@Column(name="EDay8")
	private Date eDay8;
	@Column(name="HDay8")
	private String hDay8;
	@Column(name="SDay9")
	private Date sDay9;
	@Column(name="EDay9")
	private Date eDay9;
	@Column(name="HDay9")
	private String hDay9;
	
	@Column(name="SDay10")
	private Date sDay10;
	@Column(name="EDay10")
	private Date eDay10;
	@Column(name="HDay10")
	private String hDay10;
	@Column(name="SDay11")
	private Date sDay11;
	@Column(name="EDay11")
	private Date eDay11;
	@Column(name="HDay11")
	private String hDay11;
	@Column(name="SDay12")
	private Date sDay12;
	@Column(name="EDay12")
	private Date eDay12;
	@Column(name="HDay12")
	private String hDay12;
	@Column(name="SDay13")
	private Date sDay13;
	@Column(name="EDay13")
	private Date eDay13;
	@Column(name="HDay14")
	private String hDay14;
	@Column(name="SDay14")
	private Date sDay14;
	@Column(name="EDay14")
	private Date eDay14;
	@Column(name="SDay15")
	private Date sDay15;
	@Column(name="EDay15")
	private Date eDay15;
	@Column(name="HDay15")
	private String hDay15;
	@Column(name="SDay16")
	private Date sDay16;
	@Column(name="EDay16")
	private Date eDay16;
	@Column(name="HDay16")
	private String hDay16;
	@Column(name="SDay17")
	private Date sDay17;
	@Column(name="EDay17")
	private Date eDay17;
	@Column(name="HDay17")
	private String hDay17;
	@Column(name="SDay18")
	private Date sDay18;
	@Column(name="EDay18")
	private Date eDay18;
	@Column(name="HDay18")
	private String hDay18;
	@Column(name="SDay19")
	private Date sDay19;
	@Column(name="EDay19")
	private Date eDay19;
	@Column(name="HDay19")
	private String hDay19;
	@Column(name="SDay20")
	private Date sDay20;
	@Column(name="EDay20")
	private Date eDay20;
	@Column(name="HDay20")
	private String hDay20;
	@Column(name="SDay21")
	private Date sDay21;
	@Column(name="EDay21")
	private Date eDay21;
	@Column(name="HDay21")
	private String hDay21;
	@Column(name="SDay22")
	private Date sDay22;
	@Column(name="EDay22")
	private Date eDay22;
	@Column(name="HDay22")
	private String hDay22;
	@Column(name="SDay23")
	private Date sDay23;
	@Column(name="EDay23")
	private Date eDay23;
	@Column(name="HDay23")
	private String hDay23;
	@Column(name="SDay24")
	private Date sDay24;
	@Column(name="EDay24")
	private Date eDay24;
	@Column(name="HDay24")
	private String hDay24;
	@Column(name="SDay25")
	private Date sDay25;
	@Column(name="EDay25")
	private Date eDay25;
	@Column(name="HDay25")
	private String hDay25;
	@Column(name="SDay26")
	private Date sDay26;
	@Column(name="EDay26")
	private Date eDay26;
	@Column(name="HDay26")
	private String hDay26;
	@Column(name="SDay27")
	private Date sDay27;
	@Column(name="EDay27")
	private Date eDay27;
	@Column(name="HDay27")
	private String hDay27;
	@Column(name="SDay28")
	private Date sDay28;
	@Column(name="EDay28")
	private Date eDay28;
	@Column(name="HDay28")
	private String hDay28;
	@Column(name="SDay29")
	private Date sDay29;
	@Column(name="EDay29")
	private Date eDay29;
	@Column(name="HDay29")
	private String hDay29;
	@Column(name="SDay30")
	private Date sDay30;
	@Column(name="EDay30")
	private Date eDay30;
	@Column(name="HDay30")
	private String hDay30;
	@Column(name="SDay31")
	private Date sDay31;
	@Column(name="EDay31")
	private Date eDay31;
	@Column(name="HDay31")
	private String hDay31;
	public int getAttendanceId() {
		return attendanceId;
	}
	public void setAttendanceId(int attendanceId) {
		this.attendanceId = attendanceId;
	}
	
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String gethDay1() {
		return hDay1;
	}
	public void sethDay1(String hDay1) {
		this.hDay1 = hDay1;
	}
	public String gethDay2() {
		return hDay2;
	}
	public void sethDay2(String hDay2) {
		this.hDay2 = hDay2;
	}
	public String gethDay3() {
		return hDay3;
	}
	public void sethDay3(String hDay3) {
		this.hDay3 = hDay3;
	}
	public String gethDay4() {
		return hDay4;
	}
	public void sethDay4(String hDay4) {
		this.hDay4 = hDay4;
	}
	public String gethDay5() {
		return hDay5;
	}
	public void sethDay5(String hDay5) {
		this.hDay5 = hDay5;
	}
	public String gethDay6() {
		return hDay6;
	}
	public void sethDay6(String hDay6) {
		this.hDay6 = hDay6;
	}
	public String gethDay7() {
		return hDay7;
	}
	public void sethDay7(String hDay7) {
		this.hDay7 = hDay7;
	}
	public String gethDay8() {
		return hDay8;
	}
	public void sethDay8(String hDay8) {
		this.hDay8 = hDay8;
	}
	public String gethDay9() {
		return hDay9;
	}
	public void sethDay9(String hDay9) {
		this.hDay9 = hDay9;
	}
	public String gethDay10() {
		return hDay10;
	}
	public void sethDay10(String hDay10) {
		this.hDay10 = hDay10;
	}
	public String gethDay11() {
		return hDay11;
	}
	public void sethDay11(String hDay11) {
		this.hDay11 = hDay11;
	}
	public String gethDay12() {
		return hDay12;
	}
	public void sethDay12(String hDay12) {
		this.hDay12 = hDay12;
	}
	public String gethDay14() {
		return hDay14;
	}
	public void sethDay14(String hDay14) {
		this.hDay14 = hDay14;
	}
	public String gethDay15() {
		return hDay15;
	}
	public void sethDay15(String hDay15) {
		this.hDay15 = hDay15;
	}
	public String gethDay16() {
		return hDay16;
	}
	public void sethDay16(String hDay16) {
		this.hDay16 = hDay16;
	}
	public String gethDay17() {
		return hDay17;
	}
	public void sethDay17(String hDay17) {
		this.hDay17 = hDay17;
	}
	public String gethDay18() {
		return hDay18;
	}
	public void sethDay18(String hDay18) {
		this.hDay18 = hDay18;
	}
	public String gethDay19() {
		return hDay19;
	}
	public void sethDay19(String hDay19) {
		this.hDay19 = hDay19;
	}
	public String gethDay20() {
		return hDay20;
	}
	public void sethDay20(String hDay20) {
		this.hDay20 = hDay20;
	}
	public String gethDay21() {
		return hDay21;
	}
	public void sethDay21(String hDay21) {
		this.hDay21 = hDay21;
	}
	public String gethDay22() {
		return hDay22;
	}
	public void sethDay22(String hDay22) {
		this.hDay22 = hDay22;
	}
	public String gethDay23() {
		return hDay23;
	}
	public void sethDay23(String hDay23) {
		this.hDay23 = hDay23;
	}
	public String gethDay24() {
		return hDay24;
	}
	public void sethDay24(String hDay24) {
		this.hDay24 = hDay24;
	}
	public String gethDay25() {
		return hDay25;
	}
	public void sethDay25(String hDay25) {
		this.hDay25 = hDay25;
	}
	public String gethDay26() {
		return hDay26;
	}
	public void sethDay26(String hDay26) {
		this.hDay26 = hDay26;
	}
	public String gethDay27() {
		return hDay27;
	}
	public void sethDay27(String hDay27) {
		this.hDay27 = hDay27;
	}
	public String gethDay28() {
		return hDay28;
	}
	public void sethDay28(String hDay28) {
		this.hDay28 = hDay28;
	}
	public String gethDay29() {
		return hDay29;
	}
	public void sethDay29(String hDay29) {
		this.hDay29 = hDay29;
	}
	public String gethDay30() {
		return hDay30;
	}
	public void sethDay30(String hDay30) {
		this.hDay30 = hDay30;
	}
	public String gethDay31() {
		return hDay31;
	}
	public void sethDay31(String hDay31) {
		this.hDay31 = hDay31;
	}
	public Date getsDay1() {
		return sDay1;
	}
	public void setsDay1(Date sDay1) {
		this.sDay1 = sDay1;
	}
	public Date geteDay1() {
		return eDay1;
	}
	public void seteDay1(Date eDay1) {
		this.eDay1 = eDay1;
	}
	public Date getsDay2() {
		return sDay2;
	}
	public void setsDay2(Date sDay2) {
		this.sDay2 = sDay2;
	}
	public Date geteDay2() {
		return eDay2;
	}
	public void seteDay2(Date eDay2) {
		this.eDay2 = eDay2;
	}
	public Date getsDay3() {
		return sDay3;
	}
	public void setsDay3(Date sDay3) {
		this.sDay3 = sDay3;
	}
	public Date geteDay3() {
		return eDay3;
	}
	public void seteDay3(Date eDay3) {
		this.eDay3 = eDay3;
	}
	public Date getsDay4() {
		return sDay4;
	}
	public void setsDay4(Date sDay4) {
		this.sDay4 = sDay4;
	}
	public Date geteDay4() {
		return eDay4;
	}
	public void seteDay4(Date eDay4) {
		this.eDay4 = eDay4;
	}
	public Date getsDay5() {
		return sDay5;
	}
	public void setsDay5(Date sDay5) {
		this.sDay5 = sDay5;
	}
	public Date geteDay5() {
		return eDay5;
	}
	public void seteDay5(Date eDay5) {
		this.eDay5 = eDay5;
	}
	public Date getsDay6() {
		return sDay6;
	}
	public void setsDay6(Date sDay6) {
		this.sDay6 = sDay6;
	}
	public Date geteDay6() {
		return eDay6;
	}
	public void seteDay6(Date eDay6) {
		this.eDay6 = eDay6;
	}
	public Date getsDay7() {
		return sDay7;
	}
	public void setsDay7(Date sDay7) {
		this.sDay7 = sDay7;
	}
	public Date geteDay7() {
		return eDay7;
	}
	public void seteDay7(Date eDay7) {
		this.eDay7 = eDay7;
	}
	public Date getsDay8() {
		return sDay8;
	}
	public void setsDay8(Date sDay8) {
		this.sDay8 = sDay8;
	}
	public Date geteDay8() {
		return eDay8;
	}
	public void seteDay8(Date eDay8) {
		this.eDay8 = eDay8;
	}
	public Date getsDay9() {
		return sDay9;
	}
	public void setsDay9(Date sDay9) {
		this.sDay9 = sDay9;
	}
	public Date geteDay9() {
		return eDay9;
	}
	public void seteDay9(Date eDay9) {
		this.eDay9 = eDay9;
	}
	public Date getsDay10() {
		return sDay10;
	}
	public void setsDay10(Date sDay10) {
		this.sDay10 = sDay10;
	}
	public Date geteDay10() {
		return eDay10;
	}
	public void seteDay10(Date eDay10) {
		this.eDay10 = eDay10;
	}
	public Date getsDay11() {
		return sDay11;
	}
	public void setsDay11(Date sDay11) {
		this.sDay11 = sDay11;
	}
	public Date geteDay11() {
		return eDay11;
	}
	public void seteDay11(Date eDay11) {
		this.eDay11 = eDay11;
	}
	public Date getsDay12() {
		return sDay12;
	}
	public void setsDay12(Date sDay12) {
		this.sDay12 = sDay12;
	}
	public Date geteDay12() {
		return eDay12;
	}
	public void seteDay12(Date eDay12) {
		this.eDay12 = eDay12;
	}
	public Date getsDay13() {
		return sDay13;
	}
	public void setsDay13(Date sDay13) {
		this.sDay13 = sDay13;
	}
	public Date geteDay13() {
		return eDay13;
	}
	public void seteDay13(Date eDay13) {
		this.eDay13 = eDay13;
	}
	public Date getsDay14() {
		return sDay14;
	}
	public void setsDay14(Date sDay14) {
		this.sDay14 = sDay14;
	}
	public Date geteDay14() {
		return eDay14;
	}
	public void seteDay14(Date eDay14) {
		this.eDay14 = eDay14;
	}
	public Date getsDay15() {
		return sDay15;
	}
	public void setsDay15(Date sDay15) {
		this.sDay15 = sDay15;
	}
	public Date geteDay15() {
		return eDay15;
	}
	public void seteDay15(Date eDay15) {
		this.eDay15 = eDay15;
	}
	public Date getsDay16() {
		return sDay16;
	}
	public void setsDay16(Date sDay16) {
		this.sDay16 = sDay16;
	}
	public Date geteDay16() {
		return eDay16;
	}
	public void seteDay16(Date eDay16) {
		this.eDay16 = eDay16;
	}
	public Date getsDay17() {
		return sDay17;
	}
	public void setsDay17(Date sDay17) {
		this.sDay17 = sDay17;
	}
	public Date geteDay17() {
		return eDay17;
	}
	public void seteDay17(Date eDay17) {
		this.eDay17 = eDay17;
	}
	public Date getsDay18() {
		return sDay18;
	}
	public void setsDay18(Date sDay18) {
		this.sDay18 = sDay18;
	}
	public Date geteDay18() {
		return eDay18;
	}
	public void seteDay18(Date eDay18) {
		this.eDay18 = eDay18;
	}
	public Date getsDay19() {
		return sDay19;
	}
	public void setsDay19(Date sDay19) {
		this.sDay19 = sDay19;
	}
	public Date geteDay19() {
		return eDay19;
	}
	public void seteDay19(Date eDay19) {
		this.eDay19 = eDay19;
	}
	public Date getsDay20() {
		return sDay20;
	}
	public void setsDay20(Date sDay20) {
		this.sDay20 = sDay20;
	}
	public Date geteDay20() {
		return eDay20;
	}
	public void seteDay20(Date eDay20) {
		this.eDay20 = eDay20;
	}
	public Date getsDay21() {
		return sDay21;
	}
	public void setsDay21(Date sDay21) {
		this.sDay21 = sDay21;
	}
	public Date geteDay21() {
		return eDay21;
	}
	public void seteDay21(Date eDay21) {
		this.eDay21 = eDay21;
	}
	public Date getsDay22() {
		return sDay22;
	}
	public void setsDay22(Date sDay22) {
		this.sDay22 = sDay22;
	}
	public Date geteDay22() {
		return eDay22;
	}
	public void seteDay22(Date eDay22) {
		this.eDay22 = eDay22;
	}
	public Date getsDay23() {
		return sDay23;
	}
	public void setsDay23(Date sDay23) {
		this.sDay23 = sDay23;
	}
	public Date geteDay23() {
		return eDay23;
	}
	public void seteDay23(Date eDay23) {
		this.eDay23 = eDay23;
	}
	public Date getsDay24() {
		return sDay24;
	}
	public void setsDay24(Date sDay24) {
		this.sDay24 = sDay24;
	}
	public Date geteDay24() {
		return eDay24;
	}
	public void seteDay24(Date eDay24) {
		this.eDay24 = eDay24;
	}
	public Date getsDay25() {
		return sDay25;
	}
	public void setsDay25(Date sDay25) {
		this.sDay25 = sDay25;
	}
	public Date geteDay25() {
		return eDay25;
	}
	public void seteDay25(Date eDay25) {
		this.eDay25 = eDay25;
	}
	public Date getsDay26() {
		return sDay26;
	}
	public void setsDay26(Date sDay26) {
		this.sDay26 = sDay26;
	}
	public Date geteDay26() {
		return eDay26;
	}
	public void seteDay26(Date eDay26) {
		this.eDay26 = eDay26;
	}
	public Date getsDay27() {
		return sDay27;
	}
	public void setsDay27(Date sDay27) {
		this.sDay27 = sDay27;
	}
	public Date geteDay27() {
		return eDay27;
	}
	public void seteDay27(Date eDay27) {
		this.eDay27 = eDay27;
	}
	public Date getsDay28() {
		return sDay28;
	}
	public void setsDay28(Date sDay28) {
		this.sDay28 = sDay28;
	}
	public Date geteDay28() {
		return eDay28;
	}
	public void seteDay28(Date eDay28) {
		this.eDay28 = eDay28;
	}
	public Date getsDay29() {
		return sDay29;
	}
	public void setsDay29(Date sDay29) {
		this.sDay29 = sDay29;
	}
	public Date geteDay29() {
		return eDay29;
	}
	public void seteDay29(Date eDay29) {
		this.eDay29 = eDay29;
	}
	public Date getsDay30() {
		return sDay30;
	}
	public void setsDay30(Date sDay30) {
		this.sDay30 = sDay30;
	}
	public Date geteDay30() {
		return eDay30;
	}
	public void seteDay30(Date eDay30) {
		this.eDay30 = eDay30;
	}
	public Date getsDay31() {
		return sDay31;
	}
	public void setsDay31(Date sDay31) {
		this.sDay31 = sDay31;
	}
	public Date geteDay31() {
		return eDay31;
	}
	public void seteDay31(Date eDay31) {
		this.eDay31 = eDay31;
	}
	
}
