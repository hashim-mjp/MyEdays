<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/jquery-1.11.2.min.js"></script>
<style>

	 .noticeBoard{
        	float: left;
    		width: 100%;
    		background-color: #fff;
    		padding: 10px;
    		box-sizing:border-box;
        }
        .info{
        float: left;
    width: 100%;
    margin-top: 12px;
    background-color: #fff;
        
        }
         .hdr{
       		 float:left;
        	width:100%;
            font-size: 15px;
    		color: #585858;
    		
        }
        .img{
           float: left;
    width: 12%;
    box-sizing: border-box;
    text-align: center;
    border: 1px solid black;
    min-width:131px;
   
        }
        .img-1{
        /* background-color: #999595; */
    float: left;
    width: 132px;
    height: 140px;
    box-sizing: border-box;
    border: 1px solid #d9d9d9;
    background-image: url(images/propic.png);
    background-position: center;
    background-size: 140px;
    background-repeat: no-repeat;
       box-sizing:border-box;
    
    
        }
        .dtails{
           float: left;
    width: 64%;
   /*  border: 1px solid black; */
    box-sizing: border-box;
    height: 200px;
    padding-left: 10px;;
           
        }
        .dtails-1{
        float: left;
    	width: 100%;
    	box-sizing: border-box;
    	border-bottom: 1px solid #a3a3a3;
    	background-color: #f3f3f3;
    	padding: 5px 0px 6px 10px;
    
        }
        .dtails .label1{
        	float:left;
        	width:50%;
    		border-right: 1px dashed #a3a3a3;
    		box-sizing:border-box;
        }
         .dtails .label2{
          float:left;
          width:50%;
          box-sizing: border-box;
   		 padding-left: 10px;
        }
</style>
<script>
$(document).ready(function(){
	var empdetails = $.parseJSON($.ajax({
		url : "getEmpDetails",
		type : "post",
		dataType:'json',
		async: false
	}).responseText);
 $("#empId").html(empdetails.empId);
$("#empName").html(empdetails.fName);
$("#deptId").html(empdetails.departmentId) ;
$("#officeId").html(empdetails.officeId);
$("#mob").html(empdetails.mobile);
$(".img-1").css('background-image',"url('/Avalon-1.0/"+empdetails.pic+"')")
})

</script>
</head>
<body>
<div class="noticeBoard">
    <div class=" hdr">Personal Information</div>
    <div class="info">
    	<div class='img'>
    	<div class='img-1'></div>
    	<!-- <div style="float:left;width:168px; text-align:center;"><button>Change Image</button></div> -->
    	
    	</div>
    	<div class='dtails'>
    		<div class="dtails-1"><div class="label1">Emp Id</div><div class="label2" id="empId"></div></div>
    		<div class="dtails-1"><div class="label1">Name</div><div class="label2" id="empName"></div></div>
    		<div class="dtails-1"><div class="label1">Department Id</div><div class="label2" id='deptId'></div></div>
    		<div class="dtails-1"><div class="label1">Office Id</div><div class="label2" id='officeId'>Mohd hashim</div></div>
    		<div class="dtails-1"><div class="label1">Mobile No</div><div class="label2" id='mob'>Mohd hashim</div></div>
    	</div>
    	
    	
    </div> </div>
</body>
</html>