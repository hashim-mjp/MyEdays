package com.ms.avalon.master.controllers;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.ms.avalon.master.beans.AttendanceBean;
import com.ms.avalon.master.beans.AttendanceMasterBean;
import com.ms.avalon.master.beans.EduDetailsBean;
import com.ms.avalon.master.beans.EmpBean;
import com.ms.avalon.master.beans.EmpDetailsBean;
import com.ms.avalon.master.beans.EmpMasterBean;
import com.ms.avalon.master.beans.EmployerBean;
import com.ms.avalon.master.beans.HolidayBean;
import com.ms.avalon.master.beans.SearchResultBean;
import com.ms.avalon.master.beans.SettingBean;
import com.ms.avalon.master.dao.EmpDao;
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
import com.ms.avalon.master.service.EmpService1;
@Controller
@Scope("session")
public class EmpController {
	@Autowired
	EmpService1 es;
	
private static final String UPLOAD_DIRECTORY="/images/";
@RequestMapping(value="/emplogin")
public @ResponseBody String SecureLogin(String username,String psw,HttpSession session,HttpServletRequest req){
	boolean b1=es.login(username,psw,session);
	if(b1){
		return "success";
	}
	else
		return "fail";
}




@RequestMapping(value="getHerarchy")
public @ResponseBody String getHeirarchy(HttpServletRequest rqst){
	int empId=Integer.parseInt(rqst.getSession().getAttribute("empId").toString());
	return "";
}
@RequestMapping(value="dashboard")
public String goDashboard(){
	return "EmpDashBoard";
}
@RequestMapping(value="getHolidays")
public @ResponseBody String getHolidays(HttpServletRequest rqst){
	/*int empId=Integer.parseInt(rqst.getSession().getAttribute("empId").toString());
	List<LeaveDetailsPojo> li=es.getLeaves(empId);
	Gson gson=new Gson();
	String s=gson.toJson(li);*/
	
	return "";
}

@RequestMapping(value="/home")
public String goHome(HttpSession s){
	if(s.getAttribute("empDetails")==null){
		return "Login";
	}
	return "Home";
}
@RequestMapping(value="/Load_operation_bar")
public String load(String activityName){
	if(activityName.equals("Dashboard"))
	return "EmpProfileSearch";
	if(activityName.equals("EmpDetails"))
		return "EmpProfileSearch";
	return "Blank";
}


@RequestMapping(value="/Load_result_bar")
public String loadResultBar(String activityName){
	if(activityName.equals("Dashboard"))
		return "EmpDashBoard";
	if(activityName.equals("EmpDetails"))
		return "EmpProfile";
	if(activityName.equals("managerDashboard")){
		return "ManagerDashBoard";
	}
	return "Blank";
}
@RequestMapping(value="/Load_sec1_bar")
public String loadSec1Bar(String activityName){
	if(activityName.equals("Dashboard"))
	return "EmpDashbord_Sec1";
	if(activityName.equals("EmpDetails"))
		return "Graph1";
	return "Blank";
}
@RequestMapping(value="/Load_sec2_bar")
public String loadSec2Bar(String activityName){
	if(activityName.equals("Dashboard"))
	return "EmpDashBord_sec2";
	if(activityName.equals("EmpDetails"))
		return "Graph2";
	
	return "Blank";
}

@RequestMapping(value="/Load_sec3_bar")
public String loadSec3Bar(String activityName){
	if(activityName.equals("Dashboard"))
	return "EmpDashBoard_sec3";
	if(activityName.equals("ManagerDashBoard"))
		return "EmpDashBoard_sec3";
	return "Blank";
}
@RequestMapping(value="/getEmpDetails")
public @ResponseBody String getEmpDetails(HttpSession session){
	EmpDetailsBean d=(EmpDetailsBean)session.getAttribute("empDetails");
	if(d!=null){
		Gson g=new Gson();
		return g.toJson(d);
	}
	return null;
}
@RequestMapping(value="/searchAll")
public @ResponseBody String searchAll(HttpSession session){
	EmpDetailsBean d=(EmpDetailsBean)session.getAttribute("empDetails");
	List<SearchResultBean> rst=es.searchEmp(d.getEmpId());
	if(rst!=null){
Gson g=new Gson();
		
		return g.toJson(rst);
	}
	return null;
}
@RequestMapping(value="/getSub")
public @ResponseBody String getSub(String empId){
	List<SearchResultBean> rst=es.searchEmp(empId);
	if(rst!=null){
		return new Gson().toJson(rst);
	}
	return "";
	
}

@RequestMapping(value="/getfestivals")
public @ResponseBody String getfestivals(int officeId){
	
	List<FestivalMasterPojo> li=es.getFestivals(officeId);
	return new Gson().toJson(li);
	
}
@RequestMapping(value="/getLeaves")
public @ResponseBody String getLeaves(String empId){
	
	List<LeaveDetailsPojo> li=es.getLeaves(empId);
	return new Gson().toJson(li);
	
}



/*@RequestMapping(value="/test")
public String get(){
	//return "LeaveApply";
	return "";
	//return "Setting";
}*/

@RequestMapping(value="/getEmpFullDetails")
public @ResponseBody String getfullEmpDetails(String empId){
	List<EmpMasterPojo> li=es.getEmpDetails(empId);
	return new Gson().toJson(li);
	
}
@RequestMapping(value="/getfullDetails")
public @ResponseBody String getFullEmpDetail(HttpSession session){
	EmpDetailsBean d=(EmpDetailsBean)session.getAttribute("empDetails");
	String empId=d.getEmpId();
	List<EmpMasterPojo> li=es.getEmpDetails(empId);
	return new Gson().toJson(li);
	
}
@RequestMapping(value="/settingDataUpdate")
public @ResponseBody String  settingDataUpdate(String data){
	Gson g=new Gson();
	SettingBean[] s=g.fromJson(data, SettingBean[].class);
	boolean st=es.settingDataUpdate(s[0]);
	return "Successfully Updated";
	
}
@RequestMapping(value="/getSettingData")
public @ResponseBody String  getSettingData(){
	LeaveRulesPojo p=es.getSettingData();
	return new Gson().toJson(p);
	
	
}
@RequestMapping(value="/Empattendance")
public @ResponseBody String getEmpAttendance(HttpSession session){
	EmpDetailsBean d=(EmpDetailsBean)session.getAttribute("empDetails");
	String empId=d.getEmpId();
	List<AttendanceMasterPojo> p=es.getEmpAttendance(empId);
	System.out.println(p.size());
	return new Gson().toJson(p);
	
}
/***********************************************/

@RequestMapping(value="/getcolor")
	public @ResponseBody String getcolor( )
	{
		List<LeaveTypePojo> li=es.getcolor();
		Gson gson=new Gson();
		String s=gson.toJson(li);
		System.out.println(li.size()+"leavetypepojo");
		return s;
	}


@RequestMapping(value="/loadBalance")
	public @ResponseBody String loadBalance(HttpSession session)
	{
	EmpDetailsBean d=(EmpDetailsBean)session.getAttribute("empDetails");
	String empId=d.getEmpId();	
		LeaveMasterPojo e=es.leaveapply(empId);

		Gson gson=new Gson();
		String s=gson.toJson(e);
System.out.println(e+"load balance");
		return s;
	}


@RequestMapping(value="/isHalfDay")
	public @ResponseBody String isHalfDay()
	{
		boolean b=es.isHalfDay();
		System.out.println(b +"is halfday");
		if(b)
			return "ok";
		return "not allow";
	}


@RequestMapping(value="/getholiday")
	public @ResponseBody String getholiday()
	{
				List<HolidayBean> b=es.loadHoliday();
System.out.println(b.size() +"holidays");
		Gson gson=new Gson();
		String s=gson.toJson(b);

		return s;
	}


@RequestMapping(value="/pendingLeave")
	public @ResponseBody String pendingLeave(String fromDate,String toDate,String leave,HttpSession session)
	{
	EmpDetailsBean d=(EmpDetailsBean)session.getAttribute("empDetails");
	String empId=d.getEmpId();	
		List<String> li=es.pendingLeave(empId,fromDate,toDate,leave);
		StringBuilder sb=new StringBuilder();
		System.out.println(li.size() +"pending leave");
		if(li.size()>0)
		{for (String s : li) {
			sb.append("<div>" +s +"</div>");
		}
		return sb.toString();	
		}
		return "nodata";

	}


@RequestMapping(value="/leave-apply-form")
	public  String leaveapply()
	{
		return "LeaveApply";
	}


@RequestMapping(value="/insertleave")
	public @ResponseBody String insertleave(@RequestParam(value="myarr[]") List<String> myarr,HttpSession session)
	{	
	EmpDetailsBean d=(EmpDetailsBean)session.getAttribute("empDetails");
	String empId=d.getEmpId();	
		boolean b=es.insertleave(myarr,empId);
		if(b)
			return "success";
		else
			return "fail";
	}


@RequestMapping(value="/loadPendingLeave")
public @ResponseBody String loadPendingLeave(HttpSession session)
{
	EmpDetailsBean d=(EmpDetailsBean)session.getAttribute("empDetails");
	String empId=d.getEmpId();	
	List<EmpHierarchyPojo> li1=es.loadhierarchy(empId);
	List<LeaveDetailsPojo> li=es.viewPendingLeave(li1);
	System.out.println(li.size()+"hasim***********************");
	Gson gson=new Gson();
	String s=gson.toJson(li);
	return s;
}


@RequestMapping(value="/leaveapproved")
public @ResponseBody String leaveapproved(String status,String empId,String approvedDate,HttpSession session)
{	
	EmpDetailsBean d=(EmpDetailsBean)session.getAttribute("empDetails");
	String approvedBy=d.getEmpId();	
	//String approvedBy=Integer.toString(a);
	boolean b=es.leaveapproved(status,approvedBy,approvedDate,empId);
	
	if(b)
		return "success";
	else
		return "fail";
}


@RequestMapping(value="/notification")
public @ResponseBody String notification(HttpSession session )
{
	EmpDetailsBean d=(EmpDetailsBean)session.getAttribute("empDetails");
	String empId=d.getEmpId();	
	List<EmpHierarchyPojo> li1=es.loadhierarchy(empId);
	List<LeaveDetailsPojo> li=es.viewPendingLeave(li1);
	if(li.size()>0)
	  return "ok";
	return "fail";
}
@RequestMapping(value="/leave-approve-form")
public String leaveApproveForm(){
	return "ApproveLeave";
}

//controller

@RequestMapping(value="/loadingLeave")
	public @ResponseBody String loadingLeave(HttpSession session )
	{
		EmpDetailsBean d=(EmpDetailsBean)session.getAttribute("empDetails");
		String empId=d.getEmpId();	
		float li=es.loadPendingLeave(empId);
		StringBuilder sb=new StringBuilder();
		if(li>0)
		{
			sb.append(li);
			return sb.toString();	
		}
		return "nodata";
	}
@RequestMapping(value="/g1")
public String loadGraph1(){
	return "Graph1";
}
@RequestMapping(value="/settingForm")
public String loadSetting(){
	return "Setting";
}


/***********************************************/


@RequestMapping(value="/qualification")
public @ResponseBody String  getQualification(@RequestBody String str, HttpSession session)
{   
	  Gson g = new Gson();
	  EmpMasterBean[] s = g.fromJson(str, EmpMasterBean[].class);
	  
	 EmpMasterBean eb = s[0];
	  System.out.println(eb.getDoj());
	  System.out.println(eb.getDob());
	 //  req.getSession().setAttribute("sessionRgBean", eb);
	  session.setAttribute("sessionEmpBean", eb);     
	  return "ok";
}

@RequestMapping(value="/qualificationPage")
public  String  getQualificationPage()
{   
	  return "qualification";
}

@RequestMapping(value="/employer")
public @ResponseBody  String   getEmployer(@RequestBody String str, HttpSession session) 
{           	  
	  System.out.println("Employer Stringify: "+ str);
	  List<EmpEduDetailsPojo> eduPojoList = new ArrayList<EmpEduDetailsPojo>(); 
	 
	          	  
	    Gson g = new Gson();
	    EduDetailsBean[] s = g.fromJson(str, EduDetailsBean[].class);
	    
	    System.out.println("GGGSSSOOONN");
	    for (int j = 0; j < s.length; j++) {
			
	    	EduDetailsBean eduDetailsBean = s[j];
           
			EmpEduDetailsPojo ep = new EmpEduDetailsPojo();
	    	ep.setCourseType(eduDetailsBean.getCourseType());
	    	ep.setUniversity(eduDetailsBean.getBoard());
	    	ep.setCourseEnd(eduDetailsBean.getYear());
	    	ep.setProgram(eduDetailsBean.getProgram());
	    	ep.setProgram(eduDetailsBean.getMarks());
	    	
	    	eduPojoList.add(ep);
	
		}
	            	      
	    session.setAttribute("sessionEduBean", eduPojoList);
	    return "employ";
}

@RequestMapping(value="/employerPage")
public String  openEmployerPage()
{
	  return "employer";
}

@RequestMapping(value="/docPage")
public @ResponseBody String  docPage(EmployerBean employer, HttpSession session )
{
	   
	   //req.getSession().setAttribute("sessionEmployerBean", employer);
	   session.setAttribute("sessionEmployerBean", employer);   //*****************
	   EmployerBean a=(EmployerBean)session.getAttribute("sessionEmployerBean");
	   return 	"ok";
}

@RequestMapping(value="/uploadDocPage")
public String openDocPage()
{
	  return "uploadDoc";
}

@RequestMapping(value="/empDoc")
public  String getEmpDoc(@RequestParam ("name")String names[],@RequestParam ("file")MultipartFile files[], HttpSession session) throws IOException
{
	 List <DocMasterPojo> docList = new ArrayList<>();
	 if(files.length != names.length)
		return "Mandatory Information Missing";
	 DocMasterPojo dmp;
	 for(int i=0; i<files.length; i++)
	 {
		 MultipartFile file = files[i];
		 String fileName = file.getOriginalFilename();
		 String name = names[i];
		 ServletContext context = session.getServletContext();
		 String path = context.getRealPath(UPLOAD_DIRECTORY);
		 
		 String fullPath = UPLOAD_DIRECTORY+ File.separator +fileName;
		 
		 byte[] bytes = file.getBytes();
		 
		 BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(path+ File.separator +fileName)));
   	 stream.write(bytes);
   	 stream.flush();
   	 stream.close();
   	 
