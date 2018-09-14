<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
 
        
        #clock {
     height: 187px;
    width: 187px;
    border-radius: 50%;
    border: 1px solid black;
    position: relative;
    background-image: url(images/clock.jpg);
    background-repeat: no-repeat;
    background-size: 174%;
    background-attachment: ;
    background-position: center;
    background-position-x: -65px;
    background-position-y: -17px;
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
    top: 222px;
    left: -39px;
    width: 109px;
     transition: 4000ms cubic-bezier(0.18, 0.89, 0.32, 1.28);
    }
    
</style>
</head>
<body>

		<div class="col-xs-36" style="margin-top:10px">
    		<div id="clock">
    		 	<div id="six" class="sixTwelve tick"><img src="images/needle2.png " id="nidle"></div>
    		</div>
    	</div>
</body>
</html>