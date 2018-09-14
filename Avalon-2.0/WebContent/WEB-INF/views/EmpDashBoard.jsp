<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/jquery-1.11.2.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard</title>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet">
 <style>
 body{
 /* background-color:#f1f1f1;
 padding:10px; */
 }
        .container{
            /* height: 410px; */
           
            box-sizing: border-box;
            padding: 1px;
            background-color: #ffff;
    		border-radius: 5px;
    		float:left;
        }
        .d-1{
            color: #fff;
            background-color: #b58348;
            padding: 0px 0px 0px 15px;
            height: 28px;
            line-height: 29px;
            box-sizing: border-box;
            border-radius: 5px;
            float: left;
            width: 100%;
    
        }
        .row1{
                    box-sizing: border-box;
    float: left;
    width: 100%;
    background-color: #fff;
    /* height: 20px; */
    /* height: 25px; */
    padding: 0;
    line-height: 22px;
    border-left: 1px solid #c7c5c5;
    border-right: 1px solid #c7c5c5;
    border-bottom: 1px solid #c7c5c5;
    /* overflow: hidden; */
        }
        .lftmnth{
                float: left;
                box-sizing: border-box;
                width: 8%;
                background-color: aqua;
                height: inherit;
                text-align: center;
                font-size: 14px;
                background-color: #d9ffff;
        }
        .rightday{
            float: left;
            box-sizing: border-box;
            width: 92%;
            height: inherit;
            /*background-color: cadetblue;*/
        }
        .day{
           border-left: 1px solid #c7c5c5;
    float: left;
    height: inherit;
    width: 2.70270%;
    box-sizing: border-box;
    text-align: center;
    color: #272424;
    font-size: 14px;
    line-height: 22px;
    cursor: default;
        }
        .calendar{
            float: left;
            width: 100%;
           /*  height: 27px; */
            border-top: 1px solid #c7c5c5;
            margin-top:5px;
        }
        .calendar .blank1{
            background-color: #f1f1f1;
            cursor: not-allowed;
            height: inherit;
        }
        
        .hdiv{
               background: white;
  			  /* position: relative; */
    			position: absolute;
    			overflow: hidden;
    			display: none;
    			width: 100px;
   				color: #000;
    			box-shadow: 3px 2px 13px 1px black;
    			z-index:6000;
        }
        .day:hover .hdiv{
        	display:block;
        }
        
      /*   .info{
        float: left;
    width: 100%;
    margin-top: 12px;
        
        }
        
       .noticeBoard{
        	float: left;
    		width: 50%;
    		/* height: 100px; 
    		background-color: #fff;
    		margin-top: 10px;
    		padding: 10px;
    		box-sizing:border-box;
        }
        .info{
        float: left;
    width: 100%;
    margin-top: 12px;
    background-color: #fff;
        
        }
         .hdr{
       		 float:left;
        	width:100%;
            font-size: 21px;
    		color: #585858;
    		
        }
        .img{
           float: left;
    width: 12%;
    box-sizing: border-box;
    text-align: center;
    border: 1px solid black;
    min-width:158px;
   
        }
        .img-1{
        /* background-color: #999595; 
    float: left;
    width: 158px;
    height: 204px;
    box-sizing: border-box;
    border: 1px solid #d9d9d9;
    background-image: url(images/propic.png);
    background-position: center;
    background-size: 204px;
    background-repeat: no-repeat;
       box-sizing:border-box;
    
    
        }
         .dtails{
           float: left;
    width: 64%;
    border: 1px solid black;
    box-sizing: border-box;
    height: 200px;
    padding: 10px;;
           
        }
        .dtails-1{
        float: left;
    	width: 100%;
    	box-sizing: border-box;
    	border-bottom: 1px solid #a3a3a3;
    	background-color: #f3f3f3;
    	padding: 5px 0px 6px 10px;
    
        }
        .dtails .label1{
        	float:left;
        	width:50%;
    		border-right: 1px dashed #a3a3a3;
    		box-sizing:border-box;
        }
         .dtails .label2{
          float:left;
          width:50%;
          box-sizing: border-box;
   		 padding-left: 10px;
        }
        */
        /* .sick{
        float: left;
    width: 100%;
    background-color: #ffffloat: left;
    background-color: #fff;
    box-sizing: border-box;
   /*  border-left: 8px solid #f1f1f1; 
    padding: 10px;
}
        .s-1{
            background-color: #dbdada;
    padding: 5px;
    font-size: 15px;
    font-weight: 600;
    color: #7c7c7c;
    margin-top:5px;
        }
        .s-2{
         border-right:1px dashed #acacac;
           
        }
        .s-3{
            border-right: 1px dashed #acacac;
            margin-top:5px;
            border-bottom: 1px solid #cecdcd;
        }
        .s-4{
        	margin-top:5px;
        	border-bottom: 1px solid #cecdcd;
        }
        
 */        
       /*  
        
        #clock {
     height: 250px;
    width: 250px;
    border-radius: 50%;
    border: 1px solid black;
    position: relative;
    background-image: url(images/clock.jpg);
    background-repeat: no-repeat;
    background-size: 163%;
    background-attachment: ;
    background-position: center;
    background-position-x: -73px;
    background-position-y: -11px;
    margin:0 auto;
}

.tick {
    height: 49%;
    width: 5px;
    position: absolute;
    transform: rotate(125deg);
    transform-origin: bottom;
   
}
     #six {
  left: 250px;
  bottom: 0px;
}   

#nidle
    {
              transform: rotate(187deg);
    transform-origin: center;
    position: absolute;
    top: 237px;
    left: -94px;
    width: 133px;
     transition: 4000ms cubic-bezier(0.18, 0.89, 0.32, 1.28);
    }
     */
    
    
    
    
    
    main {
  min-width: 320px;
  max-width: 800px;
  padding: 50px;
  margin: 0 auto;
  background: #fff;
}

