package com.ms.avalon.master.dao.rdbms;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Disjunction;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.ms.avalon.master.beans.AttendanceBean;
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


public class EmpDaoRdbms1 extends DBConnectionDao implements EmpDao1 
{

	@Override
	public List<LoginTablePojo> login(String username, String psw) {
		DetachedCriteria cre=DetachedCriteria.forClass(LoginTablePojo.class);
		cre.add(Restrictions.eq("userName", username));
		cre.add(Restrictions.eq("password", psw));
		return hibernateTemplate.findByCriteria(cre);
	}
	

	@Override
	public List<EmpHierarchyPojo> getHeirarchy(int empId, String post) {
		DetachedCriteria cre=DetachedCriteria.forClass(EmpHierarchyPojo.class);
		cre.add(Restrictions.eq("reportingTo", empId));
		return hibernateTemplate.findByCriteria(cre);
	}

	@Override
	public List<LeaveDetailsPojo> getLeaves(String empId) {
		DetachedCriteria cre=DetachedCriteria.forClass(LeaveDetailsPojo.class);
		cre.add(Restrictions.eq("empId", empId));
		cre.add(Restrictions.eq("status", "Approved"));
		return hibernateTemplate.findByCriteria(cre);
	}


	@Override
	public List<EmpHierarchyPojo> searchEmp(String empId) {
		DetachedCriteria cre=DetachedCriteria.forClass(EmpHierarchyPojo.class);
		cre.add(Restrictions.eq("reportingTo",empId));
		return hibernateTemplate.findByCriteria(cre);
	}


	@Override
	public List<FestivalMasterPojo> getFestivals(int officeId) {
		System.out.println(officeId+"hashim");
		Calendar c=Calendar.getInstance();
		int year=c.get(Calendar.YEAR);
		DetachedCriteria cre=DetachedCriteria.forClass(FestivalMasterPojo.class);
		cre.add(Restrictions.eq("officeId", officeId));
		Disjunction d=Restrictions.disjunction();
		d.add(Restrictions.eq("year", year-1));
		d.add(Restrictions.eq("year", year));
		//d.add(Restrictions.eq("year", year+1));
		cre.add(d);
		return hibernateTemplate.findByCriteria(cre);
	}

	
	

	@Override
	public List<EmpMasterPojo> getEmpDetails(String empId) {
		DetachedCriteria cre=DetachedCriteria.forClass(EmpMasterPojo.class);
		cre.add(Restrictions.eq("empId", empId));
		return hibernateTemplate.findByCriteria(cre);
	}


	@Override
	public boolean settingDataUpdate(SettingBean s) {
		 LeaveRulesPojo p=(LeaveRulesPojo) hibernateTemplate.get(LeaveRulesPojo.class, 1);
		 p.setTotalLeave(s.getLpy());
		 p.setIsHalfDayAllow(s.getIsManualhalf());
		 p.setAutoHalfDay(s.getIsAutohalfDay());
		 p.setLeaveCarryForward(s.getIsCLCarry());
		 if(s.getIsCLCarry()==1){
			 p.setMaxNODCarryForward(s.getMaxClForward());
		 }
		 hibernateTemplate.update(p);
		 
		return true;
	}


	@Override
	public LeaveRulesPojo getSettingData() {
		return (LeaveRulesPojo) hibernateTemplate.get(LeaveRulesPojo.class, 1);
	}


	@Override
	public List<AttendanceMasterPojo> getEmpAttendance(String empId, int year) {
		DetachedCriteria cre=DetachedCriteria.forClass(AttendanceMasterPojo.class);
		System.out.println(empId+"hashim");
		cre.add(Restrictions.eq("empId", empId));
		Disjunction d=Restrictions.disjunction();
		d.add(Restrictions.eq("year", year-1));
		d.add(Restrictions.eq("year", year));
		//d.add(Restrictions.eq("year", year+1));
		cre.add(d);
		return hibernateTemplate.findByCriteria(cre);
	}
	/***************************************************************************************/
	
	
	//rdbms

