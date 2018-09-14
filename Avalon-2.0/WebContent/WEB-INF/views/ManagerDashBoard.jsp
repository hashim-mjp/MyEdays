<html>
<head>
<link href='<%=request.getContextPath()%>/css/bootstrap.css'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/holiday.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/FormValidation.js"></script>
<script>
	var divLength;
	var maindivLength;
	var selectDay;
	var prvMntEndDate;
	var selectMntDate;
	var counter = $(".m-header div").width();
	var mnth = [ 'JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP',
			'OCT', 'NOV', 'DEC' ];
	var str = "";
	var day = [ 'S', 'M', 'T', 'W', 'T', 'F', 'S' ];
	var countDiv = 0;
	var count = 1;
	var curntMnth = new Date().getMonth() + 1;
	var selectMnth;
	var currentDate = new Date().getDate();
	var year = new Date().getFullYear();
	var speed = 600;
	var heirarchy = [];
	var leaves = [];
	var currentYear = new Date().getFullYear();
	var selectedDate = 17;
	var eId = "";
	var empId;
	var fromDate;
	var toDate;
	var attendance=[];
	var hoverDiv;
	var hoverDiv2;
	var holidays=[];
	var obj={};
	var xyz=[];
	var hoverColor="";
	var colorCodes=[];
	$(document).ready(
			function() {
				for (var i = 0, j = 7; i < 24; i++, j++) {
					if (j == 12)
						j = 0;
					str = str + "<div class=mnt id=d" + i + " mnth='" + (j + 1)
							+ "'>" + mnth[j] + "</div>";
				}
				str += "<div>jan</div>";
				selectMnth = curntMnth;
				$(".m-header").html(str);
				maindivLength = $(".m-header").width();
				divLength = maindivLength / 12;
				$(".m-header div").css('width', divLength);
				var len = 5 * divLength + 20;
				count = curntMnth;
				counter = divLength * (count - 1);
				$(".m-header").animate({
					scrollLeft : counter
				}, 0);
				$("#selector").css('transform', "translate(" + len + "px)");
				$("#selector").css('width', divLength);
				$(".cal-1-1-l1").html(year);
				$(".m-header div").click(function() {
					var id = this.id;
					var clickedMnth = $("#" + id).attr("mnth");
					var l = $("#" + id).offset().left;
					var sl = $("#selector").offset().left;
					var scrllUnit;
					if (sl < l) {
						scrllUnit = clickedMnth - count;
						if (count > clickedMnth) {
							scrllUnit = clickedMnth - count + 12;
						}
						if (scrllUnit < 0) {
							scrllUnit *= -1;
						}
						for (var i = 0; i < scrllUnit; i++) {
							speed = 100;
							right();
						}

					} else {

						scrllUnit = clickedMnth - count;
						if (count < clickedMnth) {
							scrllUnit = clickedMnth - count - 12;
						}

						if (scrllUnit < 0) {
							scrllUnit *= -1;
						}
						for (var i = 0; i < scrllUnit; i++) {
							speed = 100;
							left();
						}

					}

				})
				heirarchy = $.parseJSON($.ajax({
					url : "loadhierarchy",
					type : "post",
					dataType : 'json',
					async : false
				}).responseText);
				leaves = $.parseJSON($.ajax({
					url : "totalLeave",
					type : "post",
					dataType : 'json',
					async : false
				}).responseText);
				 holidays = $.parseJSON($.ajax({
					url : "getholiday",
					type : "post",
					dataType : 'json',
					async : false
				}).responseText); 
				 colorCodes = $.parseJSON($.ajax({
						url : "getcolor",
						type : "post",
						dataType : 'json',
						async : false
					}).responseText); 
				currentMntGenerator();
				hoverColor+="<div class='hColor'>";
				for(var i=0;i<colorCodes.length;i++)
					{
					hoverColor+="<div class='hColor1'>" +colorCodes[i].leaveType + "</div>";
					hoverColor+="<div class='hColor1'>" +colorCodes[i].colorCode + "</div>";
					hoverColor+="<div class='hColor1' ><div class='hColor1Child' style='background-color:"+colorCodes[i].colorCode+"' ></div></div>";
					}
				
					hoverColor+="<div class='hColor1'>Holiday</div>";
					hoverColor+="<div class='hColor1'>#D7BDE2</div>";
					hoverColor+="<div class='hColor1' ><div class='hColor1Child' style='background-color:#D7BDE2'></div></div>";
					
					hoverColor+="<div class='hColor1'>Absent</div>";
					hoverColor+="<div class='hColor1'>#A3E4D7</div>";
					hoverColor+="<div class='hColor1' ><div class='hColor1Child' style='background-color:#A3E4D7'></div></div>";
					
					hoverColor+="<div class='hColor1'>Present</div>";
					hoverColor+="<div class='hColor1'>white</div>";
					hoverColor+="<div class='hColor1' ><div class='hColor1Child' style='background-color:white'></div></div>";
					
					hoverColor+="<div class='hColor1'>WeekEnd</div>";
					hoverColor+="<div class='hColor1'>#EBEDEF</div>";
					hoverColor+="<div class='hColor1' ><div class='hColor1Child' style='background-color:#EBEDEF'></div></div>";
				
				hoverColor+="</div>";
				$(".temp").append(hoverColor);
				
			})

	function currentMntGenerator() {
		$("#selector1").css('display', 'block');
		var da = "";
		var d = "";
		var k=0;
		selectDay = new Date(year, selectMnth - 1, currentDate).getDay();
		prvMntEndDate = new Date(year, selectMnth - 1, 0).getDate();
		selectMntDate = new Date(year, selectMnth, 0).getDate();
		if (currentDate >= selectedDate) {
			for (var i = currentDate - 16, j = 0,k=0;k<35, j <= 16 + (selectMntDate - currentDate);k++, i++, j++)
				da = da + "<div >" + i + "</div>";
			for (var i = 1; i < 35 - (16 + (selectMntDate - currentDate)),k<35;k++, i++)
				da = da + "<div >" + i + "</div>";
			$(".date").html("");
			$(".date").html(da);

		} else {
			for (var i = (prvMntEndDate - (16 - currentDate + 1) + 1), j = (16 - currentDate + 1);k<35, j >0;k++, j--, i++)
				da = da + "<div >" + i + "</div>";
			for (var i = 1; i <= selectMntDate,k<35;k++, i++)
				da = da + "<div >" + i + "</div>";
			for (var i = 1;k<35, i < 5;k++, i++)
				da = da + "<div >" + i + "</div>";
			$(".date").html("");
			$(".date").html(da);
		}
		//days generotor
		if (selectDay > 0) {
			for (var i = 0, j = selectDay +5; i < 35; i++, j++) {
				
				d = d + "<div days='"+j%7+"'>" + day[j%7] + "</div>";
			}
		}
		if (selectDay == 0) {
			for (var i = 0, j = 5; i < 35; i++, j++) {
				
				d = d + "<div days='"+j%7+"'>" + day[j%7] + "</div>";
			}
		}
		$(".days").html("");
		$(".days").html(d);
		currentMnthDetail();
		attendance = $.parseJSON($.ajax({
			url : "attendance",
			type : "post",
			data:{selectMnth:selectMnth,year:year},
			dataType : 'json',
			async : false
		}).responseText);
		var newid="";
		for(var i=0;i<attendance.length;i++)
			{
			for(var j=currentDate - 16;j<=selectMntDate;j++)
				{
				var s="sDay";
				var e="eDay";
				var ha="hDay";
				newid="emp"+attendance[i].empId;
				newid+=attendance[i].month+'/';
				newid+=j+'/'+attendance[i].year;
				e+=j;
				s+=j;
				ha+=j;
				if(j<=currentDate)
					{
					//absent
					 if(timeFormator(attendance[i][s])=="00:00:00" && timeFormator(attendance[i][e])=="00:00:00"){
						document.getElementById(newid).style.backgroundColor ="#A3E4D7" ;
						document.getElementById(newid).innerHTML="A";
						 document.getElementById(newid).style.color="white";
					}
					//present
					if(timeFormator(attendance[i][e])!="00:00:00" && attendance[i][ha]=='NA')
						{
						document.getElementById(newid).style.backgroundColor ="white" ;
						hoverDiv2=document.createElement("div");
						hoverDiv2.setAttribute('class', 'hdiv2');
						hoverDiv2.innerHTML="Present";
						document.getElementById(newid).appendChild(hoverDiv2); 
						}
					//half day am
					if(timeFormator(attendance[i][e])!="00:00:00" && attendance[i][ha]=='AM')
						{
						document.getElementById(newid).style.background ="linear-gradient(to right, #A3E4D7 0%, #A3E4D7 50%, white 50%,white 100%)" ;
						document.getElementById(newid).innerHTML="A";
						 document.getElementById(newid).style.color="white";
						}
					//half day pm
					if(timeFormator(attendance[i][e])!="00:00:00" && attendance[i][ha]=='PM')
						{
						document.getElementById(newid).style.background ="linear-gradient(to left, #A3E4D7 0%, #A3E4D7 50%, white 50%,white 100%)" ;
						document.getElementById(newid).innerHTML="A";
						 document.getElementById(newid).style.color="white";
						} 
					}
				$("div[day^='0']").css('background-color','#EBEDEF');
				$("div[day^='6']").css('background-color','#EBEDEF');
				$("div[day^='0']").html('');
				$("div[day^='6']").html('');
				
				}
			
			}
		leaveGenrator();
		holidayGenrator();
		
	}
	function timeFormator(d)
	{
		aDate=new Date(d);
		var h = aDate.getHours();
		var m = aDate.getMinutes();
		var s = aDate.getSeconds();

		if (h < 10) h = '0' + h;
		if (m < 10) m = '0' + m;
		if (s < 10) s = '0' + s;

		var dateString = h + ':' + m + ':' + s;
		return dateString;
	}
	function mnthGenerator() {
		$("#selector1").css('display', 'none');
		var da = "";
		var d = "";
		var k=0;
		selectDay = new Date(year, selectMnth - 1, 1).getDay();
		prvMntEndDate = new Date(year, selectMnth - 1, 0).getDate();
		selectMntDate = new Date(year, selectMnth, 0).getDate();
		if (selectDay > 0) {
			for (var i = prvMntEndDate - selectDay + 1 , j = selectDay; j > 0; i++,j--) {
				da = da + "<div days='"+k%7+"'>" + i + "</div>";
			}
		}
		for (var i = 1; i <= selectMntDate; i++) {
			da = da + "<div days='"+k%7+"'>" + i + "</div>";
		}
		if (selectDay < 5) {
			for (var i = 1; i <= 35 - selectMntDate - selectDay; i++) {
				da = da + "<div days='"+k%7+"'>" + i + "</div>";
			}
		}
		$(".date").html("");
		$(".date").html(da);
		//days generator
		for (var i = 0, j = 0; i < 35; i++, j++) {
			if (j == 7)
				j = 0;
			d = d + "<div days='"+j+"'>" + day[j] + "</div>";
		}
		$(".days").html("");
		$(".days").html(d);
		detailGenerator();
		attendance = $.parseJSON($.ajax({
			url : "attendance",
			type : "post",
			data:{selectMnth:selectMnth,year:year},
			dataType : 'json',
			async : false
		}).responseText);
		var newid="";
		for(var i=0;i<attendance.length;i++)
			{
			for(var j=1;j<=selectMntDate;j++)
				{
				var s="sDay";
				var e="eDay";
				var ha="hDay";
				newid="emp"+attendance[i].empId;
				newid+=attendance[i].month+'/';
				newid+=j+'/'+attendance[i].year;
				e+=j;
				s+=j;
				ha+=j;
				
				//absent
				 if(timeFormator(attendance[i][s])=="00:00:00" && timeFormator(attendance[i][e])=="00:00:00"){
					document.getElementById(newid).style.backgroundColor ="#A3E4D7" ;
					document.getElementById(newid).innerHTML="A";
					 document.getElementById(newid).style.color="white";
				}
				//present
				if(timeFormator(attendance[i][e])!="00:00:00" && attendance[i][ha]=='NA')
					{
					document.getElementById(newid).style.backgroundColor ="white" ;
					 hoverDiv2=document.createElement("div");
					hoverDiv2.setAttribute('class', 'hdiv2');
					hoverDiv2.innerHTML="Present";
					document.getElementById(newid).appendChild(hoverDiv2); 
					}
				//half day am
				if(timeFormator(attendance[i][e])!="00:00:00" && attendance[i][ha]=='AM')
					{
					document.getElementById(newid).style.background ="linear-gradient(to right, #A3E4D7 0%, #A3E4D7 50%, white 50%,white 100%)" ;
					document.getElementById(newid).innerHTML="A";
					 document.getElementById(newid).style.color="white";
					}
				//half day pm
				if(timeFormator(attendance[i][e])!="00:00:00" && attendance[i][ha]=='PM')
					{
					document.getElementById(newid).style.background ="linear-gradient(to left, #A3E4D7 0%, #A3E4D7 50%, white 50%,white 100%)" ;
					document.getElementById(newid).innerHTML="A";
					 document.getElementById(newid).style.color="white";
					} 
				
				} 
			}
		$("div[day^='0']").css('background-color','#EBEDEF');
		$("div[day^='6']").css('background-color','#EBEDEF');
		$("div[days^='0']").css('background-color','#EBEDEF');
		$("div[days^='6']").css('background-color','#EBEDEF');
		$("div[day^='0']").html('');
		$("div[day^='6']").html('');
		leaveGenrator();
		holidayGenrator();
		
	}

	function right() {
		var h = countDiv + 1;
		if (h != countDiv) {

			selectMnth += 1;
			if (selectMnth == 13) {
				selectMnth = 1;
				year++;
			}
			if (selectMnth == curntMnth && year == currentYear) {
				currentMntGenerator();
			} else
				mnthGenerator();
			if (h == 12) {
				h = 1;
			}
		}

		counter += divLength;

		$(".m-header").animate({
			scrollLeft : counter
		}, speed);
		count++;
		if (count == 13) {

			$(".cal-1-1-l1").html("");
			$(".cal-1-1-l1").html(year);
			$(".m-header").animate({
				scrollLeft : 0
			}, 0);
			counter = 0;
			count = 1;

		}
		speed = 500;

	}

	function left() {
		var h = countDiv - 1;
		if (h != countDiv) {
			selectMnth -= 1;
			if (selectMnth == 0) {
				selectMnth = 12;
				year--;
			}
			if (selectMnth == curntMnth && year == currentYear) {
				currentMntGenerator();
			} else
				mnthGenerator();
			if (h == 12) {
				h = 1;

			}
		}

		count--;
		if (count == 0) {
			count = 12;
			counter = maindivLength;
			$(".m-header").animate({
				scrollLeft : counter
			}, 0);

			$(".cal-1-1-l1").html("");
			$(".cal-1-1-l1").html(year);
		}
		counter -= divLength;
		$(".m-header").animate({
			scrollLeft : counter
		}, speed);
		speed = 500;

	}
	function currentMnthDetail()
	{	$(".data").html("");
		for (var l = 0; l < heirarchy.length; l++) {
			var id='emp'+heirarchy[l].p.empId;
			var sdiv = "<div class='col-xs-36 cal-3 ' id='"+id+"'>"
					+ "<div class='col-xs-6 cal-3-l' >";
			sdiv += heirarchy[l].p.fName;
			sdiv += "</div>";
			sdiv += "<div class='col-xs-30 '><div class='col-xs-36 cal-3-r'>";
			if (currentDate >= selectedDate) {
				var k=selectDay-2;
				var count1=0;
				for (var i = currentDate - 16, j = 0; j <= 16 + (selectMntDate - currentDate)&&k<35&&count1<35;count1++, k++, i++, j++)
					{
					eId = id;
					eId +=selectMnth  + "/";
					eId += i ;
					eId += "/" + year;
					sdiv += "<div class= 'e1' id='"+eId+"' day='"+k%7+"' >"
							+ "</div>";
					}					
				for (var i = 1; i <=35 - (16 + (selectMntDate - currentDate))&&k<35+2&&count1<35;count1++,k++, i++)
					{
					eId = id;
					eId+=selectMnth + 1 + "/";
					eId += i ;
					eId += "/" + year;
					sdiv += "<div class= 'e1' id='"+eId+"' day='"+k%7+"' >"
							+ "</div>";
					}
			} else {
				var k=selectDay-3;
				var count1=0;
				for (var i = (prvMntEndDate - (16 - currentDate + 1) + 1), j = (16 - currentDate + 1); j > 0 && k<35&&count1<35;count1++, k++,j--, i++)
					{
					eId = id;
					eId+=selectMnth - 1 + "/";
					eId += i ;
					eId += "/" + year;
					sdiv += "<div class= 'e1' id='"+eId+"' day='"+(k+1)%7+"' >"
							+ "</div>";
							
					}
				for (var i = 1; i <= selectMntDate && k<(35+3)&&count1<35;count1++,k++, i++)
					{
					eId = id;
					eId +=selectMnth  + "/";
					eId += i ;
					eId += "/" + year;
					sdiv += "<div class= 'e1' id='"+eId+"' day='"+(k+1)%7+"'>"
							+ "</div>";
					}
				for (var i = 1; i < 5 && k<35&&count1<35;count1++, i++,k++)
					{
					eId = id;
					eId+=selectMnth + 1 + "/";
					eId += i ;
					eId += "/" + year;
					sdiv += "<div class= 'e1' id='"+eId+"' day='"+(k+1)%7+"'>"
							+ "</div>";
					}
			}
			sdiv += "</div></div></div>";
			$(".data").append(sdiv);
			
		}
		
	}
	function detailGenerator() {
		$(".data").html("");
		var k=0;
		for (var l = 0; l < heirarchy.length; l++) {
			k=0;
			var id='emp'+heirarchy[l].p.empId;
			var sdiv = "<div class='col-xs-36 cal-3 ' id='"+id+"'>"
					+ "<div class='col-xs-6 cal-3-l' >";
			sdiv += heirarchy[l].p.fName;
			sdiv += "</div>";
			sdiv += "<div class='col-xs-30 '><div class='col-xs-36 cal-3-r'>";
			if (selectDay > 0) {//first day of selected month[0-6]
				for (var i = prvMntEndDate - selectDay + 1, j = selectDay,k=0;k<35, j >0;k++, i++, j--) {
					eId = id;
					eId += selectMnth - 1 + "/";
					eId += i ;
					eId += "/" + year;
					sdiv += "<div class= 'e1' id='"+eId+"' day='"+k%7+"' >"
							+ "</div>";
				}
			}
			
			for (var i = 1; k<35,i <= selectMntDate;k++, i++) {
				eId = id;
				eId += selectMnth + "/";
				eId += i ;
				eId += "/" + year;
				sdiv += "<div class= 'e1' id='"+eId+"' day='"+k%7+"' >" + "</div>";
			}
			if (selectDay < 5) {
				for (var i = 1; i <= 35 - selectMntDate - selectDay,k<35;k++, i++) {
					eId = id;
					eId += selectMnth + 1 + "/";
					eId += i ;
					eId += "/" + year;
					sdiv += "<div class= 'e1' id='"+eId+"' day='"+k%7+"'>"
							+ "</div>";
				}
			}
			sdiv += "</div></div></div>";
			$(".data").append(sdiv);
		}
		
	}
	function leaveGenrator()
	{
		var noOfDay;
		var dates=[];
		for(var i=0;i<heirarchy.length;i++)
			{
			for(var j=0;j<leaves.length;j++)
				{
				if(heirarchy[i].p.empId==leaves[j].empId){
					empId=leaves[j].empId;
					fromDate=(leaves[j].fromDate);
					toDate=leaves[j].endDate;
					noOfDay=parseFloat(leaves[j].noOfDays);
					 dates = [];
					 var c = new Date(fromDate).getMonth() + 1;
						var y = new Date(fromDate).getFullYear();
						var nd = new Date(fromDate).getDate();
						var my = new Date(toDate).getDate() ;
						var nm=new Date(toDate).getMonth()+1 ;
						for (var x = 0; x < noOfDay; x++) {
							dates.push(c + '/' + nd + '/' + y);
							if (my <= nd) {
								c++;
							}
							nd++;
							if (c == 12) {
								y++;
								c = 1;
							}
						}
						$("#emp"+empId).find('div').each(function(){
							for(var z=0;z<dates.length;z++)
								{
								 var e=empId+dates[z];
								 var sd=empId+fromDate;
								 var ed=empId+toDate;
								 $("div[day^='0']").css('background-color','#EBEDEF');
								 $("div[day^='6']").css('background-color','#EBEDEF');
								 if(leaves[j].halfDayFrom=='AM' && leaves[j].halfDayEnd==null)
								 {
								 $(document.getElementById("emp"+sd)).css({background:"linear-gradient(to left," +leaves[j].p.colorCode+ "  0%, "+leaves[j].p.colorCode+ "  50%, white 50%,white 100%)"});
								 } 
							   if(leaves[j].halfDayEnd=='PM'&& leaves[j].halfDayFrom==null)
								 {
								 $(document.getElementById("emp"+ed)).css({background:"linear-gradient(to right," +leaves[j].p.colorCode+ "  0%," +leaves[j].p.colorCode+ "  50%, white 50%,white 100%)"});
								 }
							  if(leaves[j].halfDayFrom=='AM' &&  leaves[j].halfDayEnd=='PM')
								 {
								  $(document.getElementById("emp"+sd)).css({background:"linear-gradient(to left," +leaves[j].p.colorCode+ " 0%," +leaves[j].p.colorCode+ " 50%, white 50%,white 100%)"});
								  $(document.getElementById("emp"+ed)).css({background:"linear-gradient(to right," +leaves[j].p.colorCode+ " 0%," +leaves[j].p.colorCode+ " 50%, white 50%,white 100%)"});
								 }  
								 $(document.getElementById("emp"+e)).css('background-color',leaves[j].p.colorCode);
								 $(document.getElementById("emp"+e)).html("L");
								 $(document.getElementById("emp"+e)).css('color','white');
								 if(leaves[j].createdDate>leaves[j].fromDate)
									 $(document.getElementById("emp"+e)).css('border','2px solid red');
								 hoverDiv="<div class='hdiv'>"+leaves[j].leaveType+"</div>"
								 $(document.getElementById("emp"+e)).append(hoverDiv);
								   
								}
					 })
				}
				}
			}
	}
	function holidayGenrator()
	{
		var date=[];
		var empid=[];
		for(var j=0;j<holidays.length;j++)
			{
			for(var i=0;i<heirarchy.length;i++)
			{
			empid.push(heirarchy[i].empId);
			var sd=new Date(holidays[j].festivalSDate).getDate();
			var sm=new Date(holidays[j].festivalSDate).getMonth()+1;
			var sy=new Date(holidays[j].festivalSDate).getFullYear();
			var ed=new Date(holidays[j].festivalEDate).getDate();
			var em=new Date(holidays[j].festivalEDate).getMonth()+1;
			var ey=new Date(holidays[j].festivalEDate).getFullYear();
			var noh=holidays[j].noh;
			for (var x = 0; x < noh; x++) {
				date.push(sm + '/' + sd + '/' + sy);
				if (ed <= sd) {
					em++;
				}
				sd++;
				if (sm == 12) {
					sy++;
					sm = 1;
				}
			}
			
			}
			}
		for(var k=0;k<date.length;k++)
		{
		var e1=empid[k]+date[k];
		$(document.getElementById("emp"+e1)).css('background-color','#D7BDE2');
		 $(document.getElementById("emp"+e1)).html("H");
		 $(document.getElementById("emp"+e1)).css('color','white');
		}
		for(var j=0;j<holidays.length;j++)
		{
		for(var i=0;i<heirarchy.length;i++)
		{
			var sd=new Date(holidays[j].festivalSDate).getDate();
			var sm=new Date(holidays[j].festivalSDate).getMonth()+1;
			var sy=new Date(holidays[j].festivalSDate).getFullYear();
			obj[sm+'/'+sd+'/'+sy] = holidays[j].festivalName;
			xyz.push(obj);
			hoverDiv="<div class='hdiv'>"+xyz[0][sm+'/'+sd+'/'+sy]+"</div>";
			$(document.getElementById('emp'+empid[i]+sm+'/'+sd+'/'+sy)).append(hoverDiv);   
		}
		}
	}
