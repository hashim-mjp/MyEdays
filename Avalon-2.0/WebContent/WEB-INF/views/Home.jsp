<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/fusioncharts.charts.js"></script>
	<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/fusioncharts.js"></script>



<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/jquery-1.11.2.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Welcome</title>
	 <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
        body{
                margin: 0;
                padding: 0;
            }
            *{
                box-sizing: border-box;
            }
            
            .main{
                
                height: 100%;
                width: 1000px;
                background-color: #fcfcfc;
                padding: 0px;
              /*  float: left;*/
                min-width: 1000px;
                margin: 0 auto;
                overflow: hidden;
                overflow-x: auto;
            }
            .hdr-Menu{
                    border-bottom: 1px solid black;
                    min-height: 50px;
                    padding-left: 50px;
                    background-color: #f4f4f4;
                    float: left;
                    width: 100%;
                    color: #7c7c7c;
                
            }
            .menu-item{
            //    width: 50px;
                float: left;
                height: inherit;
                //border: 1px solid;
                line-height: 50px;
                padding: 0 10px;
                cursor: pointer;
               
            }
            .menu-item:hover{
             color:#13adcf;
            }
            .profilePic{
                float: right;
                width: 45px;
                height: 45px;
               /* border: 1px solid black;*/
                border-radius: 50%;
                background-image: url('images/profile.jpg');
                background-size: 45px;
                background-position: center;
                margin-top: 2px;
                overflow:hidden;
            }
            .profileName{
                float: right;
                height: inherit;
                line-height: 44px;
                margin-right: 65px;
                margin-left: 10px;
                cursor: pointer;
            }
            .profileName:hover{
                 color: #13adcf;
            }
            .activity-container{
               
                    float: left;
                    padding-left: 2px;
                    width: 52px;
                    /* border: 1px solid black; */
                    height: 90%;
                    background-color: #f4f4f4;
            }
            .activity{
                float: left;
                width: 100%;
                height: 50px;
                /*border: 1px solid black;*/
                margin-bottom: 2px;
                background-color: #aaaaaa;
                border-radius: 5px;
                font-size: 39px;
                text-align: center;
                padding-top: 5px;
                cursor: pointer;
            }
            .activity:hover{
                color: #13adcf;
            }
            .operation-bar{
                width:275px;
                float: left;
                height: 375px;
                border-right: 1px solid;
            }
            .result-bar{
                width: 600px;
                height: 375px;
                /*border: 1px solid ;*/
                float: left;
                overflow:hidden;
                overflow-y:auto;
            }
            .bottom-bar{
                border: 1px solid;
                border-color: black transparent  transparent transparent;
                height: 30px;
                float: left;
                
            }
            .sec{
                border-right: 1px solid ;
                float: left;
                width: 33.33333%;
                height: 100%;
                overflow:hidden;
                
            }
            
            .activity-container .hoverDiv{
                position: absolute;
                display: none;
                //background-color: #fff;
                font-size: 15px;
                
            }
            .activity-container .hoverDiv div{
                position: relative;
                position: relative;
                left: 19px;
                background-color: #ffe9e9;
                padding: 5px;
                top: 11px;
                color: #000;
            }
            .activity-container .hoverDiv ::before{
                
                    border-color: red;
                    border-width: 50px;
                    border-style: solid;
            }
             .activity-container .hoverDiv div:after{
                 bottom: 100%;
                left: 15%;
                border: solid transparent;
                 content: " ";
                 position: absolute;
                 /* pointer-events: none; */
                 border-bottom-color: #ffe9e9;
                 border-width: 10px;
                 margin-left: -10px;
            }
            .activity:hover  .hoverDiv{
                display: block;
            }
            .active{
               color: #13adcf;
            }
            .notice{
                float: right;
    width: 51px;
    height: 50px;
        margin-right: 5px;
            }
            .approved
{
height: 40px;
    width: 40px;
   border: 3px solid #ceafaf;
    border-radius: 30px;
    box-shadow: 8px 8px 8px #888888;
    cursor: pointer;
        overflow: hidden;
    margin-top: 4px;
}
.approved .icon
{
font-size: 30px;
    color: #d41212;
    padding: 0px 2px;
}
.approved .hdiv
{
position: relative;
    width: 100px;
    background-color: #d2cfcf;
    z-index: 1000;
    font-family: cursive;
    font-size: 15px;
    text-align: center;
    display: none;
    top:15px;
}
.approved:HOVER .hdiv
{
display: block;

}
.hover-home-container{
position: absolute;
width:100%;
height:100%;
display:none;
}
.logout{
    float: right;
    height: 100%;
    /* line-height: 13px; */
    font-size: 31px;
    padding: 8px;
        margin-right: 15px;
        cursor: pointer;
}

