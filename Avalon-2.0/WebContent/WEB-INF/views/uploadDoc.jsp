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
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
 .docMain{
    margin-top:2%;
    padding-top: 1%;
   } 
	  #docName 
	{
	   float:right;
	}
	#empSign
	{
	  float:right;
	}
	 .arrow::after
  {
    content:"   >";
  }
	.upper
  {
    margin-top: 2%;
  }
  
  #tab4
  {
   color:#FF5733;
  }
  .lower
  {
    margin-left:3%;
  }
  #subBtn
  {
     float:right;
  }
  #image
  {
    border:1px solid black;
    /* height:100px;
    width:100px; */
  }
  img{
      height: 100px;
      width: 148px;
      border: 2px solid lightblue;
  }
	</style>

<script type="text/javascript">
    	
	var size = 3;
	var documentName = [];
	var file = [];
	
/* 	$(document).ready(function(){
		$(".model").css("display","none");
	});
 */	
	 function add()
	 {
			$(".docMain").append('<div class="row form-group" id="'+size+'"><div class="col-xs-10" >Doc Name:<input type="text" name = "name" placeholder="Document Name" id="1'+size+'1" ></div><div class="col-xs-10" ><input type="file" name= "file" id="1'+size+'2" ></div><div ><img id="1'+size+'3"></div></div>');
	        size = size+1;
	        console.log("After add "+size);
	 }
	 
	 function removeDoc()
	 {    
		    console.log("remove button clicked  " +size);
		    size=size-1;
		    $("#"+size).remove();
		    console.log("After remove "+size);
	}
	 function cancel()
	 {
		 $(".model").css("display","none");
	 }
	function ok()
	{
		$("#finalForm").submit();
	}
    var count=0;
	var openFile = function(event) {
	    var input = event.target;
        count=count+1;
	    var reader = new FileReader();
	    reader.onload = function(){
	      var dataURL = reader.result;
	      var output = document.getElementById('1'+count+'3');
	      output.src = dataURL;
	    };
	    reader.readAsDataURL(input.files[0]);
	  };
		</script>
	</head>
<body>

<div class = "container upper">
   <div class="row">
     <div class="col-xs-18"> 
        <div class="row">
           <div class="col-xs-7 tabs arrow" >Personal Details</div>
           <div class="col-xs-7 tabs arrow">Qualifications</div>
           <div class="col-xs-7 tabs arrow">Employer</div>
           <div class="col-xs-7 tabs" id="tab4">Upload Document</div>
        </div>
     </div>
     </div>
  </div>

<form method='POST' action='empDoc' enctype='multipart/form-data'  id="finalForm"  >
<div class="container docMain">
    <div class="row form-group" id="1">
    <div class="col-xs-10" >Doc Name:<input type="text" name= "name" placeholder="Signature" id="111"></div>
    <div class="col-xs-10"><input type="file" name= "file" id="112" accept='image/*' onchange='openFile(event)' ></div>
    <div><img id='113' ></div>  
</div>
   
<div class="row form-group" id="2">
    <div class="col-xs-10" >Doc Name:<input type="text" name= "name" placeholder="Profile Picture" id="121"></div>
    <div class="col-xs-10" ><input type="file" name= "file" id="122" accept='image/*' onchange='openFile(event)' ></div>
    <div ><img id="123"></div>
</div>  
    </div> 
 </form>
    
 <div class="container lower">
  <div>
    <div class="col-xs-12">
    <button onclick="add()">Add</button>
    <button onclick="removeDoc()" id="rmBtn">Remove</button>
    <button id="subBtn" onclick="openPopup()">Submit</button>
    </div>
  </div>
</div>
<script>

</script>

</body>
</html>