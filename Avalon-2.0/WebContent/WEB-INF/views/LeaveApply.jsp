

<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-1.11.2.min.js"></script>
<link href='<%=request.getContextPath()%>/css/bootstrap.css'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Include Date Range Picker -->
<!-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker3.css"/> 
 -->
<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js">
	
</script>
<script>
	var d1, d2;
	var sday, eday;
	var leave;
	var bal;
	var adv;
	var total;
	var disableDate = [];
	var selectdate;
	var dates = [];
	var half = 0;
	var cur = new Date();
	var current = cur.getMonth() + 1 + "/" + cur.getDate() + "/"
			+ cur.getFullYear();
	var fromDate;
	var toDate;
	var myarr = [];
	var holidays = [];
	var xyz = [];
	var sDate;
	var lwp;
	var nlwp
	var leavetype;
	var leavecause;
	var colorCodes=[];
	var balance=[];
	function fetchDate() {

		d1 = new Date($("#date-1").val());
		d2 = new Date($("#date-2").val());
		var d = new Date();
		var currentdate = new Date(d.getYear(), d.getMonth(), d.getDate())
				.getTime();
		sday = d1.getTime();
		eday = d2.getTime();
		sDate = d1.getMonth() + 1 + "/" + d1.getDate() + "/" + d1.getFullYear();
		selectdate = new Date(d1.getYear(), d1.getMonth(), d1.getDate() + 1)
				.getTime();
		leave = (eday - sday) / (1000 * 60 * 60 * 24) + 1;
		if (leave >= 0) {
			$("#l1").html(leave + " days ");
			$("#date-1").css("border-color", "initial");
			$("#btn-apply").removeAttr('disabled');
		}

		else {
			$("#l1").html("Choose correct date");
			$("#date-1").css("border-color", "red");
			$("#btn-apply").attr('disabled', 'disabled');
			return false;
		}
		// diffDate();
		lwp();
		updateVariable();
		
	}
	//update variable

	function diffDate() {
		if (sday != eday && $('#c3').prop('checked')) {
			$(".lower2-r").css("display", "block");
			$("#c5").removeAttr('disabled');
			$("#c6").removeAttr('disabled');
			$("#c4").attr('disabled', 'disabled');
			$("#c7").attr('disabled', 'disabled');

		}
	}
	function updateVariable() {
		bal = parseFloat($("#obal").html());
		adv = parseFloat($("#oadv").html());
		total = parseFloat($("#ototal").html());
		var lh=leaveMinus();
		if (leave <= bal) {
			bal = bal - leave;
			//adv = 0;
			$(".bal").html(bal.toFixed(2));
			$(".lwp").html("0");
			$(".adv").html(adv);
			total = total + lh;
			$(".ttl").html(total);

		} else {
			if (leave <= (bal + adv)) {
				$("#c1").attr('checked', 'checked');
				$(".bal").html("0");
				$(".lwp").html("0");
				var b = (leave - bal).toFixed(2);
				adv = adv - b;
				$(".adv").html(adv.toFixed(2));
				total = total + lh;
				$(".ttl").html(total);
			} else {
				if ($("#c1").prop('checked')) {
					total = total + lh;
					$("#c2").attr('checked', 'checked');
					if (leave % 1 == 0) {
						$(".bal").html("0");
						$(".adv").html("0");
						nlwp = (leave - (bal + adv));
						$(".lwp").html(nlwp.toFixed(2));
						$(".ttl").html(total);
					} else {
						var flor = Math.floor(leave);
						$(".adv").html("0");
						var rem = leave - flor;
						nlwp = leave - ((bal - rem) + adv);
						$(".bal").html(rem);
						$(".lwp").html(nlwp.toFixed(2));
						$(".ttl").html(total);
					}
				} else {
					total = total + lh;
					$("#c2").attr('checked', 'checked');
					if (leave % 1 == 0) {
						$(".bal").html("0");
						$(".adv").html(adv);
						nlwp = leave - bal;
						$(".lwp").html(nlwp.toFixed(2));
						$(".ttl").html(total);
					} else {
						var flor = Math.floor(leave);
						$(".adv").html(adv);
						var rem = leave - flor;
						nlwp = leave - (bal - rem);
						$(".bal").html(rem);
						$(".lwp").html(nlwp.toFixed(2));
						$(".ttl").html(total);
					}

				}
			}
		}
	}
	function lwp() {
		var status = $('#c1').prop('checked');
		if (leave > bal && status == false) {
			if ($("#c2").prop('checked')) {
				$("#btn-apply").removeAttr('disabled');
				$("#date-2").css("border-color", "initial");
				updateVariable();
			} else {
				alert("your balance is insufficient if u want to continue then plz select advance leave");
				$("#date-2").css("border-color", "red");
				$("#btn-apply").attr('disabled', 'disabled');
			}
		}

		if (leave >(bal + adv) && status == true) {
			if ($("#c2").prop('checked')) {
				$("#btn-apply").removeAttr('disabled');
				$("#date-2").css("border-color", "initial");
				updateVariable();
			} else {
				alert("your balance is insufficient");
				$("#date-2").css("border-color", "red");
				$("#btn-apply").attr('disabled', 'disabled');
			}
		}

	}
	function leaveMinus() {
		var h = 0.00;
		leave = (eday - sday) / (1000 * 60 * 60 * 24) + 1;
		$(".lower2").find('input').each(function() {
			if ($("#" + this.id).prop('checked'))
				h += 0.5;
		})
		leave -= h;
		$("#l1").html(leave + " days ");
		return leave;
	}
	function advance() {
		leave = (eday - sday) / (1000 * 60 * 60 * 24);
		if (leave > (bal + adv) && $("#c1").prop('checked')) {
			alert("your balance is insufficient");
			$("#date-2").css("border-color", "red");
			$("#btn-apply").attr('disabled', 'disabled');
		} else {
			$("#date-2").css("border-color", "initial");
			$("#btn-apply").removeAttr('disabled');
		}

	}

	//on page load
	$(document).ready(function() {
		 colorCodes = $.parseJSON($.ajax({
				url : "getcolor",
				type : "post",
				dataType : 'json',
				async : false
			}).responseText); 
		 var option="";
		 for(var i=0;i<colorCodes.length;i++)
			 {
			 option+="<option>"+colorCodes[i].leaveType +"</option>";
			 }
		 $("#leave1").append(option);
		 balance = $.parseJSON($.ajax({
				url : "loadBalance",
				type : "post",
				dataType : 'json',
				async : false
			}).responseText); 
		 
		 $("#obal").html(balance.balanceLeave);
		 $("#oadv").html(balance.advanceLeave);
		 $("#ototal").html(balance.totalLeave);
		 
		 $.ajax({
				url : "isHalfDay",
				type : "post",
				data : {},
				success : function(res) {
					if(res=="ok")
						{
						$(".lower1").css('display','block');
						$(".lower2").css('display','block');
						}
					else
						{
						$(".lower1").css('display','none');
						$(".lower2").css('display','none');
						}
				},
				error : function() {
					alert("fail:to load ishalf day");
				}
			});
		 
		holidays = $.parseJSON($.ajax({
			url : "getholiday",
			type : "post",
			dataType : 'json',
			async : false
		}).responseText);
		//holidays
		var obj = {};
		for (var i = 0; i < holidays.length; i++) {
			 disableDate.push(holidays[i].festivalSDate); 
			 //if u want to disable date according to noh then use this code
			 
			/* var sd=new Date(holidays[i].festivalSDate).getDate();
			var sm=new Date(holidays[i].festivalSDate).getMonth()+1;
			var sy=new Date(holidays[i].festivalSDate).getFullYear();
			var ed=new Date(holidays[i].festivalEDate).getDate();
			var em=new Date(holidays[i].festivalEDate).getMonth()+1;
			var ey=new Date(holidays[i].festivalEDate).getFullYear();
			sm=sm>9?""+sm:"0"+sm;
			sd=sd>9?""+sd:"0"+sd;
			var noh=holidays[i].noh;
			for (var x = 0; x < noh; x++) {
				disableDate.push(sm + '-' + sd + '-' + sy);
				if (ed <= sd) {
					em++;
				}
				sd++;
				if (sm == 12) {
					sy++;
					sm = 1;
				}
			} */
			obj[holidays[i].festivalSDate] = holidays[i].festivalName;
			xyz.push(obj);
		}
		$("#c4").attr("checked", false);
		$("#c5").attr("checked", false);
		$("#c6").attr("checked", false);
		$("#c7").attr("checked", false);
		$("#c4").attr("disabled", true);
		$("#c5").attr("disabled", true);
		$("#c6").attr("disabled", true);
		$("#c7").attr("disabled", true);
		$("#btn-apply").attr('disabled', 'disabled');

		//when half is click
		$('#c3').on('change', function() {
			var status = $('#c3').prop('checked');

			if (status) {
				if (sday == eday && status) {
					$("#c6").attr("checked", false);
					$("#c7").attr("checked", false);
					$(".lower2-r").css("display", "none");
					$("#c4").removeAttr('disabled');
					$("#c5").removeAttr('disabled');
				} else {
					$(".lower2-r").css("display", "block");
					$("#c5").removeAttr('disabled');
					$("#c6").removeAttr('disabled');
				}

			}
			diffDate();
		})
		//first am pm class
		$('.chk').on('change', function() {
			var status = $('#c3').prop('checked');
			if (status == true)
				$('.chk').not(this).attr('checked', false);
			else {
				$("#c4").attr("disabled", true);
				$("#c7").attr("disabled", true);

			}

		})
		$("#c4").on("change", function() {
			leaveMinus();
				updateVariable();
		})

		$("#c5").on("change", function() {
			diffDate();
			leaveMinus();
				updateVariable();
		})
		$("#c6").on("change", function() {
			diffDate();
			leaveMinus();
				updateVariable();
		})

		$.ajax({
			url : "leave-apply-form",
			type : "post",
			data : {},
			success : function(res) {
			},
			error : function() {
				alert("fail:data load from db");
			}
		});

	})
	//calendar
	$(function() {
		$("#date-1").datepicker(
				{
					beforeShowDay : function(date) {
						var dayOfWeek = jQuery.datepicker.formatDate(
								'mm-dd-yy', date);
						if (disableDate.indexOf(dayOfWeek) == -1) {
							return [ true, "", "" ];
						}
						return [
								false,
								"",
								xyz[disableDate.indexOf(dayOfWeek)][dayOfWeek]
										+ "" ];
					}
				});

	});
	$(function() {
		$("#date-2").datepicker(
				{
					minDate : sDate,
					beforeShowDay : function(date) {
						var dayOfWeek = jQuery.datepicker.formatDate(
								'mm-dd-yy', date);
						if (disableDate.indexOf(dayOfWeek) == -1) {
							return [ true, "", "" ];
						}
						return [
								false,
								"",
								xyz[disableDate.indexOf(dayOfWeek)][dayOfWeek]
										+ "" ];
					}
				});
	})
	// on apply button click
	function leaveApply() {

		fromDate = d1.getMonth() + 1 + "/" + d1.getDate() + "/"
				+ d1.getFullYear();
		toDate = d2.getMonth() + 1 + "/" + d2.getDate() + "/"
				+ d2.getFullYear();
		//selected date array
		dates = [];
		var c = new Date().getMonth() + 2;
		var y = new Date().getFullYear();
		var nd = new Date(y, c, 0).getDate();
		var i = 0;
		var j = new Date(selectdate).getDate() - 1;
		for (i = 0; i < leave; i++) {
			dates.push((c>9?""+c:"0"+c) + '-' + (j>9?""+j:"0"+j) + '-' + y);
			if (j >= nd) {
				j = 0;
				c++;
			}
			j++;

			if (c == 12) {
				y++;
				c = 1;
			}
		}
		var compareArr = [];
		//compare selected dates arrays with holiday's array
		for (var x = 0; x < dates.length; x++) {
			for (var y = 0; y < disableDate.length; y++) {
				if (new Date(dates[x]).getTime() == new Date(disableDate[y])
						.getTime())
					compareArr.push(dates[x]);
			}
		}
		$.ajax({
			url : "pendingLeave",
			type : "post",
			data : {
				fromDate : fromDate,
				toDate : toDate,
				leave : leave
			},
			success : function(res) {
				if (res == "nodata") {
				} else {
					$(".mid").html(
							" you have already applied on  " + res
									+ "  Are you sure want to apply again ");
				}
			},
			error : function() {
				alert("fail:view already applied leave");
			}
		});

		//print msg

		var str = "";
		if (compareArr.length != 0) {
			for (var x = 0; x < compareArr.length; x++)
				str = str + "  " + compareArr[x];
			$("#confrm").html(
					" There is/are holiday/s on " + str
							+ " and your leave days are " + leave
							+ " if u want to continue then click OK ");
		} else
			$("#confrm").html(
					"your leave days are  " + leave
							+ " if u want to continue then click OK  ");
		if ($("#c3").prop('checked')) {
			half = 1;

			if ($("#c5").prop('checked') && $("#c6").prop('checked'))
				half = 2;
		}
		leavetype=($("#leave1").val());
		leavecause=($("#leave2").val());
		myarr = [ fromDate, toDate, leave, half, adv, current, leavetype,leavecause];
		//ajax 
		$(".model").css("display", "block");
		$.ajax({
			url : "leave-apply-form",
			type : "post",
			data : {},
			success : function(res) {
			},
			error : function() {
				alert("fail");
			}
		});

	}

	function cancel() {
		$(".model").css("display", "none");
	}
	function ok() {

		$.ajax({
			url : "insertleave",
			type : "post",
			data : {
				myarr : myarr
			},
			success : function(res) {
				if (res == "success") {
					$(".model").css("display", "none");
					//window.open("Home", "_self");
				}
			},
			error : function() {
				alert("fail:to apply leave");
			}
		});

	}
	