	@Override
		public List<LeaveTypePojo> getcolor() {
			DetachedCriteria cre=DetachedCriteria.forClass(LeaveTypePojo.class);
			return hibernateTemplate.findByCriteria(cre);
		}

	@Override
		public LeaveMasterPojo leaveapply(String empId) {
			DetachedCriteria cre=DetachedCriteria.forClass(LeaveMasterPojo.class);
			cre.add(Restrictions.eq("empId",empId));
			List<LeaveMasterPojo> li=hibernateTemplate.findByCriteria(cre);
			return li.get(0);
		}


	@Override
		public List<FestivalMasterPojo> loadHoliday() {
			DetachedCriteria cre=DetachedCriteria.forClass(FestivalMasterPojo.class);
			return hibernateTemplate.findByCriteria(cre);
		}



	@Override
		public List<LeaveDetailsPojo> pendingLeave(String empId) {
			DetachedCriteria cre=DetachedCriteria.forClass(LeaveDetailsPojo.class);
			Disjunction d=Restrictions.disjunction();
			d.add(Restrictions.eq("status","Pending"));
			d.add(Restrictions.eq("status","Approved"));
			cre.add(Restrictions.eq("empId",empId));
			cre.add(d);
			List<LeaveDetailsPojo> li=hibernateTemplate.findByCriteria(cre);
			return li;
		}



	@Override
		public boolean insertleave(LeaveDetailsPojo p) {

			hibernateTemplate.save(p);
			return true;
		}


