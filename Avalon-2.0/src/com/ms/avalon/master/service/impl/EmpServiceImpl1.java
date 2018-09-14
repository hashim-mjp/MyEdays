package com.ms.avalon.master.service.impl;


import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.ms.avalon.master.beans.AttendanceBean;
import com.ms.avalon.master.beans.AttendanceMasterBean;
import com.ms.avalon.master.beans.EmpDetailsBean;
import com.ms.avalon.master.beans.EmpMasterBean;
import com.ms.avalon.master.beans.EmployerBean;
import com.ms.avalon.master.beans.HolidayBean;
import com.ms.avalon.master.beans.SearchResultBean;
import com.ms.avalon.master.beans.SettingBean;
import com.ms.avalon.master.dao.EmpDao1;
import com.ms.avalon.master.pojos.AttendanceMasterPojo;
import com.ms.avalon.master.pojos.ColorTablePojo;
import com.ms.avalon.master.pojos.DocMasterPojo;
import com.ms.avalon.master.pojos.EmpEduDetailsPojo;
import com.ms.avalon.master.pojos.EmpEmployerPojo;
import com.ms.avalon.master.pojos.EmpHierarchyPojo;
import com.ms.avalon.master.pojos.EmpMasterPojo;
import com.ms.avalon.master.pojos.FestivalMasterPojo;
import com.ms.avalon.master.pojos.LeaveDetailsPojo;
import com.ms.avalon.master.pojos.LeaveMasterPojo;
import com.ms.avalon.master.pojos.LeaveRulesPojo;
import com.ms.avalon.master.pojos.LeaveTypePojo;
import com.ms.avalon.master.pojos.LoginTablePojo;
import com.ms.avalon.master.pojos.Test1Pojo;
import com.ms.avalon.master.service.EmpService1;


public class EmpServiceImpl1 implements EmpService1 {
	@Autowired
	EmpDao1 empdao;

	@Override
	public boolean login(String username, String psw, HttpSession session) {
			List<LoginTablePojo> li=empdao.login(username,psw);
			EmpDetailsBean b=new EmpDetailsBean();
			
			if(li.size()>0){
				b.setEmpId(li.get(0).getEmpId());
				b.setfName(li.get(0).getEmp().getfName());
				b.setlName(li.get(0).getEmp().getlName());
				b.setPic(li.get(0).getEmp().getPic());
				b.setOfficeId(li.get(0).getEmp().getOfficeId());
				b.setMobile(li.get(0).getEmp().getMobile());
				session.setAttribute("empDetails", b);
				session.setMaxInactiveInterval(60*60*12*1);
				return true;
			}
			
		return false;
	}
	
	/*@Override
	public boolean login(int empId, String empCode) {
		List li=empdao.login(empId,empCode);
		return true;
		
	}*/
	
	@Override
	public List<EmpHierarchyPojo> getHeirarchy(int empId, String post) {
		return empdao.getHeirarchy(empId,post);
	}

	@Override
	public List<LeaveDetailsPojo> getLeaves(String empId) {
		return empdao.getLeaves(empId);
	}

	@Override
	public List<SearchResultBean> searchEmp(String empId) {
		List<EmpHierarchyPojo> li=empdao.searchEmp(empId);
		ArrayList<SearchResultBean> a=new ArrayList<SearchResultBean>();
		SearchResultBean b;
		for (EmpHierarchyPojo p : li) {
			b=new SearchResultBean();
			b.setEmpId(p.getEmpId());
			b.setFname(p.getP().getfName());
			b.setlName(p.getP().getlName());
			b.setOfficeId(p.getP().getOfficeId());
			a.add(b);
		}
		return a;
	}

	@Override
	public List<FestivalMasterPojo> getFestivals(int officeId) {
		return empdao.getFestivals(officeId);
	}

	
	@Override
	public List<EmpMasterPojo> getEmpDetails(String empId) {
		return empdao. getEmpDetails(empId);
		
	}

	@Override
	public boolean settingDataUpdate(SettingBean settingBean) {
		return empdao.settingDataUpdate(settingBean);
	}

	@Override
	public LeaveRulesPojo getSettingData() {
		return empdao.getSettingData();
	}

	@Override
	public List<AttendanceMasterPojo> getEmpAttendance(String empId) {
		Calendar c=Calendar.getInstance();
		int year=c.get(Calendar.YEAR);
		return empdao.getEmpAttendance(empId,year);
		
		
	}
	/**************************************************************************************/
	

	@Override
		public boolean isHalfDay() {
			List<LeaveRulesPojo> li=empdao.isHalfDay();
			if(li.get(0).getIsHalfDayAllow()==1)
				return true;
			return false;
			
		}


