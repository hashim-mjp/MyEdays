package com.ms.avalon.master.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.ms.avalon.master.beans.AttendanceBean;
import com.ms.avalon.master.beans.SettingBean;
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


public interface EmpDao1 {

	List<LoginTablePojo> login(String username, String psw);
	
	List<EmpHierarchyPojo> getHeirarchy(int empId, String post);

	List<LeaveDetailsPojo> getLeaves(String empId);

	List<EmpHierarchyPojo> searchEmp(String empId);

	List<FestivalMasterPojo> getFestivals(int officeId);
	/*****************************/

	
//********************************************************************/
	List<EmpMasterPojo> getEmpDetails(String empId);

	boolean settingDataUpdate(SettingBean settingBean);

	LeaveRulesPojo getSettingData();

	List<AttendanceMasterPojo> getEmpAttendance(String empId, int year);

	List<LeaveRulesPojo> isHalfDay();

	boolean insertleave(LeaveDetailsPojo p);

	List<LeaveDetailsPojo> pendingLeave(String empId);

	List<FestivalMasterPojo> loadHoliday();

	LeaveMasterPojo leaveapply(String empId);

	List<LeaveTypePojo> getcolor();

	List<LeaveDetailsPojo> viewPendingLeave(String status, List<EmpHierarchyPojo> li1);

	List<EmpHierarchyPojo> loadhirarchy(String empId);

	boolean leaveapproved(String status, String approvedBy, String approvedDate, String empId);

	List<LeaveDetailsPojo> loadendingLeave(String empId);

	boolean getEmpDetails(EmpMasterPojo empPojo, List<EmpEduDetailsPojo> eduPojoList, EmpEmployerPojo employerPojo,
			List<DocMasterPojo> docList);

	String generateEmpId();

	List<LeaveDetailsPojo> totalLeave();

	List<AttendanceMasterPojo> attendance(List<AttendanceBean> lBean1, String selectMnth, int year);

	boolean Test1DataInsert(String name, int mob, String emailId, String dob);

	List<Test1Pojo> getInsertedData();

	boolean deleteRecord(String emailId);

	boolean updateIt(int id, String name, int mob, String email, String dob);



	


}
