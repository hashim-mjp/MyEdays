<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <script type="text/javascript"
			src="<%=request.getContextPath() %>/js/jquery-1.11.2.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test</title>
<style>
body{
	margin:0;
	padding 0;
}
	.t-1{
	}
	.t-1-1{
	float: left;
    border-bottom: 1px solid black;
    width: 100%;
    padding: 5px;
    box-sizing: border-box;
    text-align: center;
	}
	.t-2{
	   float: left;
    width: 206px;
	}
	.hdr{
	    background: #f0eded;
	font-weight: bold;
	}
</style>
<script>
$(document).ready(function(){
	genrate();
})
function genrate(){
	 $(".updateDelete").html(""); 
	var res = $.parseJSON($.ajax({
		url : "getInsertedData",
		type : "post",
		dataType:'json',
		async: false
	}).responseText);
	console.log(res);
	
	var s="<div class='t-1-1 hdr'>"
	+"<div class='t-2 d' >Name</div>"
	+"<div class='t-2 d'>Mobile</div>"
	+"<div class='t-2 d email' >Email</div>"
	+"<div class='t-2 d'>DOB</div>"
	+"<div class='t-2'>Update</div>"
	+"<div class='t-2'>Delete</div>"
	+"</div>";
	$(".updateDelete").append(s);
	for(var i=0;i<res.length;i++){
		
	
	var s="<div class='t-1-1' id='"+res[i].id+"' >"
	+"<div class='t-2 d' ><input type='text' class='name' value='"+res[i].name+"'></div>"
	+"<div class='t-2 d'><input type='text' class='mob' value='"+res[i].mob+"'></div>"
	+"<div class='t-2 d email' >"+res[i].email+"</div>"
	+"<div class='t-2 d'><input type='text' class='dob' value='"+res[i].dob+"'></div>"
	+"<div class='t-2'><button onclick='updateIt(this)'>update</button></div>"
	+"<div class='t-2'><button onclick='deleteIt(this)'  val='"+res[i].id+"'>delete</button></div>"
	+"</div>";
	$(".updateDelete").append(s);
	}
}

function updateIt(e){
	
	var s=$(e).parent().parent().attr('id');
	var name=$("#"+s+" .name").val();
	var mob=$("#"+s+" .mob").val();
	var email=$("#"+s+" .email").html();
	var dob=$("#"+s+" .dob").val();
	//alert(email);
	$.ajax({
		url:"updateIt",
		data:{id:s,name:name,mob:mob,email:email,dob:dob},
		type:"post",
		success:function(res){
			alert(res)
		},
		error:function(){
			alert('something went wrong');
		}
		
	})
	
	
}
function deleteIt(e){
	var id=$(e).attr('val');
	$.ajax({
		url:"deleteRecord",
		data:{emailId:id},
		type:"post",
		success:function(res){
			alert("ok")
		},
		error:function(){
			alert("error");
		}
		
	})
	genrate();
}
function submit(){
	var name=$('#empName').val();
	var mob=$('#mob').val();
	var emailId=$('#emailId').val();
	var dob=$('#dob').val();
	$.ajax({
		url:"test1DataInsert",
		data:{name:name,mob:mob,emailId:emailId,dob:dob},
		type:"post",
		success:function(res){
			alert(res)
		},
		error:function(){
			alert('something went wrong');
		}
		
	})
	genrate();
}
</script>
</head>
<body>
<div class="container">
	<div class="t-1">
	Name: <input type='text' name='empName' id='empName'>
	</div>
	<div class="t-1">
	Mobile N0: <input type='text' name='mob' id='mob'>
	
	</div>
	<div class="t-1">
		Email: <input type='text' name='emailId' id='emailId'>
	</div>
	<div class="t-1">
	DOB: <input type='text' name='dob' id='dob'>
	</div>
	
</div>
	<div ><input type="button" value="Submit" onclick='submit()'></div>
	<hr>
	<br>
	<div >
	
	<div class="updateDelete" >
	<div class='t-1-1'>
		<div class='t-2'>Name</div>
		<div class='t-2'>Mobile</div>
		<div class='t-2'>EmailId</div>
		<div class='t-2'>Dob</div>
		<div class='t-2'>update</div>
		<div class='t-2'>Delete</div>
	</div>
	</div>
	

	
	</div>
	
</body>
</html>