</script>
<style>
.main-container {
	height: 660px;
	background-color: e9e9e9;
}

.container {
	height: 500px;
	background-color: white;
	margin-top: 20px;
	width: 97%;
	margin-left: 20px;
	margin-right: 20px;
	padding: 0;
}

.title1 {
	height: 30px;
}

.title2 {
	height: 30px;
	margin-top: 10px;
	padding: 0;
	box-sizing: border-box;
	background-color:  #f5a57a;
}

.title1-left {
	font-size: 18px;
}

.title2-left {
	font-size: 20px;
	line-height: 30px;
	color:white;
}

.cal-1 {
	background-color: #de5811;
	height: 60px;
}

.cal-1-1-l1 {
	color: white;
	margin-top: 10px;
	font-size: 20px;
}

.cal-1-1-l2 {
	color: white;
	margin-top: 10px;
	font-size: 20px;
	border-radius: 10px;
	border-right: 1px solid #e56b16;
	background-color: #e56b16;
	cursor: pointer;
}

.header {
	height: 60px;
	background-color: #de5811;
	color: white;
	padding: 0 auto;
	font-size: 20px;
	line-height: 60px;
}

.m-header {
	overflow-x: scroll;
	overflow-y: hidden;
	white-space: nowrap;
	background-color: #de5811;
	width: 96%;
	float: left;
	height: inherit;
	cursor: pointer;
}