   	 dmp = new  DocMasterPojo();
   	 dmp.setDocName(name);
   	 dmp.setUrl(fullPath);
   	 docList.add(dmp);
	 }
	
  EmpMasterBean eb = (EmpMasterBean) session.getAttribute("sessionEmpBean");
  List<EmpEduDetailsPojo> eduPojoList = (List<EmpEduDetailsPojo>) session.getAttribute("sessionEduBean");
  EmployerBean ep = (EmployerBean) session.getAttribute("sessionEmployerBean"); 
  
  boolean b = es.getEmpDetails(eb, eduPojoList, ep, docList);
		return "success";
	
} 

@RequestMapping(value="/add-emp")
public String addEmp(){
	return "empRegistration";
}
/****************************************************/


//Manager Dashboard


//controller

@RequestMapping(value="/loadhierarchy")
	public @ResponseBody String loadhierarchy(HttpSession session)
	{
		EmpDetailsBean d=(EmpDetailsBean)session.getAttribute("empDetails");
		String empId=d.getEmpId();
		List<EmpHierarchyPojo> li=es.managerLoadhierarchy(empId);
		Gson gson=new Gson();
		String s=gson.toJson(li);
		ArrayList<AttendanceBean> lBean=new ArrayList<AttendanceBean>();
		AttendanceBean aBean;
		for (EmpHierarchyPojo p : li) {
			aBean=new AttendanceBean();
			aBean.setEmpId(p.getEmpId());
			lBean.add(aBean);

		}

		session.setAttribute("eId",lBean);
		return s;
	}

