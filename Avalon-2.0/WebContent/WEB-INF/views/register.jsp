<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href='<%=request.getContextPath()%>/css/bootstrap.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">


 function nextForm()
 { 	
	 $(".main").hide();
	 return false; 
 }
 
 function copyPAddress()
 {   
     if($("#c1").attr('checked', true))
     {   
		 $("#cAddress").val($("#pAddress").val());
     }
 }


	</script> 

<style>
    #tab1
    {
      color:#FF5733  ;
    }
    #nextBtn
    {
        float: right;
    }
   .main{
    margin-top:2%;
    padding-top: 1%;
   } 
  .mandatory::after { 
   content:"*";
   color:red;
  }
  .lower
  {
    margin-top:2%;
  }
  .upper
  {
    margin-top: 2%;
  }
  .tabs
  { 
    float:left;
  }
  
  .arrow::after
  {
    content:"   >";
  }
</style>
</head>

<body>

   <div class = "container upper">
   <div class="row">
     <div class="col-xs-18"> 
        <div class="row">
           <div class="col-xs-7 tabs arrow" id = "tab1">Personal Details</div>
           <div class="col-xs-7 tabs arrow">Qualifications</div>
           <div class="col-xs-7 tabs arrow">Employer</div>
           <div class="col-xs-7 tabs">Upload Document</div>
        </div>
     
     </div>
     </div>
  </div>

<form  id= "personalDetailsForm">
<div class="container main">
   <div class= "row form-group" > 
   <div class="col-xs-9 mandatory" id="fNameLbl" >First Name
   </div>
   <div class="col-xs-9"><input type="text" value="Punsay" placeholder="First Name" name='fName' required id="fName" class="textFld">
   </div>
   <div class="col-xs-9">Last Name
   </div>
   <div class="col-xs-9"><input type="text" value="Prakhar" id="lName" placeholder="Last Name" name='lName' required class="textFld">
   </div> 
</div>

<div class= "row form-group" > 
    <div class="col-xs-9">Date of Birth
   </div>
   <div class="col-xs-9"><input type="text" value="2018-05-12" name="dob">
 </div>  
   
   <div class="col-xs-9">Date of Joining
   </div>
   <div class="col-xs-9"><input type="text" id="doj" placeholder="DOJ" name='doj' value="2018-05-18 16:54:21" required class="textFld">
 </div> 
    </div>

<div class= "row form-group" > 
   <div class="col-xs-9 mandatory">Mobile Number
   </div>
   <div class="col-xs-9"><input type="text" value="99688" id="mobNo" placeholder="Mobile Number"  name='mobile' required class="textFld">
   </div>
   
   <div class="col-xs-9 ">Alternate Mobile Number
   </div>
   <div class="col-xs-9"><input type="text" id="altMobNo" value="2345" placeholder="Alternate Mobile Number" name='altMobile' required class="textFld">
   </div>
   </div>
 
 <div class= "row form-group" > 
 
    <div class="col-xs-9 mandatory">Emergency Mobile Number
   </div>
   <div class="col-xs-9"><input type="text" value="7689" id="eMobNo" placeholder="Emergency Mobile Number"  name='emergencyMobile' required class="textFld">
   </div>
 
 </div>

<div class= "row form-group" > 
      <div class="col-xs-9 mandatory">E-mail ID
   </div>
   <div class="col-xs-9 "> <input type="text" value="punsay@gmail.com" id="emailId" placeholder="Email ID" name='email' required class="textFld">
   </div>
    
   <div class="col-xs-9">Alternate E-mail ID
   </div>
   <div class="col-xs-9"><input type="text" value="poonam@gmail.com" id="altEmailId" placeholder="Alternate Email Id" name='altMail' required class="textFld">
   </div> 
   
    
</div>

<div class= "row form-group" > 
  <div class="col-xs-9">Designation
   </div>
   <div class="col-xs-9"><input type="text" id="designation" value="project manager" placeholder="designation" name='designation' required class="textFld">
   </div>
   
    <div class="col-xs-9">Role
   </div>
   <div class="col-xs-9"><input type="text"  value ="lead" id="gender" placeholder="Role"  name='role' required class="textFld">
   </div>
   </div>
   
<div class= "row form-group" >   
   <div class="col-xs-9">Gender
   </div>
   <div class="col-xs-9"><input type="text" id="gender" value="Male" placeholder="Gender" name='gender' required class="textFld">
   </div> 
   
   <div class="col-xs-9">Working Status
   </div>
   <div class="col-xs-9"><input type="text" id="workingSts" value="Regular" placeholder="Working Status" name='status' required class="textFld">
   </div>   
</div>    


<div class= "row form-group" >
  <div class="col-xs-9">Pan Number
   </div>
   <div class="col-xs-9"> <input type="text" id="panNo" value="44678" placeholder="PAN Number" name='panNo' required class="textFld">
   </div>
   <div class="col-xs-9">Passport Number
   </div>
   <div class="col-xs-9"><input type="text" id="passportNo"  value="6545457" placeholder="Passport Number" name='passportNo' required class="textFld">
   </div> 
</div>

<div class= "row form-group" >
   <div class="col-xs-9">Adhaar Card  Number
   </div>
   <div class="col-xs-9"> <input type="text" id="adhaarCardNo" value="76746579809775" placeholder="Adhaar Card Number" name='uId' required class="textFld">
   </div>
</div>
    
 <div class= "row form-group" > 
   <div class="col-xs-9">Address
   </div>
     <div class="col-xs-9"><textarea rows="3" cols="21" id="address" name='address' placeholder="Address" required class="textFld"></textarea>
   </div>
    <div class="col-xs-9">State      
   </div>
   <div class="col-xs-9"><input type="text" value="Uttar Pradesh" placeholder="State" name='state' id='state' required class="textFld">
   </div>
</div> 
    
    
<div class= "row form-group" > 
   <div class="col-xs-9">Country
   </div>
    <div class="col-xs-9"><input type="text" placeholder="Country" value="India" name='country' required class="textFld">
   </div>
    <div class="col-xs-9">PIN
   </div>
   <div class="col-xs-9"><input type="text" placeholder="PIN" value="89756" name="pin" required class="textFld">
   </div>
</div> 

    </div>
    </form>
    
    <div class = "container lower">
   <div class="row">
     <div class="col-xs-9 col-xs-offset-27"><input type="submit" value= "Next" onclick="nextPersonalInfo()" id="nextBtn" > </div>
  </div>
  </div>
    
      </body>
</html>