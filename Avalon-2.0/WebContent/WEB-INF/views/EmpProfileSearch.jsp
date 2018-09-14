<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/jquery-1.11.2.min.js"></script>
<style>
.p {
	float: left;
	width: 100%;
}

.p-1 {
	height: 50%;
	background-color: white;
}

.p-1-1 {
	border: 1px solid black;
	height: 50px;
	padding: 10px;
}

.p-1-1-1 {
	width: 100%;
	float: left;
	font-size: 15px;
	color: #999;
}

input:focus {
	-moz-box-shadow: 0 0 8px #88D5E9;
	-webkit-box-shadow: 0 0 8px #88D5E9;
	box-shadow: 0 0 8px #88D5E9;
	border: 1px solid #88D5E9;
}

.frmtxt {
	width: 80%;
	padding: 3px;
	padding-left: 10px;
	box-sizing: border-box;
	border: 1px solid #BEBEBE;
	-webkit-transition: all 0.30s ease-in-out;
	outline: none;
}

.srchbtn {
	border: 1px solid #BEBEBE;
	padding: 6px;
	background-color: #b1a9a9;
	color: white;
	cursor: pointer
}

.srchbtn:hover {
	background-color: #8c8686;
}

.p-2 {
	border: 1px solid;
	height: 50%;
	overflow: auto;
}

.p-2-1-1 {
	background-color: #dbdada;
	padding: 2px 10px;
	font-size: 13px;
	font-weight: 600;
	color: #7c7c7c;
	margin-top: 0px;
}

.p-2-1-2 {
	
}

.srchdata {
	    cursor: pointer;
    line-height: 24px;
    border-bottom: 1px solid #ededed;
    width: 100%;
    padding-left: 10px;
    float: left;
    box-sizing: border-box;
}

.srchdata .srchdata {
	margin-left: 10px;
	border: none;
}
/* .srchdata:hover{
	background-color: #8a8181;
    color: #fff;
} */
.chld {
	    float: right;
    /* margin-top: 0px; */
    font-size: 22px;
    padding: 2px 16px;
    color: black;
    cursor: pointer;
    width: 20%;
    box-sizing: border-box;
    
}

.chld:hover {
	background: #8a8181;
	color: #fff;
}
.srchdata .empnm{
    float: left;
    width: 80%;
    margin: 0;
   
    padding-left: 10px;
    box-sizing: border-box;
}
.srchdata .empnm:hover{
    color: white;
    background: #8a8181;
}
</style>
<script>


function search(){
	
   var res = $.parseJSON($.ajax({
				url : "searchAll",
				type : "post",
				dataType:'json',
				async: false
		}).responseText);
   
   
   var d;
   $("#datarcrd").html(res.length);
   for(i=0;i<res.length;i++){

		var d="<div class='rcd-row p'><div class='srchdata' empId='"+res[i].EmpId+"'><div  class='empnm' onclick='srchData(this)'>	<i class='fa fa-user'></i> "+res[i].fname+"</div><div class='chld' onclick='loadSubOrdinate(this)'>	<i class='fa fa-caret-down'></i></div></div>";
	   $(".p-2-1-2").append(d);
   }
}

function loadSubOrdinate(e){
	$(e).off('click');
	var id=$(e).parents('div').attr('empId');
	var res = $.parseJSON($.ajax({
		url : "getSub",
		type : "post",
		data:{empId:id},
		dataType:'json',
		async: false
}).responseText);

//$(e).parent('div').html('');
for(i=0;i<res.length;i++){
	var d="<div class='srchdata' empId='"+res[i].EmpId+"'><div  class='empnm' onclick='srchData(this)'>	<i class='fa fa-user'></i> "+res[i].fname+"</div><div class='chld' onclick='loadSubOrdinate(this)'>	<i class='fa fa-caret-down'></i></div></div>";
	$(e).parent('div').append(d);
	
}
$(this).parent('div').children('.srchdata').toggle();
}


function srchData(e){
	var id=$(e).parent().attr('empId')
	var res = $.parseJSON($.ajax({
		url : "getEmpFullDetails",
		type : "post",
		data:{empId:id},
		dataType:'json',
		async: false
}).responseText);
	$('.e-fName').html('');
	$('.e-lName').html('');
	$('.e-empId').html('');
	$('.e-mob').html(''); 
	$('.e-email').html('');
	$('.e-name').html('');
	$('.e-designation').html('');
	
	$('.e-name').html(res[0].fName); 
	$('.e-designation').html(res[0].designation);
	$('.e-fName').html(res[0].fName);
	$('.e-lName').html(res[0].lName);
	$('.e-empId').html(res[0].empId);
	$('.e-mob').val(res[0].mobile); 
	$('.e-email').val(res[0].email);
	$('.e-pic').css('background-image',"url('<%=request.getContextPath() %>/"+res[0].pic+"')");
	
	//console.log(res);
}

</script>
</head>
<body>
	<div class="p-1 p">
		<div class="p-1-1 p">
			<div class="p-1-1-1 p">
				<input type="text" class="frmtxt"><i
					class="fa fa-search srchbtn" onclick="search();"></i></input>
			</div>

		</div>
	</div>

	<div class="p-2 p">
		<div class="p-2-1 p">
			<div class="p-2-1-1">
				<span id="datarcrd">0</span> Records Found</i>
			</div>
			<div class="p-2-1-2 p">
				<!-- main -->
				<!-- <div class='rcd-row p'>
					<div class='srchdata' empId='Emp2'>
						<div  class='empnm' onclick='srchData(this)'><i class='fa fa-user'></i> Hashim</div>
						<div class='chld' onclick='loadSubOrdinate(this)'>
							<i class='fa fa-caret-down'></i>
						</div>
					</div>  



				</div> -->
			</div>
		</div>
	</div>
</body>
</html>