@RequestMapping(value="/totalLeave")
	public @ResponseBody String totalLeave(HttpSession session)
	{
		EmpDetailsBean d=(EmpDetailsBean)session.getAttribute("empDetails");
		String empId=d.getEmpId();
		List<LeaveDetailsPojo> li=es.totalLeave(empId);
		Gson gson=new Gson();
		String s=gson.toJson(li);
		return s;
	}


@RequestMapping(value="/attendance")
	public @ResponseBody String attendance(HttpSession session,String selectMnth,int year )
	{
		List<AttendanceBean> lBean1=(ArrayList<AttendanceBean>) session.getAttribute("eId");
		System.out.println(lBean1.size()+"lbean size");
		List<AttendanceMasterPojo> li=es.attendance(lBean1,selectMnth,year);
		Gson gson=new Gson();
		String s=gson.toJson(li);
		return s;
	}
@RequestMapping(value="/manager-dashboard")
public String managerDashboard( )
{
return "ManagerDashBoard";
}

///////////////////////

@RequestMapping(value="/monthlyLeave")
public @ResponseBody String monthlyLeave(HttpSession session )
{
	EmpDetailsBean d=(EmpDetailsBean)session.getAttribute("empDetails");
	String empId=d.getEmpId();	
	float[] f=es.monthlyLeave(empId);
	Gson gson=new Gson();
	String s=gson.toJson(f);
	return s;
}
@RequestMapping(value="/g2")
public String graph2()
{
	return "Graph2";
}
@RequestMapping(value="/logout")
public String logout(HttpSession session){
	session.removeAttribute("empDetails");
	
	return "Login";
	
}




//*********************************************************************//
@RequestMapping(value="/test1")
public String Test1(){
	return "MyTest1";
}

@RequestMapping(value="/test1DataInsert")
public @ResponseBody String Test1DataInsert(String name,int mob,String emailId, String dob){
	boolean b=es.Test1DataInsert(name,mob,emailId,dob);
	if(b)
	return "Successfully Saved";
	
	return "fail";
}
@RequestMapping(value="/getInsertedData")
public @ResponseBody String getInsertedData(){
	List<Test1Pojo> p=es.getInsertedData();
	
	return new Gson().toJson(p);
}
@RequestMapping(value="/deleteRecord")
public @ResponseBody String deleteRecord(String emailId ){
	boolean b=es.deleteRecord(emailId );
	return "successfully deleted";
	
}
@RequestMapping(value="/updateIt")
public @ResponseBody String updateIt(int id,String name,int mob,String email, String dob){
	boolean b=es.updateIt(id,name,mob,email,dob);
	return "Updated";
	
}
}

