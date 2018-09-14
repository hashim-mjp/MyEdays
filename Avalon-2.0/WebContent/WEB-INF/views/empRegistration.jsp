<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href='<%=request.getContextPath()%>/css/bootstrap.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-1.11.2.min.js"></script>
<style type="text/css">
 .model {
	    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.6);
    position: absolute;
    z-index: 1000;
    display: none;
    box-sizing: border-box;
    padding-top: 54px;
    OVERFLOW: hidden;
}
.p1{
	width: 920px;
    margin: auto;
    border: 1px solid #999;
    border-radius: 10px;
    box-sizing: border-box;
    background-color: #fff;
}
.up {
	height: 40px;
	border-bottom: 1px solid #999;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	padding: 10px;
	background-color: aliceblue;
	box-sizing: border-box;
}

.mid {
	overflow:scroll;
	overflow-x:hidden;
	height: 375px;
	box-sizing: border-box;
	text-align:left;
	padding: 11px 57px;
}

.up-l {
	float: left;
    font-size: 25px;
    line-height: 17px;
}

.up-r {
	float: right;
}

.low {
	padding-left: 200px;
	padding-top: 10px;
	border-top: 1px solid #999;
	background-color: #fff;
}
.formPopUp
{
	text-align:left;
	padding:0px;
}
.rcrd-row{
     float: left;
    width: 100%;
    /* background: red; */
    border-bottom: 1px solid #e8e3e3;
    /* text-align: center; */
    padding: 8px 15px;
}

label {
margin:0px;
 }
 
</style>	
<script type="text/javascript">
$(document).ready( function()
		{	
	//alert("ready");
	$("#personalInfo").css("display","block");
	$("#qualification").css("display","none");
	$("#employer").css("display","none");
	$("#uploadDoc").css("display","none");
});

function nextPersonalInfo()
{
   var form = $('#personalDetailsForm').serializeArray();
    console.log(JSON.stringify(form));
	$.ajax({
		url:"qualification",
		type:"POST",
		data:JSON.stringify(form),
		success:function(){
			alert("first page success");
			 					
			$("#personalInfo").css("display","none");
			$("#qualification").css("display","block");
			$("#employer").css("display","none");
			$("#uploadDoc").css("display","none");
				
			
			var fieldValuePairs = $('#personalDetailsForm').serializeArray();
		
			 for(var i=0; i<fieldValuePairs.length; i++)
       	     {
       	     var name= fieldValuePairs[i].name;
       	     var value= fieldValuePairs[i].value;
       	    
       	    //console.log(name+"  "+value);
       	    $("#popUpF1").append("<div class='rcrd-row'><div class='col-xs-10'><label>"+name+" : </label></div><div class='col-xs-10' ><label>" +value+ "</label></div></div><br>");
       	     }
		  } ,
	 			  	
		error:function()
		{
		alert("fail ajax");
		}
	});
 		/* } */
	
}

function nextQualification()
{
	
    var i,j;
    var flag = false;
    var formRows = [];
    var obj
    for(i=1;i<len;i++)
    { 
       var a = $("#1"+i).val();
       var b = $("#2"+i).val();
       var c = $("#3"+i).val();
       var d = $("#4"+i).val();
       var e = $("#5"+i).val();

       obj  = {
       'courseType':a,
       'board': b,
       'year': c,
       'program': d,
       'marks':e,
       }
       
       formRows.push(obj);
    }	 
    var jsonStr = JSON.stringify(formRows);
    
    //console.log(jsonStr)
     $.ajax({
  	    type: "POST",
     	    contentType:"application/json; charset=UTF-8",
     	    //dataType:'json',
     	    url: "employer",
  	    data:JSON.stringify(formRows),
  	    success: function () 
  	    {
             alert("Success, sent data to controller"); 
              //window.open("employerPage","_self");
         	 $("#personalInfo").css("display","none");
        	 $("#qualification").css("display","none");
        	 $("#employer").css("display","block");
        	 $("#uploadDoc").css("display","none");
        	 
        
 		    	var courseType = [];
 		         var board =  [];
 		         var year = [];
 		         var program = [];
 		         var marks = [];

        	  var value ;
        	 
        	 for(var i=1; i<len; i++)
             {
        		 value = $("#1"+i).val();
        		 courseType.push(value);
             }
             
        	 for(var i=1; i<len; i++)
             {
        		 value = $("#2"+i).val();
        		 board.push(value);
             }
        	 for(var i=1; i<len; i++)
             {
        		 value = $("#3"+i).val();
        		 year.push(value);
             }
        	 for(var i=1; i<len; i++)
             {
        		 value = $("#4"+i).val();
        		 program.push(value);
             }
        	 for(var i=1; i<len; i++)
             {
        		 value = $("#5"+i).val();
        		 marks.push(value);
             } 
           
        	console.log("courseType	"+courseType[0]);
  			console.log("board	"+board[0]);
  			console.log("year	"+year[0]);
  			console.log("program	"+program[0]);
  			console.log("marks	"+marks[0]);

  			for(var i=0;i<len-1;i++)
  			{
  			$("#popUpF2").append("<div class='rcrd-row'><div class='col-xs-10'><label> Course Type : </label></div><div class='col-xs-10' ><label>" +courseType[i]+ "</label></div></div><br>");
  			$("#popUpF2").append("<div class='rcrd-row'><div class='col-xs-10'><label> Board : </label></div><div class='col-xs-10' ><label>" +board[i]+ "</label></div></div><br>");
  			$("#popUpF2").append("<div class='rcrd-row'><div class='col-xs-10'><label> Year : </label></div><div class='col-xs-10' ><label>" +year[i]+ "</label></div></div><br>");
  			$("#popUpF2").append("<div class='rcrd-row'><div class='col-xs-10'><label> Program : </label></div><div class='col-xs-10' ><label>" +program[i]+ "</label></div></div><br>");
  			$("#popUpF2").append("<div class='rcrd-row'><div class='col-xs-10'><label> Marks : </label></div><div class='col-xs-10' ><label>" +marks[i]+ "</label></div></div><br>");
  			}
          },
          error: function () {
              alert("All fields are mandatory. ");
          }
  	});	
    
    	}

