<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
.div1
{
font-size: 18px;

}
.left
{
float:left;
color: #8B008B;
width: 50%;
 }
 .right
 {
 float: left;
 width: 50%;
 }
 .left span
 {
 float: right;
 padding-right: 10px;
 }
</style>

<div class="div1">

<div class="left">Id <span>:</span></div>  <div class="right">${getid.empId}</div> 
<br>
<div class="left">Name  <span>:</span></div> <div class="right">${getid.fName}</div> 
<br>
<div class="left">Last Name <span>:</span></div> <div class="right">${getid.lName}</div> 
<div style="clear:both"></div>

</div>

