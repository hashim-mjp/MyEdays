<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
<style>
* {
	box-sizing: border-box;
}

.s {
	float: left;
	width: 100%;
}

.s-1 {
	z-index: 1000;
	height: 480px;
	width: 349px;
	margin-left: 200px;
	position: absolute;
	line-height: normal;
	transition: 500ms ease-in-out;
}

.s-1-1 {
	background-color: #ffffff;
	height: 100%;
	position: relative;
	border: 1px solid #b5b0b0;
	top: 70px;
	left: 175px;
	box-shadow: 2px 1px 20px 0px black;
	border-radius: 5px;
	overflow: hidden;
}

.s-1-1-1 {
	background-color: #58D68D;
	height: 45px;
	line-height: 45px;
	padding-left: 20px;
	box-sizing: border-box;
	font-size: 22px;
	font-family: inherit;
	font-weight: bold;
	color: white;
}

.s-1-1-2 {
	margin-top: 10px;
}

.s-1-1-2-1 {
	height: 352px;
}

.s-row {
	box-sizing: border-box;
	border-bottom: 1px solid #58D68D;
}

.s-lable {
	float: left;
	width: 80%;
	padding: 7px 10px;
	box-sizing: border-box;
	background-color: #fff;
	color: #239B56;
}

.s-lable2 {
	background: #82E0AA;
	float: left;
	width: 20%;
	box-sizing: border-box;
	padding: 7px 8px;
	color: #fff;
}

.s-lable2 .weakEnd {
	position: absolute;
	width: 20%;
	box-sizing: border-box;
	display: none;
}

.s-lable2 .weakEnd div {
	height: 100%;
	width: 100%;
	position: relative;
	top: 10px;
	padding: 4px 8px;
	box-shadow: -3px 3px 8px #9bdc44;
	box-sizing: border-box;
	color: #239B56;
	left: -16px;
	background-color: #fff;
	z-index: 1000;
}

.s-icon {
	float: right;
	cursor: pointer;
}

.s-icon:hover {
	background-color: #1D8348;
}

.switch {
	position: relative;
	display: inline-block;
	width: 35px;
	height: 20px;
}

.switch input {
	display: none;
}

.slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ccc;
	-webkit-transition: .4s;
	transition: .4s;
}

.slider:before {
	position: absolute;
	content: "";
	height: 16px;
	width: 16px;
	left: 1px;
	bottom: 1px;
	background-color: white;
	-webkit-transition: .4s;
	transition: .4s;
}

.tgl:checked+.slider {
	background-color: #2196F3;
}

.tgl:focus+.slider {
	box-shadow: 0 0 1px #2196F3;
}

.tgl:checked+.slider:before {
	-webkit-transform: translateX(16px);
	-ms-transform: translateX(16px);
	transform: translateX(16px);
}

/* Rounded sliders */
.slider.round {
	border-radius: 34px;
}

.slider.round:before {
	border-radius: 50%;
}

.office-timing-div {
	background-color: #82e0aa;
	/* background-color: white; */
	color: #fff;
	padding: 6px 13px;
	box-sizing: border-box;
}

.switch-field {
	font-family: "Lucida Grande", Tahoma, Verdana, sans-serif;
	padding: 0px;
	overflow: hidden;
	padding-left: 40px;
}

.switch-title {
	margin-bottom: 6px;
}

.switch-field input {
	position: absolute !important;
	clip: rect(0, 0, 0, 0);
	height: 1px;
	width: 1px;
	border: 0;
	overflow: hidden;
}

.switch-field label {
	float: left;
}

.switch-field label {
	display: inline-block;
	width: 30px;
	background-color: #e4e4e4;
	color: rgba(0, 0, 0, 0.6);
	font-size: 14px;
	font-weight: normal;
	text-align: center;
	text-shadow: none;
	padding: 3px 0px;
	box-sizing: border-box;
	border: 1px solid rgba(0, 0, 0, 0.2);
	-webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.3), 0 1px
		rgba(255, 255, 255, 0.1);
	box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.3), 0 1px
		rgba(255, 255, 255, 0.1);
	-webkit-transition: all 0.1s ease-in-out;
	-moz-transition: all 0.1s ease-in-out;
	-ms-transition: all 0.1s ease-in-out;
	-o-transition: all 0.1s ease-in-out;
	transition: all 0.1s ease-in-out;
}

.switch-field label:hover {
	cursor: pointer;
}

.switch-field input:checked+label {
	background-color: #A5DC86;
	-webkit-box-shadow: none;
	box-shadow: none;
}

.switch-field label:first-of-type {
	border-radius: 4px 0 0 4px;
}

.switch-field label:last-of-type {
	border-radius: 0 4px 4px 0;
}

.s-2 {
	margin-top: 3px;
	border-bottom: 1px solid #85f7b5;
	padding-bottom: 5px;
	padding-top: 5px;
}

.s-2-1 {
	float: left;
	width: 37%;
	padding-top: 3px;
}