	@Override
		public boolean insertleave(List<String> myarr,String empId) {
			LeaveDetailsPojo p=new LeaveDetailsPojo();

			p.setFromDate(myarr.get(0));
			p.setEndDate(myarr.get(1));
			float leave=Float.parseFloat(myarr.get(2));
			float half=Float.parseFloat(myarr.get(3));
			float adv=Float.parseFloat(myarr.get(4));
			
			p.setNoOfDays(leave);
			
			p.setCreatedDate(myarr.get(5));
			p.setLeaveCause(myarr.get(7));
			p.setLeaveType(myarr.get(6));
			p.setEmpId(empId);
			p.setStatus("pending");
			return empdao.insertleave(p);
		}




	@Override
		public List<String> pendingLeave(String empId, String fromDate, String toDate,String leave) {

			int days=Integer.parseInt(leave);
			List a=new ArrayList();
			DateFormat f=new SimpleDateFormat("mm/dd/yyyy");
			Date str;
			Calendar cal=new GregorianCalendar();
			//creating array
			try
			{
				str=f.parse(fromDate);
				cal.setTime(str);
				for(int i=0;i<days;i++)
				{
					a.add(f.format(cal.getTime()));
					cal.add(Calendar.DATE, 1);
				}
			}
			catch(ParseException e)
			{
				e.printStackTrace();
			}
			//array fromdb
			List<LeaveDetailsPojo> li=empdao.pendingLeave(empId);
			List<String> b=new ArrayList<>();
			List<String> comp=new ArrayList();
			if(li.size()>0)
			{
				try
				{
					Date	DFromDate=f.parse(li.get(0).getFromDate());
					cal.setTime(DFromDate);
					float noOfDay=li.get(0).getNoOfDays();
					for(int i=0;i<noOfDay;i++)
					{
						b.add(f.format(cal.getTime()));
						cal.add(Calendar.DATE, 1);
					}
				}
				catch(ParseException e)
				{
					e.printStackTrace();
				}
				for(int i=0;i<days;i++)
				{for(int j=0;j<li.get(0).getNoOfDays();j++)
				{
					if(a.get(i).equals(b.get(j)))
					{
						comp.add(a.get(i).toString());
					}
				}
				}
			}
			return comp;
		}


	@Override
		public List<HolidayBean> loadHoliday() {
			List<FestivalMasterPojo> li=empdao.loadHoliday();
			List<HolidayBean> l=new ArrayList<>();
			HolidayBean b;
			for (FestivalMasterPojo p : li) {
				b=new HolidayBean();
				b.setFestivalSDate(p.getStartDate());
				b.setFestivalEDate(p.getEndDate());
				b.setFestivalName(p.getFestivalName());
				b.setNoh(p.getNoh());
				l.add(b);
			}
			return l;
		}


	@Override
		public LeaveMasterPojo leaveapply(String empId) {
			// TODO Auto-generated method stub
			return empdao.leaveapply(empId);
		}



