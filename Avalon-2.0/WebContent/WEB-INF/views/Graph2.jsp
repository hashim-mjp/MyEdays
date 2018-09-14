<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/jquery-1.11.2.min.js"></script>
		<script type="text/javascript"
		src="<%=request.getContextPath() %>/js/fusioncharts.charts.js"></script>
		<script type="text/javascript"
		src="<%=request.getContextPath() %>/js/fusioncharts.js"></script> 
<script>
var monthlyLeave=[];
var leave=[];
$(document).ready(function(){
	 monthlyLeave = $.parseJSON($.ajax({
			url : "monthlyLeave",
			type : "post",
			dataType : 'json',
			async : false
		}).responseText);
for(var i=0;i<monthlyLeave.length;i++)
	{
	var obj={};
	obj["value"]=monthlyLeave[i] +"";
	obj["tooltext"]=monthlyLeave[i] + " Leave";
	leave.push(obj);
	}
})

FusionCharts.ready(function(){
    var salesChart = new FusionCharts({
        type: 'scrollline2d',
        dataFormat: 'json',
        renderAt: 'chart-container1',
        width: '450',
        height: '245',
        dataSource: {
            "chart": {
                "caption": "Leave Trends",
                "subCaption": "2018",
                "xAxisName": "Month",
                "yAxisName": "Leave",
                "showValues": "0",
                "showBorder": "0",
                "showShadow": "0",
                "bgColor": "#ffffff",
                "paletteColors": "#008ee4",
                "showCanvasBorder": "0",
                "showAxisLines": "0",
                "showAlternateHGridColor": "0",
                "divlineAlpha": "100",
                "divlineThickness": "1",
                "divLineIsDashed": "1",
                "divLineDashLen": "1",
                "divLineGapLen": "1",
                "lineThickness": "3",  
                "flatScrollBars": "0",
                //"scrollheight": "10",
                "numVisiblePlot": "12",
                "showHoverEffect":"1"
            },
            "categories": [
                {
                    "category": [
                        { "label": "Jan " }, 
                        { "label": "Feb " }, 
                        { "label": "Mar " }, 
                        { "label": "Apr " }, 
                        { "label": "May " }, 
                        { "label": "Jun " }, 
                        { "label": "Jul " }, 
                        { "label": "Aug " }, 
                        { "label": "Sep " }, 
                        { "label": "Oct " }, 
                        { "label": "Nov " }, 
                        { "label": "Dec " }
                    ]
                }
            ],
            "dataset": [
                {
                    "data":leave
                }
            ]
        }
    }).render();
});
</script>
<div id="chart-container1">FusionCharts will render here</div>