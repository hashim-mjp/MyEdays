<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/FormValidation.js"></script>
	<script type="text/javascript">
function empDetail()
{
	
	var empid=$("#id1").val();
	$.ajax({
		url:"emplayout",
		type:"post",
		data:{empId:empid},
		success:function(res){
			$("#div1").html(res);
			$("#div1").css("display","block");
		},
		error:function(){
		}
	});
}
function searchEmp(){
	var d1=$("#date1").val();
	var d2=$("#date2").val();
	$.ajax({
		url:"searchdate",
		type:"post",
		data:{date1:d1,date2:d2},
		success:function(res){
			$("#myid").html(res);
		},
		error:function(){
			alert("ajax:fail");
		}
	});
	}

	
	
function search(){
	var abc=$("#txt1").val();
	$.ajax({
		url:"emplayout1",
		type:"post",
		data:{val:abc},
		success:function(res){
			$("#div2").html(res);
			$("#div2").css("display","block");
		},
		error:function(){
			alert("ajax:fail");
		}
	});
}
function CodeCheck(event){
	if(event.keyCode==13)
		search();
}
function getCourse(){
	var id=$("#s1").val();
	$.ajax({
			url:"course",
			type:"post",
			data:{domainId:id},
			success:function(res){
				$("#s2").html(res);
			},
			error:function(){
				alert("ajax:fail");
			}
	});
}
function load(){
	var index=$("#s4").val();
	var value=$("#txt2").val();
	$.ajax({
		url:"fetch",
		type:"post",
		data:{
			index:index,
			value:value
			},
		success:function(res)
		{
			
			$("#my").html(res);
							
		},
		error:function()
		{
			alert("ajax:fail");
		}
			
});
	}
	function uploadexcel()
	{
		//var fileupload=$("#file1").val();
		var form = $('#form1')[0];
		var dat = new FormData(form);
        alert(form);
		alert(dat);
		
		$.ajax
		({
			url:"fileuploaddata",
			type:"post",
			data:dat,
			processData:false,
			contentType:false,
			enctype:"multiport/form-data",
			success:function(res)
			{
				
			alert("sucess");					
			},
			error:function()
			{
				alert("ajax:fail");
			}
				
	});
		
	}
	var files = [];
	$(document)
	        .on(
	                "change",
	                "#fileLoader",
	                function(event) {
	                 files=event.target.files;
	                })

	$(document)
	        .on(
	                "click",
	                "#fileSubmit",
	                function() {
	                processUpload();
	                });
		function processUpload()
         {
              var oMyForm = new FormData();
              oMyForm.append("file", files[0]);
            
              $.ajax({
            	  
                    url : "fileuploaddata",
                    data : oMyForm,
                    type : "POST",
                    enctype: 'multipart/form-data',
                    processData: false, 
                    contentType:false,
                    success : function(rslt) {
                        alert(rslt);
                    },
                    error: function(){
                        alert("ajax fail");
                    }
                });
          }
/* var img=[];
function loadimg(event) {
      // img=event.target.files;
}    
function imgUpload(){
	console.log($("#imgLoader")[0].files);
	 img=$("#imgLoader")[0].files;
	var txt=$("#txtdocName1").val();
	var form=new FormData("#f3");
	form.append("file", img[0]);
	form.append("custom",txt);
	alert(form);
	$.ajax({
        url : "frmSerial",
        data : form,
        type : "POST",
        enctype: 'multipart/form-data',
       	processData:false,
        contentType:false,
        success : function(rslt) {
            alert(rslt);
        },
        error: function(){
            alert("ajax fail");
        }
    });
	
} */



var img=[];
function loadimg() {
	
}    
function imgUpload(){
	var form = jQuery("#f3").find('input[type="file"]');

	var frm = new FormData();
	//var fl = form.get(1).files.length;
//	alert(fl);
	var files = []; 
	 	 var fl = form.get(0).files.length;
      for (var i = 0; i < 2; i++) {
      	frm.append("files["+i+"]", form.get(i).files[0]);
      }
	frm.append("file",files);
	
	$.ajax({
        url : "frmSerial",
        data : frm,
        type : "POST",
        enctype: 'multipart/form-data',
       	processData:false,
        contentType:false,
        success : function(rslt) {
            alert(rslt);
        },
        error: function(){
            alert("ajax fail");
        }
    });
	
	/* var form=new FormData("#f3");
	var l=$(".imgLoader").length;
	
	var i=0;
	var id;
    for(i=0;i<l;i++){
    	id="#imgLoader"+(i+1);
    	//img=$(id)[0].files;
    	form.append("file["+i+"]", img[0]);
    }
	console.log(l);
	 img=$("#imgLoader")[0].files;
	var txt=$("#txtdocName1").val();
	form.append("custom",txt);
	alert(form);
	$.ajax({
        url : "frmSerial",
        data : form,
        type : "POST",
        enctype: 'multipart/form-data',
       	processData:false,
        contentType:false,
        success : function(rslt) {
            alert(rslt);
        },
        error: function(){
            alert("ajax fail");
        }
    }); */
	
} 