function nextEmployer()
{
	
	var form = $("#employerForm").serialize();
	var flag = false;
	
      
      if($("#employerName").val()=='' || $("#designation").val()=='' || $("#joiningDate").val()=='' || $("#relievingDate").val()=='' ||
    		  $("#role").val()=='' || $("#ctc").val()=='' || $("#reportingPerson").val()=='' || $("#monthlySal").val()=='' || $("#hrName").val()==''
    		 || $("#hrEmail").val()=='' || $("#hrMobNo").val()=='')
    	  {
    	     alert("All fields are mandatory");
    	  }
      else{
	$.ajax({
		url:"docPage",
		type:"POST",
		data:form,
		success:function(res){
			
			 $("#personalInfo").css("display","none");
			 $("#qualification").css("display","none");
			 $("#employer").css("display","none");
			 $("#uploadDoc").css("display","block");
			 
			 var fieldValuePairs = $('#employerForm').serializeArray();
			 //console.log(fieldValuePairs);
			 for(var i=0; i<fieldValuePairs.length; i++)
       	   {
       	     var name= fieldValuePairs[i].name;
       	     var value= fieldValuePairs[i].value;
       	    
       	    
       	    $("#popUpF3").append("<div class='rcrd-row'><div class='col-xs-10'><label>"+name+":</label></div><div class='col-xs-10' ><label>" +value+ "</label></div></div><br>");
       	  } 
		},
		error:function() 
		{
		  alert("fail ajax: asld");
		}
	});
      }
   } 

function openPopup()
{
	 var documentName = [];	
	 for(var i=1; i<size; i++)
	    	{
	    	  documentName.push($("#1"+i+1).val());
	    	}
	 
	 var docLen = documentName.length;
	 console.log("doc len" + docLen);
	 if(documentName[0]=='' || documentName[1]=='' || $("#112").val()=='' || $("#112").val()=='' )
     {
		 alert("Your signature and profile pic are mandatory. Enter your document name and also upload it.");
     }
	 else
		 {
	 $(".model").css("display","block");
	 for(var i=0; i<docLen; i++)
 	{    
		 
 	     console.log("poopup hit");
		 $("#popUpF4").append("<div class='rcrd-row'><div class='col-xs-10'><label> Document Name : </label></div><div class='col-xs-10' ><label>" +documentName[i]+ "</label></div></div><br>");
 	     console.log("Document Name :"+ documentName[i]);
 	}	
   }
 }
</script>
</head>
<body>
<div class="model">
		<div class=" p1">
			<div class="up">
				<div class="up-l">Confirm details..</div>
				<div class="up-r">
					<i class="fa fa-remove" style="font-size: 28px;" onclick="cancel()"></i>
				</div>
			</div>
			<div class="mid">
			    <div class="formPopUp" id="popUpF1">Personal Details </div>
			    <div class="formPopUp" id="popUpF2">Qualifications </div>
			    <div class="formPopUp" id="popUpF3">Employer Information </div>
			    <div class="formPopUp" id="popUpF4">Your Documents </div>							
			</div>
			<div class="low">
				<button id="ok" onclick="ok()">OK</button>
				<button id="cancel" onclick="cancel()">Cancel</button>
			</div>
		</div>
	</div>
	
  <div>
     <div id="personalInfo">
       <jsp:include page="register.jsp"></jsp:include>
     </div>
     <div id="qualification">
       <jsp:include page="qualification.jsp"></jsp:include>
     </div>
     <div id="employer">
       <jsp:include page="employer.jsp"></jsp:include>
     </div>
     <div id="uploadDoc">
       <jsp:include page="uploadDoc.jsp"></jsp:include>
     </div>
  </div>

</body>
</html>