.logout:hover {
    color: #13adcf;
}
        </style>
        <script>
            
           function  setwidth(){
              var  window_width=$('body').width();
               var window_h=$(window).height();
               
            $(".main").css("width",window_width+"px");
            $('.result-bar').css("width",(window_width-327)+"px");
            $('.result-bar').css("width",(window_width-327)+"px");
            $('.bottom-bar').css("width",(window_width-52)+"px");
            $('.activity-container').css("height",(window_h-55)+"px");
            $('.bottom-bar').css("height",(window_h-428)+"px");
           }
         function  activateAcitvity(){
             $('.activity').removeClass('active');
             $("div[active^='true']").addClass('active');
         }
         
       
        $('window').resize(function(){
            setwidth();
        });
        
        function getEmpDetails(){
        	  var res = $.parseJSON($.ajax({
     			url : "getEmpDetails",
     			type : "post",
     			dataType:'json',
     			async: false
     		}).responseText); 
        	  return res;
        	
        }
        function loadActivityAction(){
        	var activityName=$("div[active='true']").attr('activityName');
        	$.ajax({
                url : "Load_operation_bar",
                data:{activityName:activityName},
                type : "POST",
                success : function(res) {
                	$('.operation-bar').html(res);
                },
                error: function(){
                    alert("ajax fail");
                }
            });
        	
        	$.ajax({
        		url : "Load_result_bar",
                data:{activityName:activityName},
                type : "POST",
                success : function(res) {
                	$('.result-bar').html(res);
                },
                error: function(){
                    alert("ajax fail");
                }
        	});
        	$.ajax({
        		url : "Load_sec1_bar",
                data:{activityName:activityName},
                type : "POST",
                success : function(res) {
                	$('#sec1').html(res);
                },
                error: function(){
                    alert("ajax fail");
                }
        	});
        	$.ajax({
        		url : "Load_sec2_bar",
                data:{activityName:activityName},
                type : "POST",
                success : function(res) {
                	$('#sec2').html(res);
                },
                error: function(){
                    alert("ajax fail");
                }
        	});
        	$.ajax({
        		url : "Load_sec3_bar",
                data:{activityName:activityName},
                type : "POST",
                success : function(res) {
                	$('#sec3').html(res);
                },
                error: function(){
                    alert("ajax fail");
                }
        	});
        	
        }
        function loadDetails(d){
        	$("#pName").html(d.fName+" "+d.lName);
        }
         function  loadSettingForm(){
        	$.ajax({
        		url : "settingForm",
                type : "POST",
                success : function(res) {
                	//$('#menu5').append(res);
                	$(".hover-home-container").css('display','block');
                	$('.hover-home-container').html(res);
                },
                error: function(){
                    alert("ajax fail");
                }
        	});
        	
        } 
         function loadNotifications(){
        	 
        	 $(".approved").css('display','none');
        		$.ajax({
        			url : "notification",
        			type : "post",
        			data : {},
        			success : function(res) {
        				if(res=="ok")
        				{
        					$(".approved").css('display','block');
        				}
        			},
        			error : function() {
        			}
        		});
        		var hoverDiv="<div class='hdiv'>To Approve Leave.. Click Here!!!</div>";
        		$(".approved").append(hoverDiv);

         }
         
         function approvedLeave() {
     		
     		$.ajax({
     			url:"leave-approve-form",
     			type:'post',
     			success:function(res){
     				alert('alk');
     			$(".result-bar").html(res);
     			},
     			error:function(){
     				alert("wrong");
     			}
   				
     		})
     	}
         function loadApplyForm2(){
         	window.open('leave-apply-form','_blank');
         }
         
        $('document').ready(function(){ 
            setwidth();
             var details=getEmpDetails();
             console.log(details);console.log("%%%%%%%%%%%%%%%%%%%%")
            activateAcitvity();
            loadActivityAction();
           	loadDetails(details);
            $('.activity').click(function(){
               $('.activity').attr('active','false');
               $(this).attr("active",'true');
               activateAcitvity();
               loadActivityAction();
            });
            loadNotifications();
            loadProfilePic("/Avalon-1.0/"+details.pic);
        });
       function loadProfilePic(url){
    	   $(".profilePic img").attr("src",url);
       }
        function openAddEmpForm(){
        	window.open('add-emp','_blank');
        }
        function loadManagerDashboard(){
        	window.open('manager-dashboard','_blank');
        }
        function logout(){
        	window.open("logout",'_self')
        	
        }
    </script>
</head>
<body>
	<div class="hover-home-container"></div>
	<div class="main">
            <div class="hdr-Menu">
                <div class="menu-item" id="menu1" onclick='openAddEmpForm()'>Add Emp</div>
                <div class="menu-item" id="menu2" onclick="loadApplyForm2()">Leave Apply</div>
                 <div class="menu-item" id="menu3" onclick="loadManagerDashboard()">Manager Dashboard</div>
                  <div class="menu-item" id="menu5" onclick='loadSettingForm()'><i class="fa fa-cog"></i> Setting</div>
                  
                 
                  <div class='logout' onclick='logout()'><i class="fa fa-power-off"></i></div>
                 <div class='notice'>
                  			<div class="approved" onclick="approvedLeave()"><i class="fa fa-bell icon"></i></div>
                  </div>
                 <div class="profileName"><span id="pName">Hashim</span> <i class="fa fa-caret-down"></i></div>
                 <div class="profilePic"><img src='<%=request.getContextPath() %>/images/profile.jpg' width=45px height=45px></div>
                
                  
            </div>
            
            <div class="activity-container">
                <div class="activity" id="activity1" active="true" activityName="Dashboard"><i class="fa fa-location-arrow"></i> <div class="hoverDiv"><div>Emp DashBoard</div></div></div>
                 <div class="activity" id="activity2" active="false"  activityName="EmpDetails"><i class="fa fa-location-arrow"></i><div class="hoverDiv"><div>Emp Details</div></div></div>
               
            </div>
            <div class="operation-bar"></div>
            <div class="result-bar"></div>
            <div class="bottom-bar">
                <div class="sec" id="sec1"></div>
                <div class="sec" id="sec2"></div>
                <div class="sec" id="sec3"></div>
            </div>
            
        </div>

</body>



</html>