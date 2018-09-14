<script>
function update()
{
	var form=$('#f1').serialize();
	
	$.ajax
	({
		url:"update1",
		type:"post",
		data:form,
		success:function(res)
		{
			alert(res);
		
		},
		error:function()
		{
			alert("ajax:fail");
		}
			
	});

	}
</script>

<div>
<h1>Update Detail</h1>
<form id="f1">
 <input type="hidden" name="empid" value="${get.empId}"><br>
<label>ManagerId</label> : <input type="text" name="managerid" value="${get.managerId}"><br>
<label>DeptId</label> : <input type="text" name="deptid" value="${get.deptId}"><br>
<label>LocationId</label> : <input type="text" name="locationid" value="${get.locationId}"><br>
<label>fName</label> : <input type="text" name="fname" value="${get.fName}"><br>
<label>lName</label> : <input type="text" name="lname" value="${get.lName}"><br>
<label>Mobile</label> : <input type="text" name="mobile" value="${get.mobile}"><br>
<label>empCode</label> : <input type="text" name="empcode" value="${get.empCode}"><br>
<label>EmpPinCode</label> : <input type="text" name="emppincode" value="${get.empPinCode}"><br>
</form>

<button onclick="update()" >Update </button>
</div>