function ApplyLeave(){
	$.ajax({
        url : "checkValidations",
        data : {},
        type : "POST",
        success : function(res) {
        	if(res=="Allow"){
        		window.open("leaveApplyForm","_self");
        	}
        	else{
        		
        		//$("#btnApplyleave").attr('disabled',"disabled");
        		alert("you have already requested for leaves");
        		window.open("leaveApplyForm","_self");
        	}
        },
        error: function(){
            alert("ajax fail");
        }
    });
	
}
function add(){
    var i=$('.mytxt').length;
    if(i<4){
    j=i+2;
    t1="<div><input type='file' id='imgLoader"+ (++j)+"' class='mytxt' name='file' ></div>";
    $('#filefldcntnr').append(t1);
    }
}

function remove(){
    var n=$(".mytxt").length;
    if(n>0){
    var id="#imgLoader"+(n+2);
    $(id).remove();
    }
}
var r=[];
function getHeirarchy(){
	var s="";
	var h=$.parseJSON($.ajax({
		url:"getHerarchy",
		dataType: 'json',
		type:"post",
		async:false,
		
	}).responseText);
	for( i=0;i<h.length;i++){
		s+="<div>"+h[i].p.fName+"</div>";
	}
	$("#empHeirarchy").html(s);
}
</script>
<style>
.main
{
width:400px;
border:1px solid black;
margin:0 auto;
padding:10px;

}
.d-1
{
width:350px;
border: 1px solid black;
margin-top: 10px;
padding: 10px;
box-shadow: 8px 8px 8px  #888888;
display: none;
}
.d-2
{

width: 300px;
border: 1px solid black;
margin-top: 10px;
padding: 10px;
box-shadow: 8px 8px 8px  #888888;
}

#empHeirarchy{
    height: 100px;
    border: 1px solid #999;
    margin-top: 10px;
    width: 300px;
    box-shadow: 7px 8px 20px 0px #999;
    overflow: scroll;
    overflow-x: hidden;
}
</style>
</head>
<body>
<div class="main">
<input type="text" id="txt1" onkeyup="CodeCheck(event)">
<button id="btn1" onclick="search()">Search</button>
<select onchange="empDetail()" id="id1">
<option >select Employee</option>
<c:forEach var="e" items="${emp}">
<option value="${e.empId}">${e.empCode}
</option>

</c:forEach>

</select>
<div id="div1" class="d-1" >
</div>
<div id="div2" class="d-1"  >
</div>


</div>
<select id="s1" onchange="getCourse()">
<option >select</option>
<c:forEach var="a" items="${course}">
<option value="${a.domainId}">${a.domainName}</option>
</c:forEach>
</select>
<select id="s2">
</select>
<select id="s3" >
<option >select</option>
<c:forEach var="a" items="${mangr}">
<option>${a}</option>
</c:forEach>
</select>
<input type="date" id="date1">
<input type="date" id="date2">
<button id="btn2" onclick="searchEmp()">Submit</button>
<div id="myid"></div>

<div>
<input type="text" id="txt2">
<button id="btn3" onclick="load()">Submit</button>
<select id="s4">
<option>All</option>
<option>Enq</option>
<option>Web</option>
<option>Ref</option>
<option>Student</option>
</select>
<div id="my"></div>
</div>
<div>
<br>
<br>
<br>
<hr>

<input type="file" name="file" id="fileLoader" accept=".xls,.xlsx"/> 
<input type="button" id="fileSubmit" value="Upload"/></div>
<br>
<br>
<br>
<hr>
<br>

<!-- <button>+</button><button>-</button>
<form action="frmSerial" method="post" enctype="multipart/form-data" id="f3">
    <input type="file" name="file" onchange="loadimg(event)" id="imgLoader1">
    <input type="text" name="name" id="txtdocName1">
    <input type="file" name="file" onchange="loadimg(event)" id="imgLoader2">
    <input type="text" name="name" id="txtdocName2">
    
   
</form>
 <input type="button" value="Upload" name="submit" onclick="imgUpload()">
 -->
 
 
 
 <button id="inc" onclick="add()">+</button>
 <button id="dcr" onclick="remove()">-</button>
 <form action="frmSerial" method="post" enctype="multipart/form-data" id="f3">
 	<div>
    <input type="file" name="file"  id="imgLoader1" class="imgLoader">
    <input type="text" name="name" id="txtdocName1">
	 </div>
    <div>
    <input type="file" name="file"  id="imgLoader2" class="imgLoader">
    <input type="text" name="name" id="txtdocName2">
    </div>
   <div id="filefldcntnr"></div>
   <input type="submit" value="upload">
</form>
 
 
 <br>
 <br>
 	<button onclick="ApplyLeave()" id="btnApplyleave">Apply for leave</button>
 	
 	<button onclick="json();"></button>
 	<div><button onclick="getHeirarchy()">Load Heirarchy</button></div>
 	<div id="empHeirarchy"></div>
 	<div><button onclick="window.open('dashboard','_self')">DashBoard</button></div>
 	<br><br>
 	  <div><button onclick="window.open('home','_self')">Home</button></div> 
 	 
</body>