.s-2-2 {
	float: left;
}

.s-2-2 input {
	width: 40px;
}

#lpy {
	width: 35px;
	margin-top: 0px;
	padding: 0px;
	height: 18px;
	color: black;
}

.s-2-3 {
	height: 32px;
	overflow: hidden;
	background-color: #82e0aa;
	transition: 500ms ease-in-out;
}

.s-2-3-1 {
	float: left;
	color: #fff;
	width: 80%;
	padding: 8px 10px;
	box-sizing: border-box;
}

.s-2-3-2 {
	width: 20%;
	float: left;
}

.s-2-3-2 input {
	width: 35px;
	color: black;
}

.s-footer {
	height: 75px;
	border-top: 2px solid #4dbb7c;
}

.s-footer button {
	width: 75px;
	height: 31px;
	border: none;
	background-color: #58a779;
	margin: 20px;
	border-radius: 5px;
	color: #fff;
	font-size: 16px;
	float: right;
	cursor: pointer;
	outline: none;
}

.s-footer button:hover {
	color: #58a779;
	background-color: #fff;
	border: 1px solid #58a779;
}

#m-h {
	height: 0px;
}

#m-l {
	height: 0px;
}

.s-0 {
	border: 1px solid black;
	/* width: 100%; */
	height: 100%;
	background: rgba(0, 0, 0, 0.8);
	position: absolute;
	z-index: 100;
	box-sizing: border-box;
	left: 0;
	/* bottom: 0; */
	top: 0;
}
</style>
<script>

    function displayDiv(){
    var s= $('.s-icon').attr('status');
        if(s==0){
            $('.s-lable2 .weakEnd').css('display','block');
            $('.s-icon').attr('status','1');
            $('.s-icon').html("<i class='fa fa-angle-up' style='float:'></i>");
            return 1;
        }
        
         $('.s-lable2 .weakEnd').css('display','none');
         $('.s-icon').html("<i class='fa fa-angle-down' style='float:'></i>");
         $('.s-icon').attr('status','0');
        return 0;
    }
    function  getData(){
    	var d=[];
    	var isManualhalf;
    	var isAutohalfDay;
    	var isHAdjust;//houres adjust
    	var mHourseAdjust;//no of hours to adjust
    	
    	var lpy;//total leaves per year
    	var isCLCarry;
    	var maxClForward=0;
    		if($('#chkManualHalf').prop('checked'))
    			isManualhalf=1;
    		else
    			isManualhalf=0;
    			
    		if($('#chkAutoHalf').prop('checked'))
    			isAutohalfDay=1;
    		else
    			isAutohalfDay=0;
    		
    		if($('#chkAdjstHours').prop('checked'))
    			isHAdjust=1;
			else
				isHAdjust=0;
    		
    		mHourseAdjust=$('#maxHourse').val();
    		lpy=$('#lpy').val();txtclForward
    		if($('#chkCl').prop('checked'))
    			isCLCarry=1;
			else
				isCLCarry=0;
    		if($('#txtclForward').val().trim()!="")
    			maxClForward=$('#txtclForward').val();
    		var t=new Object();
    		t.isManualhalf=isManualhalf;
    		t.isAutohalfDay=isAutohalfDay;
    		
        	t.isHoursAdjust=isHAdjust;
        	t.maxHoursAdjust=mHourseAdjust;//flag
        	t.lpy=lpy;//total leaves per year
        	t.isCLCarry=isCLCarry;
        	t.maxClForward=maxClForward;
    		 d.push(t);
    		return d;
    }
    
    function saveData(){
        $('.s-footer button i').css('width','20px');
       var data= getData();
       var d=JSON.stringify(data);
       $.ajax({
    	   url:"settingDataUpdate",
    	   data:{data:d},
    	   method:'post',
    	   success:function(res){
    		   alert(res);
    		   $('.hover-home-container').css('display','none');
    		   $('.s-footer button i').css('width','0px');
    	   },
    	   error:function(){
    		   alert("fail");
    	   }
       })
    }
    function setData(){
    	var res=$.parseJSON($.ajax({
  			url : "getSettingData",
  			type : "post",
  			dataType:'json',
  			async: false
  		}).responseText);
    	if(res.autoHalfDay==1)
    		$('#chkAutoHalf').attr('checked','checked');
    	else
    		$('#chkAutoHalf').removeAttr('checked','false');
    	if(res.isHalfDayAllow==1)
    		$('#chkManualHalf').attr('checked','checked');
    	else
    		$('#chkManualHalf').removeAttr('checked','false');
    	$('#lpy').val(res.totalLeave);
    	
    	
    	if(res.leaveCarryForward==1)
    		$('#chkCl').attr('checked','checked');
    	else
    		$('#chkCl').removeAttr('checked','false');
		$('#txtclForward').val(res.maxNODCarryForward);
    	
    }
    function closeDiv(){
    	$('.hover-home-container').css('display','none');	
    }
    $(document).ready(function(){
    	setData();
    	$('#chkAdjstHours').on('change',function(){
    		if($(this).prop('checked'))
    			$('#m-h').css('height','32px');
    		else
    			$('#m-h').css('height','0px');
    	})
    	$('#chkCl').on('change',function(){
    		if($(this).prop('checked'))
    			$('#m-l').css('height','32px');
    		else
    			$('#m-l').css('height','0px');
    	})
    })
