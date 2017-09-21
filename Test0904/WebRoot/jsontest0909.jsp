<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>My JSP 'jsontest0909.jsp' starting page</title>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
  </head>
  <body>
    一、JSON格式的user对象：<div id="objectDiv"></div><br>
 	二、JSON格式的字符串数组：&nbsp;&nbsp;<select id="arraySel"></select>
 			<ul id="arrayUl"></ul>
    三、JSON格式的user对象数组：<div id="objectArrayDiv"></div>
    <script type="text/javascript">
    	$(document).ready(function(){
    		//1、定义JSON格式的user对象，并在div中输出
    		var user={
    			"id":1,
    			"name":"张三",
    			"pwd":"000",
    		};
    	$("#objectDiv").append("ID:"+user.id+"<br>")
    		.append("用户名："+user.name+"<br>")
    		.append("密码："+user.pwd+"<br>");
    	//2、定义JSON格式的字符串数组，并在ul和select中输出
    	var ary=["中","美","俄"];
    	var $ary=$(ary);
    	var $ul=$("#arrayUl");//展示数据的ul元素
    	var $sel=$("#arraySel");//展示数据的select元素
    	$ary.each(function(){$ul.append("<li>"+this+"</li>");});
    	$ary.each(function(i){
    		$sel.append("<option value='"+(i+1)+"'>"+this+"</option>");
    	});
    	//3.定义JSON格式的user对象数组，并使用<table>输出 
    	var userArray=[{
    	"id":2,
    	"name":"admin",
    	"pwd":"123"
    	},{
    	"id":3,
    	"name":"詹姆斯",
    	"pwd":"11111"
    	}
    	,{
    	"id":4,
    	"name":"梅西",
    	"pwd":"6666"
    	}];
    	//展示数据的table元素
    	var $table=$("<table border='1'></table>").append(
    		"<tr><td>ID</td><td>用户名</td><td>密码</td></tr>")
    		.appendTo($("#objectArrayDiv"));
    	$(userArray).each(function(){
    		$table.append("<tr><td>"+this.id+"</td><td>"
    		+this.name+"</td><td>"
    		+this.pwd+"</td></tr>");	
    	});  
    	});
    </script>
  </body>
</html>
