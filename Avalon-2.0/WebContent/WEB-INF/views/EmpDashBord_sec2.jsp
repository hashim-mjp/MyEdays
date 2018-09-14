

<style>
.sick{
        float: left;
    width: 100%;
    background-color: #ffffloat: left;
    background-color: #fff;
    box-sizing: border-box;
   /*  border-left: 8px solid #f1f1f1; */
    padding: 10px;
}
        .si-1{
    background-color: #dbdada;
    padding: 5px;
    font-size: 15px;
    font-weight: 600;
    color: #7c7c7c;
    margin-top:5px;
        }
        .si-2{
         border-right:1px dashed #acacac;
           
        }
        .si-3{
            border-right: 1px dashed #acacac;
            margin-top:5px;
            border-bottom: 1px solid #cecdcd;
        }
        .si-4{
        	margin-top:5px;
        	border-bottom: 1px solid #cecdcd;
        }
        

</style>

<body>
	<div class="sick">
    	<div class="hdr col-xs-36">Sickness Record</div>
    	<div class='si-1 col-xs-36'>
    		<div class="si-2 col-xs-25">Sickness</div><div></div>
    	<div class=" si-3 col-xs-11"></div>
    		
    	</div>
    	<div class=" si-3 col-xs-25">Recorded this Year</div>
    	<div class="si-4 col-xs-11" id='rcrd'>0</div>
    	<div class='si-1 col-xs-36'>
    		<div class="si-2 col-xs-25">Bradford Factor</div><div></div>
    		<div class=" si-3 col-xs-11"></div>
    	</div>
    	<div  class='col-xs-36'>
    		<div class=" si-3 col-xs-25">Accurances in 12 months(S)</div>
    		<div class="si-4 col-xs-11" id="accr">0</div>
    	</div>
    	<div  class='col-xs-36'>
    		<div class=" si-3 col-xs-25">Total Duration(D)</div>
    		<div class="si-4 col-xs-11" id='duration'>0</div>
    	</div>
    	<div  class='col-xs-36'>
    		<div class=" si-3 col-xs-25">Bradeford Factor(SXSXD)</div>
    		<div class="si-4 col-xs-11" id='bradeford'>0</div>
    	</div>
   </div>
</body>