</script>
<style>
.main {
	width: 600px;
	height: 400px;
	border: 1px solid #58D68D;
	margin-left: 300px;
	margin-top: 20px;
	box-shadow: 8px 8px 8px #888888;
	background-color: #fff;
	padding:0;
	position:absolute;
}

.upper {
	height: 80px;
    border-bottom: 1px solid #58D68D;
    font-size: 15px;
    background-color: #58D68D;
    color: white;
}
.label1
{
color: white;
    background-color: #82E0AA;
    height: 30px;
    border-bottom: 1px solid #58D68D;
    padding-left: 15px;
}
.label2
{
    height: 30px;
    border-bottom: 1px solid #58D68D;
}
.upper-1
{
height: 120px;
    border-bottom: 1px solid #58D68D;
    font-size: 15px;
    color: #239B56;
    padding:0;
}
.upper1-l {
	height: 120px;
	 border-right: 1px solid #58D68D;
	 padding: 0;
}
.upper1-r {
	height: 120px;
	 padding:0;
}

.m {
	font-size: 15px;
	color: #239B56;
	margin-top:10px;
}
.middle
{
font-size: 12px;
margin-top: 10px;
color: #239B56;
}
.middle1
{
font-size: 15px;
margin-top: 10px;
color: #239B56;
}