.l-header {
	height: inherit;
	width: 2%;
	float: left;
	cursor: pointer;
}

.r-header {
	height: inherit;
	width: 2%;
	float: left;
	cursor: pointer;
}

.m-header div {
	display: inline-block;
	color: white;
	text-align: center;
	text-decoration: none;
	border-right: 1px solid;
	width: 8%;
	box-sizing: border-box;
	height: inherit;
}

#selector {
	position: absolute;
	z-index: 1000;
	background-color: rgba(0, 0, 0, 0.1);
	height: inherit;
	width: 110px;
	border: 2px solid black;
	/*transform: translate(200px);*/
}

#selector1 {
	position: absolute;
    z-index: 1000;
    background-color: rgba(0, 0, 0, 0.1);
    height: inherit;
    width: 29px;
    border: 2px solid black;
    transform: translate(515px);
}

.cal-2 {
	background-color: #e6e6e6;
	height: 60px;
	margin-top: 20px;
}

.cal-2-l {
	height: inherit;
	line-height: 60px;
	font-size: 20px;
	border-right: 1px solid #B2BABB;
}

.cal-2-r {
	height: inherit;
}

.days {
	height: 50%;
	background-color: #e6e6e6;
}

.days div {
	display: inline-block;
	color: black;
	text-align: center;
	border-right: 1px solid #B2BABB;
	width: 2.8571%;
	box-sizing: border-box;
	font-size: 15px;
	margin-top: 5px;
	height: 24px;
}

