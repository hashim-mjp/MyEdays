<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%request.getServletContext().setAttribute("ctxPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href='<%=request.getContextPath() %>/css/bootstrap.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/FormValidation.js"></script>
</head>

<c:if test="${admin != null }">
	<c:redirect url="/Master"></c:redirect>
</c:if>

<script type="text/javascript">
function login(){
	var username=$('#userName').val();
	var psw=$('#password').val();
	$.ajax	({
		url:"emplogin",
		type:"post",
		data:{username:username,psw:psw},
		success:function(res){
				if(res=="success"){
					$("#div1").html("");
					window.open("home","_self");
				}
				else{
					$("#div1").html("wrong username password");
					$("#div1").css('display','block');
				}
		},
		error:function(){
			alert("Something went wrong. Try again later.")
		}
	});
}
	function register()
	{
		window.open("getdetails","_self");
	}
</script>
<style>
.l-container{
}
.l-row{
}
.log-1{
      width: 442px;
    margin: 229px auto;
    border: 1px solid #73e4a3;
    height: 220px;
}
.div1-1{
	background-color: white;
    padding: 10px;
   
}
#div1{
height: 50px;
    position: absolute;
    /* color: red; */
    background: #73e4a3;
    width: 440px;
    color: #fff;
    top: 169px;
    font-size: 18px;
    font-weight: bold;
    padding-left: 20px;
    line-height: 49px;
    transition: 500ms ease-in-out;
    display:none;
}
.hdr{
    padding-left: 20px;
    background-color: #73e4a3;
    font-size: 19px;
    color: #fff;
    height: 39px;
    line-height: 40px;
    font-weight: bold;
    /* border-bottom: 1px solid #097b3a; */
}

.log-1 input {
    width: 100%;
    padding: 4px;
    padding-left: 10px;
    color: #73e4a3;
    font-size: 15px;
}

button{
background: #73e4a3;
    outline: none;
    border: none;
    color: #fff;
    padding: 8px 27px;
    font-size: 15px;
    border-radius: 5px;
    float: right;
    margin-right: 45px;
}
button:hover {
    background-color: #fff;
    color: #73e4a3;
    border: 1px solid #73e4a3;
    font-weight: bold;
}
</style>
<body id='body'>
	<input type="hidden" value="<%=request.getContextPath()%>" id='ctxPath'>
	
	
	<div class='l-container'>
		<div class='l-row'>
		
		
			<div class='log-1'>
			<div id="div1" ></div>
			<div class="hdr">E-Days</div>
				<div class="div1-1">
					<div><input type="text" placeholder="User Name" style="margin-bottom: 10px;" id="userName"></div>
					<div><input type="password" placeholder="Password" style="margin-bottom: 10px;" id="password"></div>
					
					
					<div><button onclick="login()">Login</button></div>
					

				</div>
			</div>
			<div class='col-xs-1'></div>
		</div>
	</div>




</body>
</html>