.lower {
	font-size: 15px;
	color: #239B56;
	margin-top: 10px;
}

.lower2 {
	font-size: 15px;
	color: #239B56;
}

.btn {
	font-size: 15px;
	text-align: right;
	margin-top:10px;
}
.btn-apply
{
	color: #ffffff;
    border: none;
    width: 100px;
    height: 30px;
    font-size: 20px;
    border-radius: 12px;
    background-color: #58D68D;
}
.model {
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.6);
	position: absolute;
	z-index: 1000;
	display: none;
	box-sizing: border-box;
	padding-top: 150px;
}

.container {
	height: 300px;
	width: 500px;
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
	background-color: aliceblue;
	box-sizing: border-box;
}

.mid {
	height: 200px;
	box-sizing: border-box;
}

.up-l {
	float: left;
	font-size: 25px;
	line-height: 40px;
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
</style>
	<!-- confirm box -->

	<div class="model">
		<div class="container">
			<div class="up">
				<div class="up-l">Confirm details..</div>
				<div class="up-r">
					<i class="fa fa-remove" style="font-size: 28px;" onclick="cancel()"></i>
				</div>
			</div>
			<div class="mid">
				<div class="col-xs-36">
					<div class="col-xs-36">
						<label id="confrm"></label>
					</div>
				</div>
			</div>
			<div class="low">
				<button id="ok" onclick="ok()">OK</button>
				<button id="cancel" onclick="cancel()">Cancel</button>
			</div>
		</div>
	</div>


	<!--  body  -->
	<div class="col-xs-36 main">
		<div class="col-xs-36 upper">
			<h1>Leave Apply Form</h1>
		</div>
		<div class="col-xs-36 upper-1">
			<div class="col-xs-18 upper1-l">
				<div class="col-xs-26 label2">
					Balance Leave:</div> <div class="col-xs-10 label1"><label id="obal" ></label>
				</div>
				<div class="col-xs-26 label2">
					Advance Leave:</div><div class="col-xs-10 label1"><label id="oadv"></label>
				</div>
				<div class="col-xs-26 label2">
					Total Leave:</div><div class="col-xs-10 label1"><label id="ototal"></label>
				</div>
			</div>
			<div class="col-xs-18 upper1-r"
				style="height: 100px; border-left: 1px solid #58D68D;">
				<div class="col-xs-28 label2">
					Remaining Balance Leave:</div> <div class="col-xs-8 label1"><label class="bal"></label>
				</div>
				<div class="col-xs-28 label2">
					Remaining Advance Leave:</div><div class="col-xs-8 label1"><label class="adv"></label>
				</div>
				<div class="col-xs-28 label2">
					Total lwp:</div><div class="col-xs-8 label1"><label class="lwp"></label>
				</div>
				<div class="col-xs-28 label2">
					Total Leave:</div><div class="col-xs-8 label1"><label class="ttl"></label>
				</div>
			</div>
		</div>

		<div class="col-xs-36 m">
			<div class="col-xs-18 ml">
				<input type="checkbox" id="c1" onchange="advance()">Advance
				leave
			</div>
			<div class="col-xs-18 mr">
				<input type="checkbox" id="c2" onchange="lwp()">LWP
			</div>
		</div>

		<div class="col-xs-36 middle">
			<div class="col-xs-12 middle1-l">
				<input type="text" class="date" id="date-1"> To
			</div>
			<div class="col-xs-12 middle1-l2">
				<input type="text" class="date" onchange="fetchDate()" id="date-2">
			</div>
			<div class="col-xs-12 middle1-r">
				<label id="l1"></label>
			</div>
		</div>
		
		<div class="col-xs-36 middle1">
		<div class="col-xs-9 middle1-1">Leave Type :</div>
		<div class="col-xs-9 middle1-2">
		<select id="leave1">
		</select>
		</div>
		<div class="col-xs-9 middle1-3">Leave Cause :</div>
		<div class="col-xs-9 middle1-4">
		<select id="leave2">
		<option>PTM</option>
		<option>Normal</option>
		</select>
		</div>
		</div> 
		
		<div class="col-xs-36 lower">
			<div class="col-xs-36 lower1">

				<input type="checkbox" id="c3">Half Day
			</div>

		</div>
		<div class="col-xs-36 lower2">
			<div class="col-xs-18 lower2-l">
				<input type="checkbox" id="c4" name="c" class="chk">AM <input
					type="checkbox" id="c5" name="c" class="chk">PM
			</div>
			<div class="col-xs-18 lower2-r">
				<input type="checkbox" id="c6">AM <input type="checkbox"
					id="c7">PM
			</div>
		</div>
		<div class="col-xs-36 btn">
			<button class="btn-apply"  id="btn-apply" onclick="leaveApply()">Apply</button>
			
		</div>
	</div>