	@Override
		public List<LeaveRulesPojo> isHalfDay() {
			DetachedCriteria cre=DetachedCriteria.forClass(LeaveRulesPojo.class);
			return hibernateTemplate.findByCriteria(cre);
		}
	/////////////////////////////////////////////////////////////
	@Override
	public List<LeaveDetailsPojo> viewPendingLeave(String status,List<EmpHierarchyPojo> li1){
		DetachedCriteria cre=DetachedCriteria.forClass(LeaveDetailsPojo.class);
		Disjunction d=Restrictions.disjunction();
		for (EmpHierarchyPojo empHierarchyPojo : li1) {
			d.add(Restrictions.eq("empId", empHierarchyPojo.getEmpId()));
		}
		cre.add(d);
		cre.add(Restrictions.eq("status",status));
		List<LeaveDetailsPojo> li=hibernateTemplate.findByCriteria(cre);
		return li;
	}


@Override
	public boolean leaveapproved(String status, String approvedBy, String approvedDate,String empId) {

		DetachedCriteria cre=DetachedCriteria.forClass(LeaveDetailsPojo.class);
		cre.add(Restrictions.eq("empId",empId));
		List<LeaveDetailsPojo> li=hibernateTemplate.findByCriteria(cre);
		List<LeaveDetailsPojo> temp=new ArrayList<LeaveDetailsPojo>();
		for (LeaveDetailsPojo lp : li) {
			lp.setStatus(status);
			lp.setApprovedBy(approvedBy);
			lp.setApprovedDate(approvedDate);
			if(li.size()>0)
				temp.add(lp);
		}

		hibernateTemplate.update(temp.get(0));
		return true;
	}

@Override
	public List<EmpHierarchyPojo> loadhirarchy(String empId) {
		DetachedCriteria cre=DetachedCriteria.forClass(EmpHierarchyPojo.class);
		cre.add(Restrictions.eq("reportingTo",empId));
		return hibernateTemplate.findByCriteria(cre);
	}
		 

@Override
	public List<LeaveDetailsPojo> loadendingLeave(String empId) {
		DetachedCriteria cre=DetachedCriteria.forClass(LeaveDetailsPojo.class);
		Disjunction d=Restrictions.disjunction();
		d.add(Restrictions.like("fromDate", "2018", MatchMode.ANYWHERE));
		cre.add(d);
		cre.add(Restrictions.eq("status","Approved"));
		cre.add(Restrictions.eq("empId",empId));
		List<LeaveDetailsPojo> li=hibernateTemplate.findByCriteria(cre);
		return li;
	}

//////////////////////////////////////////////


@Override
public boolean getEmpDetails(EmpMasterPojo empPojo, List<EmpEduDetailsPojo> eduPojoList, EmpEmployerPojo employerPojo,
		List<DocMasterPojo> docList) {
	
	hibernateTemplate.save(empPojo);
	hibernateTemplate.save(employerPojo);
	
	if(eduPojoList != null && eduPojoList.size()>0)
	{
	
		for (EmpEduDetailsPojo e : eduPojoList) 
		{
		   hibernateTemplate.save(e);
	    }
	}
	
	if(docList != null && docList.size()>0)
	{
	
		for (DocMasterPojo e : docList) 
		{
		   hibernateTemplate.save(e);
	    }
	}
	
			
	return true;
}

@Override
public String generateEmpId() {
	
	DetachedCriteria cre = DetachedCriteria.forClass(EmpMasterPojo.class);
	//cre.add(Restrictions.sqlRestriction("createdDate"));
	
	cre.addOrder(Order.desc("createdDate"));
	cre.getExecutableCriteria(session).setMaxResults(1);
	
	List<EmpMasterPojo> li = hibernateTemplate.findByCriteria(cre);
	
	for (EmpMasterPojo e : li) {
		System.out.println(e.getfName());
	}
	
	String empId = li.get(0).getEmpId(); 
	return empId;
}
///////////////////////////////////////////////////

//rdbms

@Override
	public List<AttendanceMasterPojo> attendance(List<AttendanceBean> lBean1,String selectMnth, int year) {
		DetachedCriteria cre=DetachedCriteria.forClass(AttendanceMasterPojo.class);
		Disjunction d=Restrictions.disjunction();
		for (AttendanceBean attendanceBean : lBean1) {
			d.add(Restrictions.eq("empId", attendanceBean.getEmpId()));
		}
		cre.add(d);
		cre.add(Restrictions.eq("month", selectMnth));
		cre.add(Restrictions.eq("year", year));
		return hibernateTemplate.findByCriteria(cre);
	}

@Override
	public List<LeaveDetailsPojo> totalLeave() {
		DetachedCriteria cre=DetachedCriteria.forClass(LeaveDetailsPojo.class);
		cre.add(Restrictions.eq("status","Approved"));
		List<LeaveDetailsPojo> li=hibernateTemplate.findByCriteria(cre);
		return li;
	}





/*@Override
	public List<EmpHierarchyPojo> loadhirarchy(String empId) {
		DetachedCriteria cre=DetachedCriteria.forClass(EmpHierarchyPojo.class);
		cre.add(Restrictions.eq("reportingTo",empId));
		return hibernateTemplate.findByCriteria(cre);
	}*/

/*@Override
	public List<FestivalMaster1Pojo> loadHoliday() {
		DetachedCriteria cre=DetachedCriteria.forClass(FestivalMaster1Pojo.class);
		return hibernateTemplate.findByCriteria(cre);
	}*/






@Override
public boolean Test1DataInsert(String name, int mob, String emailId, String dob) {
	Test1Pojo p=new Test1Pojo();
	p.setName(name);
	p.setMob(mob);
	p.setEmail(emailId);
	p.setDob(dob);
	hibernateTemplate.save(p);
	return true;
}


@Override
public List<Test1Pojo> getInsertedData() {
	DetachedCriteria cre=DetachedCriteria.forClass(Test1Pojo.class);
	return hibernateTemplate.findByCriteria(cre);
	
}


@Override
public boolean deleteRecord(String emailId) {
	Test1Pojo p=hibernateTemplate.get(Test1Pojo.class, Integer.parseInt(emailId));
	hibernateTemplate.delete(p);
	return true;
}


@Override
public boolean updateIt(int id,String name, int mob, String email, String dob) {
	Test1Pojo p=new Test1Pojo();
	p.setId(id);
	p.setDob(dob);
	p.setEmail(email);
	p.setMob(mob);
	p.setName(name);
	System.out.println(p.getEmail());
	hibernateTemplate.update(p);
	return true;
}




}