	@Override
		public List<LeaveTypePojo> getcolor() {
			// TODO Auto-generated method stub
			return empdao.getcolor();
		}
	//////////////////////////////////////////////
	@Override
	public List<LeaveDetailsPojo> viewPendingLeave(List<EmpHierarchyPojo> li1) {
		String status="Pending";
		return empdao.viewPendingLeave(status,li1);
	}

@Override
	public List<EmpHierarchyPojo> loadhierarchy(String empId) {
		List<EmpHierarchyPojo> li=empdao.loadhirarchy(empId);
		return li;
	}


@Override
	public boolean leaveapproved(String status, String approvedBy, String approvedDate,String empId) {
		return empdao.leaveapproved(status,approvedBy,approvedDate,empId);
	}

@Override
public float loadPendingLeave(String empId) {
	List<LeaveDetailsPojo> li=empdao.loadendingLeave(empId);
	float day=0;
	if(li.size()>0)
	{
		for (LeaveDetailsPojo p : li) {
			day+=p.getNoOfDays();
		}
		return day;
	}
	return 0;
}
	/**************************************************************************************/
    //punsay

@Override
public boolean getEmpDetails(EmpMasterBean eb, List<EmpEduDetailsPojo> eduPojoList, EmployerBean ep,
		List<DocMasterPojo> docList) 
{
	String code = idGenerator();
	System.out.println(eb.getfName());
	String fLetter = eb.getfName().substring(0, 1); 
	String sLetter = eb.getlName().substring(0, 1);
	
	String empId = fLetter + sLetter + code;
	
	EmpMasterPojo empPojo = new EmpMasterPojo();
	
	empPojo.setEmpId(empId);
	empPojo.setfName(eb.getfName());
	empPojo.setlName(eb.getlName());
	empPojo.setdOB(eb.getDob());
	//empPojo.setDoj(eb.getDoj());
	empPojo.setMobile(eb.getMobile());
	empPojo.setAltMobile(eb.getAltMobile());
	empPojo.setEmergencyMobile(eb.getEmergencyMobile());
	empPojo.setEmail(eb.getEmail());
	empPojo.setAltMail(eb.getAltMail());
	empPojo.setStatus(eb.getStatus());
	empPojo.setDesignation(eb.getDesignation());
	empPojo.setRoll(eb.getRole());
	empPojo.setGender(eb.getGender());
	empPojo.setPanNo(eb.getPanNo());
	empPojo.setPassportNo(eb.getPassportNo());
	empPojo.setuID(eb.getuId());
	empPojo.setAddress(eb.getAddress());
	empPojo.setState(eb.getState());
	empPojo.setCountry(eb.getCountry());
	empPojo.setPin(eb.getPin());
    
	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	LocalDateTime now = LocalDateTime.now();
	String systemDate = dtf.format(now);
	
	empPojo.setCreatedDate(systemDate);
	
	EmpEmployerPojo employerPojo = new EmpEmployerPojo();
	employerPojo.setEmployerName(ep.getEmployerName());
	employerPojo.setDesignation(ep.getDesignation());
	employerPojo.setJoiningDate(ep.getJoiningDate());
	employerPojo.setRelievingDate(ep.getRelievingDate());
	employerPojo.setRole(ep.getRole());
	employerPojo.setCtc(ep.getCtc());
	employerPojo.setReportingPerson(ep.getReportingPerson());
	employerPojo.setMonthlySalary(ep.getMonthlySal());
	employerPojo.setHrName(ep.getHrName());
	employerPojo.setHrEmail(ep.getHrEmail());
	  
	
	return empdao.getEmpDetails(empPojo, eduPojoList, employerPojo, docList);
}

private String idGenerator() {
	
	System.out.println("service idddd");
	 String pid = empdao.generateEmpId();
	 
	 String pserialNo = pid.substring(2, 5);
	 
	 System.out.println(pserialNo+"  serialNo");
	 
	 int integerId = Integer.parseInt(pserialNo);
	 
	 String nextid = "" ; 
	 
	 if(integerId >=1 && integerId <=9 )
	 {
		 nextid = "00" + (integerId+1);
	 }
	 
	 if(integerId>9 && integerId<=99)
	 {
		 nextid = "0"+(integerId +1);
	 }
	 
	 if(integerId>99)
	 {
		 nextid = ""+(integerId+1);
	 }
    return nextid;
	}

////////////////////////////////////////

//impl

@Override
	public List<EmpHierarchyPojo> managerLoadhierarchy(String empId) {
		List<EmpHierarchyPojo> li=empdao.loadhirarchy(empId);
		return li;
	}

@Override
	public List<LeaveDetailsPojo> totalLeave(String empId) {
		return empdao.totalLeave();
	}

@Override
	public List<AttendanceMasterPojo> attendance(List<AttendanceBean> lBean1, String selectMnth, int year) {
		List<AttendanceMasterPojo> li=empdao.attendance(lBean1,selectMnth,year);
		return li;
	}

@Override
	public List<HolidayBean> managerLoadHoliday() {
		List<FestivalMasterPojo> li=empdao.loadHoliday();
		List<HolidayBean> l=new ArrayList<>();
		HolidayBean b;
		for (FestivalMasterPojo p : li) {
			b=new HolidayBean();
			b.setFestivalSDate(p.getStartDate());
			b.setFestivalEDate(p.getEndDate());
			b.setFestivalName(p.getFestivalName());
			b.setNoh(p.getNoh());
			l.add(b);
		}
		return l;
	}

///////////////

//impl

@Override
	public float[]  monthlyLeave(String empId) {
		float[] mon=new float[12];
		int fm;
		int tm;
		int fmDate;
		int tmDate;
		int fmEndDate;
		float days;
		List<LeaveDetailsPojo> li=empdao.loadendingLeave(empId);
		for(int j=0;j<li.size();j++)
		{
			fm=new Date(li.get(j).getFromDate()).getMonth();
			tm=new Date(li.get(j).getEndDate()).getMonth();
			if(fm==tm)
			{
				mon[fm]+=li.get(j).getNoOfDays();
			}
			else
			{
				fmDate=new Date(li.get(j).getFromDate()).getDate();
				tmDate=new Date(li.get(j).getFromDate()).getDate();
				fmEndDate=new Date(2018,fm,0).getDate();
				days=li.get(j).getNoOfDays();
				mon[fm]+=fmEndDate-fmDate+1;
				mon[tm]+=days-(fmEndDate-fmDate)-1;
			}
		}
		return mon;
	}




@Override
public boolean Test1DataInsert(String name, int mob, String emailId, String dob) {
	return empdao.Test1DataInsert(name,mob,emailId,dob);
	
}

@Override
public List<Test1Pojo> getInsertedData() {
	
	return empdao.getInsertedData();
}

@Override
public boolean deleteRecord(String emailId) {
	return empdao.deleteRecord(emailId );
}

@Override
public boolean updateIt(int id,String name, int mob, String email, String dob) {
	return empdao.updateIt(id,name,mob,email,dob);
	 
}


}