</script>
<div class='s-0 s'>
<div class="s-1 s">
    <div class="s-1-1 s">
        <div class="s-1-1-1 s">Settings</div>
        <div class="s-1-1-2 s"><!--Container-->
            <div class="s-1-1-2-1 s">
            <div class="s-row s"><!--row-->
                <div class="s-lable">Weak end day/s</div>
                <div class="s-lable2">S<div class="s-icon" status='0'  onclick="displayDiv()"><i class='fa fa-angle-down' ></i></div>
                    <div class="weakEnd s">
                        <div>
                           <input type="checkbox" name="Mon" value="1">M<br>
                            <input type="checkbox" name="Tue" value="2">T<br>
                            
                             <input type="checkbox" name="Mon" value="3">W<br>
                            <input type="checkbox" name="Tue" value="4">T<br>
                             <input type="checkbox" name="Mon" value="5">F<br>
                            <input type="checkbox" name="Tue" value="6">S<br>
                             <input type="checkbox" name="Mon" value="0">S<br>
                            
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="s-row s"><!--row-->
                <div class="s-lable">Manual halfday</div>
                 <div class="s-lable2">
                     <label class="switch">
                            <input type="checkbox" id='chkManualHalf' class="tgl" checked>
                            <span class="slider round"></span>
                    </label>
                 </div>
            </div>
            
             <div class="s-row s"><!--row-->
                <div class="s-lable">Auto half day</div>
                 <div class="s-lable2">
                     <label class="switch">
                            <input type="checkbox" id='chkAutoHalf' class="tgl" checked>
                            <span class="slider round"></span>
                    </label>
                 </div>
            </div>
            
             <div class="s-row s"><!--row-->
                <div class="s-lable">Hours adjustment</div>
                 <div class="s-lable2">
                     <label class="switch">
                            <input type="checkbox" id='chkAdjstHours' class="tgl">
                            <span class="slider round"></span>
                    </label>
                 </div>
                  <div class="s-2-3 s" id='m-h'>
                     <div class="s-2-3-1">Max. Hours</div>
                      <div class="s-2-3-1  s-2-3-2 "><input type='text' id="maxHourse">  </div>
                 </div>
            </div>
            
            
            <div class="s-row s"><!--row-->
                <div class="s-lable">Office Timing</div>
                 <div class="s-lable2">
                <i class='fa fa-angle-down' ></i>
                
            </div>
            <div class="office-timing-div s">
                <div class="s-2 s">
                    <div class="s-2-1">From</div>
                    <div class="s-2-2"><input type='text' placeholder="hh">:<input type='text' placeholder="mm"></div>
                      <div class="switch-field"> 
                                    <input type="radio" id="switch_left" name="switch_2" value="yes" checked/>
                                    <label for="switch_left">AM</label>
                                    <input type="radio" id="switch_right" name="switch_2" value="no" />
                                        <label for="switch_right">PM</label>
                        </div>
                </div>
                <div class="s-2 s">
                    <div class="s-2-1">To</div>
                    <div class="s-2-2"><input type='text' placeholder="hh">:<input type='text' placeholder="mm"></div>
                      <div class="switch-field"> 
                                    <input type="radio" id="switch_left1" name="switch_3" value="yes" />
                                    <label for="switch_left1">AM</label>
                                    <input type="radio" id="switch_right1" name="switch_3" value="no" checked />
                                        <label for="switch_right1">PM</label>
                        </div>
                </div>
                 
                </div>
            
        </div>
            
            
             <div class="s-row s"><!--row-->
                <div class="s-lable">Total leaves per year</div>
                 <div class="s-lable2">
                     <input type="text" id='lpy'>
                 </div>
            </div>
            
             <div class="s-row s"><!--row-->
                <div class="s-lable">CL carry forward</div>
                 <div class="s-lable2">
                     <label class="switch">
                            <input type="checkbox" id='chkCl' class="tgl">
                            <span class="slider round"></span>
                    </label>
                 </div>
                 <div class="s-2-3 s" id='m-l'>
                     <div class="s-2-3-1">Max. No. of leaves</div>
                      <div class="s-2-3-1  s-2-3-2 "><input type='text' id='txtclForward'>  </div>
                 </div>
            </div>
                </div>
            <div class="s-footer s">
                <button onclick="saveData();"><i class="fa fa-spinner fa-spin" style="overflow:hidden;transition:500ms ease-in-out;width: 0px" ></i> Save</button>
                 <button onclick='closeDiv();'>Cancel</button>
                
            </div>
    </div>
</div>
</div>
</div>