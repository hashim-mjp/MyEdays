<%-- <script type="text/javascript"
	src="<%=request.getContextPath() %>/js/jquery-1.11.2.min.js"></script>
		<script type="text/javascript"
		src="<%=request.getContextPath() %>/js/fusioncharts.charts.js"></script>
		<script type="text/javascript"
		src="<%=request.getContextPath() %>/js/fusioncharts.js"></script> --%>
<script>
var reamaining_leave;
var loadingLeave;
$(document).ready(function(){
	
	$.ajax({
		url : "loadingLeave",
		type : "post",
		data : {},
		success : function(res) {
			if(res=="nodata")
				reamaining_leave=14;
			else
				{
				loadingLeave=parseFloat(res);
				reamaining_leave=14-loadingLeave;
				}
			
			
		},
		error : function() {
		}
		
	});
})
FusionCharts.ready(function () {
	    var ageGroupChart = new FusionCharts({
	        type: 'pie2d',
	        renderAt: 'chart-container',
	        width: '450',
	        height: '300',
	        dataFormat: 'json',
	        dataSource: {
	            "chart": {
	                "paletteColors": "#0075c2,#1aaf5d",
	                "bgColor": "#ffffff",
	                "showBorder": "1",
	                "use3DLighting": "1",
	                "showShadow": "1",
	                "startingAngle": "0",
	                "decimals": "1",
	                "toolTipColor": "#ffffff",
	                "toolTipBorderThickness": "0",
	                "toolTipBgColor": "#000000",
	                "toolTipBgAlpha": "80",
	                "toolTipBorderRadius": "2",
	                "toolTipPadding": "5",
	                "showHoverEffect":"1",
	                "showLabels": "0",
	                "showValues": "0",
	                "showLegend": "1",
	                "legendPosition": "right",
	                "legendIconScale": "2",
	               // "legendAllowDrag": "1",
	                "legendBgColor": "#ffffff",
	                "legendBorderAlpha": '0',
	                "legendShadow": '0',
	                "legendItemFontSize": '10',
	                "legendItemFontColor": '#666666'
	            },
	            
	            "data": [
	                {
	                    "label": "Total Leave",
	                    "value": "14",
	                    "tooltext": "Total Leave : 14",
	                }, 
	                {
	                    "label": "Remaining Leave",
	                    "value": reamaining_leave,
	                    "tooltext": "Remaining Leave : "+ reamaining_leave,
	                }
	            ]
	        }
	    }).render();
	});
</script>
<style>
.chart{
    background: red;
    float: left;
    width: 100%;
    height: 100%;
        margin-top: -41px;
	}
</style>
<div class="chart">
<div id="chart-container">FusionCharts will render here</div></div>