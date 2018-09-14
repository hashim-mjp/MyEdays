
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/jquery-1.11.2.min.js"></script>
	<link href='<%=request.getContextPath() %>/css/bootstrap.css'
	rel='stylesheet' type='text/css'>
	
	<script>
	var loadPendingLeave=[];
	var str="";
	$(document).ready(function() {
		loadPendingLeave = $.parseJSON($.ajax({
			url : "loadPendingLeave",
			type : "post",
			dataType : 'json',
			async : false
		}).responseText); 
	for(var i=0;i<loadPendingLeave.length;i++)
		{
	str+="<div class='child'>";
	str+="<div class='left'><label> Detail Id:</label></div><div class='right'><label id='"+ loadPendingLeave[i].detailId +"'>"+ loadPendingLeave[i].detailId   +" </label></div><br>";
	str+="<div class='left'><label>EmpId:</label></div><div class='right'><label class='emp'>"+ loadPendingLeave[i].empId+" </label></div><br>";
	str+="<div class='left'><label>Office ID:</label></div><div class='right'><label >"+loadPendingLeave[i].empojo.officeId +" </label></div><br>";
	str+="<div class='left'><label>Employee Name:</label></div><div class='right'><label >"+loadPendingLeave[i].empojo.fName+ "" + loadPendingLeave[i].empojo.lName+ " </label></div><br>";
	str+="<div class='left'><label>From Date:</label></div><div class='right'><label>" +loadPendingLeave[i].fromDate+ " </label></div><br>";
	str+="<div class='left'><label>To Date:</label></div><div class='right'><label >"+loadPendingLeave[i].toDate+" </label></div><br>";
	str+="<div class='left'><label>Leave Type:</label></div><div class='right'><label>"+loadPendingLeave[i].leaveType+" </label></div><br>";
	str+="<div class='left'><label>Leave Cause:</label></div><div class='right'><label >"+loadPendingLeave[i].leaveCause+" </label></div><br>";
	str+="<div class='left'><label>No of Days:</label></div><div class='right'><label>"+loadPendingLeave[i].noOfDay+" </label></div><br>";
	str+="<div class='left'><label>Created Date:</label></div><div class='right'><label >"+loadPendingLeave[i].createdDate+"</label></div><br>";
	str+="<input type='button' value='Approve'  class='b1' id='btn1' onclick='approvedLeave(this)'>";
	str+="<input type='button' value='Reject' class='b1' id='btn2' onclick='approvedLeave(this)' >";
	str+="</div>";
		}
	$(".appr-main").append(str);
	})
	var cur=new Date();
	var approvedDate=cur.getMonth()+1  + "/" + cur.getDate() + "/" + cur.getFullYear();
	function approvedLeave(e)
	{
		if($(e).attr('id')=='btn1')
			{
			var status="Approved";
			}
		else
			var status="Rejected";
		var empid=$(e).parent().find("label.emp").html();
		 $.ajax({
			url : "leaveapproved",
			type : "post",
			data : {status:status,
				empId:empid,
				approvedDate:approvedDate
					},
			success : function(res) {
				if(res=="success")
					window.open("leave-approve-form","_self");
			},
			error : function() {
				alert("fail");
			}
		}); 
		 /* $.ajax({
		url : "updateleave",
		type : "post",
		data : {
			bal:bal,
			adv:adv,
			total:total
		},
		success : function(res) {
			alert(res);
		},
		error : function() {
			alert("fail");
		}
	});  */
	}
	</script>
	<style>
	.child
	{
	height: 330px;
    width: 330px;
    border: 1px solid #c5bebe;
    border-radius: 5px;
    font-size: 15px;
    margin: 0 auto;
    margin-top: 30px;
    float: left;
    margin-right: 40px;
    margin-left: 50px;
	}
	.left
	{
	    width: 160px;
    float: left;
    border-bottom: 1px solid #e0dada;
    padding-left: 10px;
	}
	.right
	{
	width: 168px;
	float:left;
	background-color: #dedede52;
    padding-left: 15px;
    border-bottom: 1px solid #e0dada;
    color: #afa2a2;
    color: #827474;
    font-family: cursive;
	}
	.b1
	{
	 color: #423737;
    background-color: #d8d0d0;
    border-radius: 5px;
    border: none;
    width: 80px;
    height: 30px;
    font-size: 15px;
    font-family: cursive;
    margin-top: 10px;
	}
	#btn1
	{
	margin-left: 50px;
	}
	#btn2
	{
	margin-left: 30px;
	}
	
	</style>

<div class="appr-main" >
</div>
