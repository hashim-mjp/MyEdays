package com.ms.avalon.master.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.ms.avalon.master.beans.AttendanceBean;
import com.ms.avalon.master.beans.AttendanceMasterBean;
import com.ms.avalon.master.beans.EmpMasterBean;
import com.ms.avalon.master.beans.EmployerBean;
import com.ms.avalon.master.beans.HolidayBean;
import com.ms.avalon.master.beans.SearchResultBean;
import com.ms.avalon.master.beans.SettingBean;
import com.ms.avalon.master.pojos.AttendanceMasterPojo;
import com.ms.avalon.master.pojos.ColorTablePojo;
import com.ms.avalon.master.pojos.DocMasterPojo;
import com.ms.avalon.master.pojos.EmpEduDetailsPojo;
import com.ms.avalon.master.pojos.EmpHierarchyPojo;
import com.ms.avalon.master.pojos.EmpMasterPojo;
import com.ms.avalon.master.pojos.FestivalMasterPojo;
import com.ms.avalon.master.pojos.LeaveDetailsPojo;
import com.ms.avalon.master.pojos.LeaveMasterPojo;
import com.ms.avalon.master.pojos.LeaveRulesPojo;
import com.ms.avalon.master.pojos.LeaveTypePojo;
import com.ms.avalon.master.pojos.Test1Pojo;

public interface EmpService1 {
	
	boolean login(String username, String psw, HttpSession session);

	List<EmpHierarchyPojo> getHeirarchy(int empId, String post);

	List<LeaveDetailsPojo> getLeaves(String empId);

	List<SearchResultBean> searchEmp(String string);

	List<FestivalMasterPojo> getFestivals(int officeId);
	
	
		
	
	List<EmpMasterPojo> getEmpDetails(String empId);

	boolean settingDataUpdate(SettingBean settingBean);

	LeaveRulesPojo getSettingData();

	List<AttendanceMasterPojo> getEmpAttendance(String empId);
	/***********************************************************************/
	/*************************************************************************************/

	List<LeaveTypePojo> getcolor();

	LeaveMasterPojo leaveapply(String empId);

	boolean isHalfDay();

	List<HolidayBean> loadHoliday();

	List<String> pendingLeave(String empId, String fromDate, String toDate, String leave);

	boolean insertleave(List<String> myarr, String empId);
////////////////////////////////////////////////////
	List<EmpHierarchyPojo> loadhierarchy(String empId);

	List<LeaveDetailsPojo> viewPendingLeave(List<EmpHierarchyPojo> li1);

	boolean leaveapproved(String status, String approvedBy, String approvedDate, String empId);

	float loadPendingLeave(String empId);

	boolean getEmpDetails(EmpMasterBean eb, List<EmpEduDetailsPojo> eduPojoList, EmployerBean ep,
			List<DocMasterPojo> docList);

	List<LeaveDetailsPojo> totalLeave(String empId);

	List<AttendanceMasterPojo> attendance(List<AttendanceBean> lBean1, String selectMnth, int year);

	List<EmpHierarchyPojo> managerLoadhierarchy(String empId);

	List<HolidayBean> managerLoadHoliday();

	float[] monthlyLeave(String empId);

	boolean Test1DataInsert(String name, int mob, String emailId, String dob);

	List<Test1Pojo> getInsertedData();

	boolean deleteRecord(String emailId);

	boolean updateIt(int id, String name, int mob, String email, String dob);

	

	

}