.date {
	height: 50%;
	background-color: #e6e6e6;
}

.date div {
	display: inline-block;
	color: black;
	text-align: center;
	text-decoration: none;
	border-right: 1px solid #B2BABB;
	width: 2.8571%;
	box-sizing: border-box;
	height: 35px;
	font-size: 15px;
	margin-top: 5px;
}

.data {
	margin-top: 20px;
	border: 1px solid #B2BABB;
}

.cal-3-l {
	border-right: 1px solid #B2BABB;
	color: black;
	border-bottom: 1px solid #B2BABB;
	font-size: 15px;
	box-sizing: border-box;
	height: 22px;
}

.cal-3-r {
	border-bottom: 1px solid #B2BABB;
	font-size: 15px;
	height: 22px;
	box-sizing: border-box;
	display: inline-block;
}

.cal-3-r div {
	display: inline-block;
	text-align: center;
	text-decoration: none;
	border-right: 1px solid #B2BABB;
	width: 2.8571%;
	box-sizing: border-box;
	font-size: 15px;
	height: 19px;
}

.col-xs-36 {
	width: 100%;
	padding: 0;
	margin: 0;
}
.e1 .hdiv
{
position: absolute;
/*height:20px;*/
width: 100px;
display: none;
background-color: rgba(0, 0, 0, 0.6);
z-index: 1000;
}
.e1:HOVER .hdiv
{
display: block;
	
}
.e1 .hdiv1
{
position:relative;
height:20px;
width: 100px;
background-color: white;
z-index: 1000;
top: 15px;
display: none;
}
.e1 .hdiv2
{
position:relative;
height:20px;
width: 100px;
background-color: white;
z-index: 1000;
top: 15px;
display: none;
}
.e1:HOVER .hdiv1
{
display: block;
}
.e1:HOVER .hdiv2
{
display: block;
}
.e1 .halfday
{
width:20px;
height:20px;
 background-color: yellow;
    -ms-transform: rotate(45deg); /* IE 9 */
    -webkit-transform: rotate(45deg); /* Safari 3-8 */
    transform: rotate(45deg);
    }
    .temp .hColor
    {
    position: absolute;
    height: 200px;
    width: 350px;
    background-color: #ffffff;
    line-height: 17px;
    font-size: 12px;
    z-index: 1000;
    display: none; 
    box-shadow: 3px 3px 17px 0px white;
    padding-left: 15px;
    cursor: pointer;
    }
     .temp .hColor1
    {
	position: relative;
    height: 20px;
    width: 30%;
    float: left;
    background-color: white;
    color: black;
    z-index: 1000;
    top: 30px;
    border-bottom: 1px solid #dcd7d7;
    margin-top: 6px;
    padding-left: 18px;
    
    }
    .temp .hColor1 .hColor1Child
    {
    position: relative;
    height:15px;
    width:15px;
    border:1px solid;
    }
    .cal-2-l:hover .hColor{
    display: block;
	
}
   
