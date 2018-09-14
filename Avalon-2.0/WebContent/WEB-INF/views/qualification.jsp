<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Qualification</title>
<link href='<%=request.getContextPath()%>/css/bootstrap.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-1.11.2.min.js"></script>
    
<style>
    
    #tab2
    {
      color:#FF5733;
    }
    
    .main
    {
      margin-top:2%; 
      /*border: 1px solid black;*/
    } 
    .header
    {
        background-color: aliceblue;
        height: 30px;
    }
    .hContent
    {
        padding-top:6px;
    }
    .middle
    {
        margin-top:10px;
        height: 40px;   
    }
    .lower
    {
        /* border: 1px solid tomato; */
        height: 30px;
        margin-top: 5%;
        float: left;
    }
    .btn
    {
        float:left;
    }
    .detail
    {
        margin-top: 3px ;
    }
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
   .
   {
     margin-top:5%;
   }
     
</style>
    
    <script type="text/javascript">
                  
         var len;
         var str;
        $(document).ready(function()
        {  
         len =4;
         $("#rmBtn").hide();
        });
        function  removeCourse() {
                
                len--;
                $("#"+len).remove();
                console.log(len);
                if(len==4)
                    {
                        $("#rmBtn").hide();
                    }
                else{
                         $("#rmBtn").show();
                }    
                   console.log("After remove"+ len);
                   
                    }
        
        function addCourse()
        {       
        	$("#rmBtn").show();
            $(".middle").append('<form id = "'+len+'"><div class="form-group "><div class="col-xs-8 "><input type="text" placeholder="Course" id= "1'+len+'" name="courseType"></div><div class="col-xs-9"><input type="text" placeholder="Board/University" id="2'+len+'" name ="board"></div><div class="col-xs-7"><input type="text" placeholder="Year" name="year" id="3'+len+'" name="year"></div><div class="col-xs-6"><input type="text" placeholder="Program" id="4'+len+'" name="program"></div><div class="col-xs-6"><input type="text" placeholder="Marks(%)" id="5'+len+'" name="marks"></div></div></form>');
            
            len = len + 1;        
            console.log("After add"+ len);
        } 
         </script>
</head>
<body>

<div class = "container upper">
   <div class="row">
     <div class="col-xs-18"> 
        <div class="row">
           <div class="col-xs-7 tabs arrow" >Personal Details</div>
           <div class="col-xs-7 tabs arrow" id="tab2">Qualifications</div>
           <div class="col-xs-7 tabs arrow">Employer</div>
           <div class="col-xs-7 tabs">Upload Document</div>
        </div>
     </div>
     </div>
  </div>

<div class=" container main ">    
<div class="row header">
    <div class="col-xs-8 hContent"><b>Course Type</b></div>
    <div class="col-xs-9 hContent"><b>Board/University</b></div>
    <div class="col-xs-7 hContent"><b>Passout Year</b></div>
    <div class="col-xs-6 hContent"><b>Program</b></div>
    <div class="col-xs-6 hContent"><b>Marks</b></div>
</div>
    <div class=" middle form-group">
        <form id = "1" >
      <div class=" form-group ">
        <div class="col-xs-8 ">
        <input type="text" placeholder="Course" id="11" name="courseType" value="Matriculation" class="edu" >
        </div>
       <div class="col-xs-9">
       <input type="text" placeholder="Board/University" id="21" name ="board" value="CBSE" class="edu">
        </div>
      <div class="col-xs-7">
        <input type="text" placeholder="Year" name="year" id="31" name="year" value="2012" class="edu">
        </div>
     <div class="col-xs-6">
        <input type="text" placeholder="Program" id="41" name="program" value="half time" class="edu">
        </div>
      <div class="col-xs-6" >
        <input type="text" placeholder="Marks(%)" id="51" name="marks" value="96%" class="edu">
        </div>
        </div>
            </form>
        
        <form id = "2">
    <div class=" form-group ">
        <div class="col-xs-8 ">
        <input type="text" placeholder="Course" name="courseType" id="12" value="Intermediate" class="edu">
        </div>
       <div class="col-xs-9">
       <input type="text" placeholder="Board/University" id="22" name ="board" value="CBSE" class="edu">
        </div>
      <div class="col-xs-7">
        <input type="text" placeholder="Year" id="32" name="year" value="2014" class="edu">
        </div>
     <div class="col-xs-6">
        <input type="text" placeholder="Program" id="42" name="program" value="half time" class="edu">
        </div>
      <div class="col-xs-6">
        <input type="text" placeholder="Marks(%)" id="52" name="marks" value="89%" class="edu">
        </div>
        </div>
            </form>
        
        <form id = "3">
    <div class="form-group ">
        <div class="col-xs-8 ">
        <input type="text" placeholder="Course" id="13" name="courseType" value="B.tech" class="edu">
        </div>
       <div class="col-xs-9">
       <input type="text" placeholder="Board/University" id="23" name ="board" value="Mdu" class="edu">
        </div>
      <div class="col-xs-7">
        <input type="text" placeholder="Year" id="33" name="year" value="2018" class="edu">
        </div>
     <div class="col-xs-6">
        <input type="text" placeholder="Program"  id="43" name="program" value="full time" class="edu">
        </div>
      <div class="col-xs-6">
        <input type="text" placeholder="Marks(%)" id="53" name="marks" value="91%" class="edu">
        </div>
        </div>
            </form>
    </div>
    
    <div class="lower">
        <div class="col-xs-4 btn"> 
            <button onclick="addCourse()">Add Course</button>
            <button onclick="removeCourse()" id="rmBtn">Remove course</button>
            
            <button >Prev</button>
            <button onclick="nextQualification()">Next</button>
        
        </div>
    </div> 
    </div>
</body>
</html>   