section {
  display: none;
  /* padding: 20px 0 0; */
  border-top: 1px solid #ddd;
}

.tab {
  display: none
}

label {
  display: inline-block;
  margin: 0 0 -1px;
  padding: 7px 7px;
  font-weight: 600;
  text-align: center;
  color: #bbb;
  border: 1px solid transparent;
}

label:before {
  font-family: fontawesome;
  font-weight: normal;
  margin-right: 10px;
}

label[for='tab1']:before { content: '\f1cb'; }
label[for*='2']:before { content: '\f17d'; }
label[for*='3']:before { content: '\f16b'; }
label[for*='4']:before { content: '\f1a9'; }

label:hover {
  color: #888;
  cursor: pointer;
}

input:checked + label {
  color: #555;
  border: 1px solid #ddd;
  border-top: 2px solid orange;
  border-bottom: 1px solid #fff;
  
  background-color: #fff;
  
}

#tab1:checked ~ #content1,
#tab2:checked ~ #content2,
#tab3:checked ~ #content3,
#tab4:checked ~ #content4 {
  display: block;
}
    
    
    
    </style>
<script>
        var days=['S','M','T','W','T','F','S'];
        var mnths= ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
        $(document).ready(function(){
            
            var date=new Date();
            var cday=date.getDay();
            var cmnth=date.getMonth();
            var cyear=date.getFullYear();
           generateDiv(date,cday,cmnth,cyear,'calendar1');
           generateDiv(date,cday,cmnth,cyear-1,'calendar2');
           var empdetails = $.parseJSON($.ajax({
      			url : "getEmpDetails",
      			type : "post",
      			dataType:'json',
      			async: false
      		}).responseText);
           fillAttendance();
            //disable the weakend holidays
            $( "div[day^='0']" ).css("background-color","#f1f1f1");
            $( "div[day^='6']" ).css("background-color","#f1f1f1");
            
            var res = $.parseJSON($.ajax({
    			url : "getLeaves",
    			type : "post",
    			data:{empId:empdetails.empId},
    			dataType:'json',
    			async: false
    		}).responseText);
           var hoverdiv="";
           
           //calculate the leaves and store in an array
          var between=[];
          for(i=0;i<res.length;i++){
        	  between=[];
        	  var t=new Date(res[i].fromDate);//from date
   		  	  var tc=new Date(t.getTime());
        	  
        	  for(j=0;j<res[i].noOfDays;j++){
        		// var date=new Date(tc);
        		 var cm=new Date(tc).getMonth()+1;
        		 var cd=new Date(tc).getDate();
        		 var cy=new Date(tc).getFullYear();
        		 dstr="";
        		 dstr+=cm>9?""+cm:"0"+cm;
        		 dstr+=cd>9?""+cd:"0"+cd;
        		 dstr+=cy;
        		//  dstr=cm>9?""+cm:"0"+cm+"."+cd>9?""+cd:"0"+cd+"."+cy;
        		   //dstr=new Date(tc).getMonth()+1+""+new Date(tc).getDate()+""+new Date(tc).getFullYear();
        		   between.push(dstr);
        		   tc.setDate(tc.getDate() + 1);
        	  }
        	   for(k=0;k<between.length;k++){
            	  $("#d"+between[k]).css("background-color",res[i].p.colorCode);
            	  hoverdiv="<div class='hdiv'>"+res[i].leaveType+"</div>";
            	  $("#d"+between[k]).append(hoverdiv);
              } 
        	  
        	    if(res[i].halfDayFrom=='AM' &&( res[i].halfDayEnd==null)){//Only half day in AM
        	    	$("#d"+between[0]).css("background","linear-gradient(to right,  "+res[i].p.colorCode+" 0%,"+res[i].p.colorCode+" 45%,#ffffff 0%,#f6f6f6 100%)");
        	   }
        	   else if(res[i].halfDayFrom=='PM' &&( res[i].halfDayEnd==null )){//only half day in Pm
        		   $("#d"+between[0]).css("background","linear-gradient(to left,  "+res[i].p.colorCode+" 0%,"+res[i].p.colorCode+" 45%,#ffffff 0%,#f6f6f6 100%)");
        	   }
        	   else if(res[i].halfDayEnd=='AM' & res[i].halfDayFrom==null ){
        		   $("#d"+between[between.length-1]).css("background","linear-gradient(to right,  "+res[i].p.colorCode+" 0%,"+res[i].p.colorCode+" 45%,#ffffff 0%,#f6f6f6 100%)");
        	   }
        	  
        	   else if(res[i].halfDayFrom=='PM' && res[i].halfDayEnd=='AM' && res[i].noOfDays>=1){//multiple halfday in first day
        		   $("#d"+between[0]).css("background","linear-gradient(to left,  "+res[i].p.colorCode+" 0%,"+res[i].p.colorCode+" 45%,#ffffff 0%,#f6f6f6 100%)");
         		  $("#d"+between[between.length-1]).css("background","linear-gradient(to right,  "+res[i].p.colorCode+" 0%,"+res[i].p.colorCode+" 45%,#ffffff 0%,#f6f6f6 100%)");
          	  }
        	    var createddate=new Date(res[i].createdDate).getTime();
        	    var fDate=new Date(res[i].fromDate).getTime();
        	  if(createddate>fDate){
        		  for(var l=0;l<between.length;l++){
        			  $("#d"+between[l]).css('border','1px solid red');
            	  } 
        	  }
        	 
          } 
          
          
         
          
          $( "div[day^='0']" ).css("background-color","#f1f1f1");
          $( "div[day^='6']" ).css("background-color","#f1f1f1");
          var festivals=[];
          
          
           festivals = $.parseJSON($.ajax({
    			url : "getfestivals",
    			data:{officeId:empdetails.officeId},
    			type : "post",
    			dataType:'json',
    			async: false
    		}).responseText);
           for(i=0;i<festivals.length;i++){
        	   var fesId=[];
        	   var d=new Date(new Date(festivals[i].startDate).getTime());
        	   for(var j=0;j< festivals[i].noh;j++){
        		   var t="";
        		   var m=d.getMonth()+1;
        		   t+=m>9?""+m:"0"+m;
        		   t+=d.getDate()>9?""+d.getDate():"0"+d.getDate();
        		   t+=d.getFullYear();
        		   $("#d"+t).css("background-color","red");
              	   $("#d"+t).append("<div class='hdiv'>"+festivals[i].festivalName+"</div>");
              	   d.setDate(d.getDate() + 1);
        	   }
        	   
          }
         
          
           
            var sickrcrd=0;
           var accr=0;
           var c=[];
           
           for(i=0;i<res.length;i++){
        	    var c=new Date(res[i].fromDate).getFullYear();
           	if(res[i].leaveType=="sick" && c==cyear ){
           		accr++;
           		sickrcrd+=res[i].noOfDays;
           	}
           	
           }
           $("#rcrd").html(sickrcrd);
           $("#accr").html(accr);
           $("#duration").html(sickrcrd);
           var brd=accr*accr*sickrcrd
           $("#bradeford").html(brd);
           var r=167;
           r+=brd*2;
           $("#nidle").css('transform',"rotate("+r+"deg)")
         })
      
       function   generateDiv(date,cday,cmnth,cyear, idDiv){
        	var d_str="";
        	 d_str+=" <div class='col-xs-36 row1'> <div class='lftmnth'>"+cyear+"</div> <div class='rightday'>"
             for(var i=0,j=0;i<37;i++,j++){
                 if(j==7)
                     j=0;
                 d_str+="<div class='day' day='"+j+"'>"+days[j]+"</div>";
                 
             }
             d_str+="</div></div>"
             $("."+idDiv).html(d_str);
             
             /***********************************************************************************/
             var id="";
             for(var i=0;i<12;i++){
                 j=0;
                 id="";
                 d_str="";
                 d_str+="<div class='col-xs-36 row1 '>"
                	 +"<div class='lftmnth'>"+mnths[i]+"</div>";
                 var d=new Date(cyear,i,1).getDay();//it returns the no. of weak day between [0-6]
                 var ndays=new Date(cyear,(i+1),0).getDate();//last date
                 
                 id+=(i+1)>9 ?""+(i+1):"0"+(i+1);
                 id+="/"
                 id+=cyear+"/";
                 d_str+="<div class='rightday'>";
                 for( k=0;k<d && j<37;k++,j++)
                     d_str+="<div day='"+k+"' class='day blank1'>&nbsp</div>";
                 for( k=1;k<=ndays && j<37;k++,j++){
                 	id="d";
                     id+=(i+1)>9 ?""+(i+1):"0"+(i+1);
                     //id+=(i+1)+"";
                     id+=k>9?""+k:"0"+k;
                     id+=cyear;
                    // id+=k+""+cyear;
                      d_str+="<div class='day' id='"+id+"' day='"+j%7+"' >"+k+"</div>";
                 }
                     
                 for(;j<37;j++)
                     d_str+="<div class='day blank1' day='"+j%7+"' >&nbsp</div>";
                 d_str+="</div></div>";
               
                 $("."+idDiv).append(d_str);
             }
        }
        function getEmpdetails(){
        	 var d = $.parseJSON($.ajax({
       			url : "getEmpDetails",
       			type : "post",
       			dataType:'json',
       			async: false
       		}).responseText);
        	 return d;
        }
        function fillAttendance(){
        	
        	
        	attendance = $.parseJSON($.ajax({
    			url : "Empattendance",
    			type : "post",
    			dataType : 'json',
    			async : false
    		}).responseText);
    		var newid="";
    		for(var i=0;i<attendance.length;i++)
    			{
    			var mnth=attendance[i].month;
    			var year=attendance[i].year;
    			var nDays=new Date(year,mnth,0).getDate();
    			for(var j=1;j<=nDays;j++)//no of days in a month
    				{
    				var s="sDay";
    				var e="eDay";
    				var ha="hDay";
    				/* newid="d"+attendance[i].empId;
    				newid+=attendance[i].month+'/';
    				newid+=j+'/'+attendance[i].year; */ 
    				newId='d';
    				var m=mnth<=9?'0'+mnth:''+mnth;
    				newId+=m;
    				newId+=j<=9?'0'+j:''+j;
    				newId+=year;
   					e+=j;
    				s+=j;
    				ha+=j;
    					
    					//absent
    					 if(timeFormator(attendance[i][s])=="00:00:00" && timeFormator(attendance[i][e])=="00:00:00"){
    		    				
    						
    						 $("#"+newId).css('background-color','#A3E4D7');
    						}
    					//present
    					if(timeFormator(attendance[i][e])!="00:00:00" && attendance[i][ha]=='NA')
    						{
    						
    						//$("#"+newId).css('background-color','green');
    						}
    					//half day am
    					if(timeFormator(attendance[i][e])!="00:00:00" && attendance[i][ha]=='AM')
    						{
    						
    						 $("#"+newId).css("background","linear-gradient(to right,  #A3E4D7 0%,#A3E4D7 45%,#ffffff 0%,#f6f6f6 100%");
    						}
    					//half day pm
    					if(timeFormator(attendance[i][e])!="00:00:00" && attendance[i][ha]=='PM')
    						{
    						 $("#"+newId).css("background","linear-gradient(to left,  #A3E4D7 0%,#A3E4D7 45%,#ffffff 0%,#f6f6f6 100%");

    						} 
    					
    				}
        }}
        
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
    </script>

</head>
<body>
<input class="tab" id="tab1" type="radio" name="tabs" >
  <label for="tab1">Prev Year</label>
    
  <input class="tab" id="tab2" type="radio" name="tabs" checked>
  <label for="tab2">Current Year</label>
    
  <!-- <input class="tab" id="tab3" type="radio" name="tabs">
  <label for="tab3">Next Year</label>
   -->
  
  <section id="content1">
   <div class=" col-xs-36 container">
        <div class="col-xs-36 d-1">Dashboard</div>
        <div class="col-xs-36 calendar2 calendar"></div>
    </div>
  </section>
    
  <section id="content2">
    <div class=" col-xs-36 container">
        <div class="col-xs-36 d-1">Dashboard</div>
        <div class="col-xs-36 calendar1 calendar"></div>
    </div>
  </section>
    
  <section id="content3">
   
  </section>
  
       
</body>
</html>