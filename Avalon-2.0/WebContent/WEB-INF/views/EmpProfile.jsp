<%@page import="com.ms.avalon.master.beans.EmpBean"%>
<link href='https://fonts.googleapis.com/css?family=Anton' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/jquery-1.11.2.min.js"></script>
<style>
    body{
        padding: 0;
        margin: 0;
    }
    *{
        box-sizing: border-box;
    }
    .e1{
        float: left;
        width: 100%;
    }
    .e2{
        float: left;
        width: 50%;
    }
    .e-1{
        float: left;
        width: 100%;
        height: 100%;
        background-color: #efefef;
        padding: 10px;
    }
    .e-1-1{
        
        float: left;
        width: 80%;
        height: 100%;
        
        background-color: #fff;
        border-radius: 5px;
            
    }
    .e-details{
            margin: 0 auto;
    float: left;
    width: 100%;
    }
    .e-profile{
        float: left;
            width: 20%;
        height: 225px;
        padding: 10px;
            max-width: 179px;
           
    }
    .e-profile-1{
        float: left;
        width: 100%;
        height: 100%;
       min-width: 150px;
         background: #fff;
         overflow: hidden;
    }
    .e-hdr{
        font-size: 17px;
    font-weight: 600;
    color: #212121;
           padding: 10px 20px;
    border-bottom: 2px solid #cbcbcb;
    margin-top: 19px;
}
    .e-name{
           font-family: inherit;
    padding-left: 20px;
    margin-top: 25px;
    /* font-size: 20px; */
    font-weight: 700;
    font-size: 28px;
   /* font-size: 3rem;*/
    }
    .e-designation{
            margin-top: 10px;
    padding-left: 20px;
    font-family: inherit;
    font-size: 1.6em;
    color: #979090;
    }
    .e-1-1-1{
        box-sizing: border-box;
        margin-left: 20px;
        margin-top: 38px;
        width: 600px;
        border: 1px solid #ede9e9;
        
    }
    .e-r{
           border-top: 1px solid #ede9e9;
    
    }
    .e-lable{
            float: left;
    width: 150px;
    background-color: #fff;
    padding: 6px 5px;
    font-weight: bold;
    }
    .e-val{
            float: left;
       width: 448px;
    background-color: #f8f7f7;
    padding: 0px 0px;
   padding: 6px 16px;
    }
    .e-edit{
            float: right;
    cursor: pointer;
    }
    .e-val input{
        border: none;
        background-color: transparent;
        
    }
    .e-pic{
   background-image: url(images/profile.jpg);
    width: inherit;
    height: inherit;
    background-origin: content-box;
    background-position: center;
    background-size: 100% 100%;
    background-repeat: no-repeat;
   
    }
    .e-caption{
            background: rgba(0,0,0,0.6);
    height: 45px;
    width: 100%;
    margin-top: 0px;
    color: white;
    text-align: center;
    line-height: 46px;
    transition: 500ms ease-in-out;
    }
    .e-profile-1:hover .e-caption {
    margin-top: -45px;
}
</style>
<script>
$(document).ready(function(){
	
	var res = $.parseJSON($.ajax({
		url : "getfullDetails",
		type : "post",
		dataType:'json',
		async: false
}).responseText);
	console.log(res);
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
	//alert(res[0].pic);
	$('.e-pic').css('background-image',"url('<%=request.getContextPath() %>/"+res[0].pic+"')");
	
});
</script>
<div class="e-1 e1">
    <div class="e-1-1 e1">
        <div class="e-details">
            <div class="e1 e-hdr">Employee Profile</div>
            <div class="e1 e-name">Mohammad Hashim</div>
            <div class="e1 e-designation">Java Developer</div>
            <div class="e1 e-1-1-1">
                <div class="e1 e-r">
                    <div class="e-lable">First Name</div>
                    <div class="e-fName e-val"></div>
                </div>
                <div class="e1 e-r">
                    <div class="e-lable">Last Name</div>
                    <div class="e-lName e-val"></div>
                </div>
                <div class="e1 e-r">
                    <div class="e-lable">Emp Id</div>
                    <div class="e-empId e-val"></div>
                </div>
                <div class="e1 e-r">
                    <div class="e-lable">Mobile Number</div>
                    <div class="e-val">
                        <input type='text' class="e-mob">
                         <div class="e-edit"><i class="fa fa-edit"></i></div>
                    </div>
                </div>
                <div class="e1 e-r">
                    <div class="e-lable">Email Id</div>
                    <div class="e-val">
                        <input type='text' class='e-email' value=''>
                         <div class="e-edit"><i class="fa fa-edit"></i></div>
                    </div>
                </div>
               
            </div>
        </div>
    </div>
    <div class='e-profile'>
        <div class="e-profile-1">
        	<div class='e-pic'></div>
        	<div class="e-caption">Change Pic</div>
        </div>
    
    </div>   

</div>