</style>
</head>
<body>
	<div class="col-xs-36 main-container">
		<div class="col-xs-36 container">
			<div class="col-xss-36 title1">
				<div class="col-xs-8 title1-left">My e-days Calendar</div>
				<div class="col-xs-22"></div>
				<div class="col-xs-3"></div>
				<div class="col-xs-3"></div>
			</div>
			<div class="col-xs-36 title2">
				<div class="col-xs-18 title2-left"> Manager Dashboard
				</div>
				<div class="col-xs-18 title2-right">
						</div>
			</div>

			<div class="col-xs-36 cal-1">
				<div class="col-xs-6 ">
					<div class="col-xs-18 cal-1-1-l1"></div>
				</div>

				<div class="col-xs-30">
					<div class="header">
						<div id="selector"></div>
						<div class="l-header" onclick="left()">
							&nbsp;<i class="fa fa-angle-left"
								style="line-height: 60px; font-size: 25px"></i>
						</div>
						<div class="m-header"></div>
						<div class="r-header" onclick="right()">
							&nbsp;<i class="fa fa-angle-right"
								style="line-height: 60px; font-size: 25px"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-36 cal-2">
				<div class="col-xs-6 cal-2-l">Hover to expand Keys
				<div class="temp"></div></div>
				<div class="col-xs-30 cal-2-r">
					<div id="selector1"></div>
					<div class="col-xs-36 date"></div>
					<div class="col-xs-36 days"></div>
				</div>
			</div>
			<div class="col-xs-36 data "></div>
			
		</div>
	</div>
	</div>
</body>
</html>