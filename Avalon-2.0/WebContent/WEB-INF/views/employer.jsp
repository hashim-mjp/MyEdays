<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href='<%=request.getContextPath()%>/css/bootstrap.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-1.11.2.min.js"></script>
	
	<style>
   .arrow::after
  {
    content:"   >";
  }
  .upper
  {
    margin-top: 2%;
  }
   .main{
    margin-top:2%;
    padding-top: 1%;
   } 
   #tab3
   {
    color:#FF5733;
   }  
	</style>
	
	<script type="text/javascript">

      var employerName = $("#employerName").val();
      var designation = $("#designation").val();
      var joiningDate = $("#joiningDate").val();
      var relievingDate = $("#relievingDate").val();
      var role = $("#role").val();
      var ctc = $("#ctc").val();
      var reportingPerson = $("#reportingPerson").val();
      var monthlySal = $("#monthlySal").val();
      var hrName =$("#hrName").val();
      var hrEmail = $("#hrEmail").val();
      var hrMobNo = $("#hrMobNo").val();
      
 </script>

</head>

<body>

   <div class = "container upper">
   
   <div class="row">
     <div class="col-xs-18"> 
        <div class="row">
           <div class="col-xs-7 tabs arrow" >Personal Details</div>
           <div class="col-xs-7 tabs arrow">Qualifications</div>
           <div class="col-xs-7 tabs arrow" id="tab3">Employer</div>
           <div class="col-xs-7 tabs">Upload Document</div>
        </div>
     </div>
     </div>
  </div>

   <div class="container main">
   <form id="employerForm">
        <div class=" row form-group">
         <div class="col-xs-9">
            <Label>Employer Name:</Label>
            </div>
         <div class="col-xs-9">
            <input type="text" placeholder="Employer Name" name="employerName" id="employerName" value="Punsay">
            </div>
        <div class="col-xs-9">
            <Label>Designation:</Label>
            </div>
         <div class="col-xs-9">
            <input type="text" placeholder="Designation" name="designation" id="designation" value="engineer">
           </div>
        </div>
        
        <div class="row form-group">
         <div class="col-xs-9 ">
            <Label>Joining Date:</Label>
            </div>
         <div class="col-xs-9">
            <input type="text" placeholder="Joining Date" name="joiningDate" id="joiningDate" value="2 may 18">
            </div>
        <div class="col-xs-9">
            <Label>Relievinig Date</Label>
            </div>
         <div class="col-xs-9">
            <input type="text" placeholder="Relieving Date" name="relievingDate" id="relievingDate" value="9 may 18">
            </div>
        </div>
        
        <div class="row form-group">
         <div class="col-xs-9 ">
            <Label>Role:</Label>
            </div>
         <div class="col-xs-9">
            <input type="text" placeholder="Role" name="role" id = "role" value="developer">
            </div>
        <div class="col-xs-9">
            <Label>CTC</Label>
            </div>
         <div class="col-xs-9">
            <input type="text" placeholder="CTC" name="ctc" id = "ctc" value="1700000">
            </div>
        </div>
        
        <div class=" row form-group">
         <div class="col-xs-9 ">
            <Label>Reporting person:</Label>
            </div>
         <div class="col-xs-9">
            <input type="text" placeholder="Reporting person" name="reportingPerson" id ="reportingPerson" value="dipeeka">
            </div>
        <div class="col-xs-9">
            <Label>Monthly Salary</Label>
            </div>
         <div class="col-xs-9">
            <input type="text" placeholder="Monthly Salary" name="monthlySal" id = "monthlySal" value="140000">
            </div>
        </div>
        
        <div class="row form-group">
         <div class="col-xs-9 ">
            <Label>HR Name:</Label>
            </div>
         <div class="col-xs-9">
            <input type="text" placeholder="HR Name" name="hrName" id="hrName" value="Khushboo">
            </div>
        <div class="col-xs-9">
            <Label>HR Email:</Label>
            </div>
         <div class="col-xs-9">
            <input type="text" placeholder="HR Email" name="hrEmail" id="hrEmail" value="punsay@gmail.com">
            </div>
        </div>
        
        <div class="row form-group">
         <div class="col-xs-9 ">
            <Label>HR Mobile No.:</Label>
            </div>
         <div class="col-xs-9">
            <input type="text" placeholder="HR Mobile No." name="hrMobNo" id="hrMobNo" value="9990907754">
            </div>
        </div>
  
        <div class="row form-group">
            <div class="col-xs-27">
            </div>
            
            
            
        </div>
        </form>
        <div class="col-xs-9 button">
                <button>Previous</button>
                <button onclick="nextEmployer()">Next</button>
            </div>
    </div>
    </body>
    </html>