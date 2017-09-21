<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>jsontest0911.jsp</title>
  <script type="text/javascript" src="js/jquery-1.12.4.js"></script></head>
  <body>
    	<script type="text/javascript" charset="utf-8">
    		var users=[{
    		"name":"admin",
    		"address":"北京市海淀区",
    		"phone":"12312345678"
    		},
    		{
    		"name":"梅西",
    		"address":"湖北省武汉市",
    		"phone":"12315263748"
    		},
    		{
    		"name":"詹姆斯",
    		"address":"四川省成都市",
    		"phone":"12313245768"
    		},
    		{
    		"name":"梅西",
    		"address":"广东省广州市",
    		"phone":"12343218765"
    		}
    		];
    		var $table=$("<table border=1></table>");
    		var $head=$("<th>ID<td>姓名</td><td>住址</td><td>手机</td></th>");
    		$table.append($head).appendTo($("body"));
    		var $select=$("<select style='margin:20px;'></select>");
    		$select.append($head).appendTo($("body"));
    		var $users=$(users);
    		$users.each(function(i){
    			$table.append("<tr><td>"+(i+1)+"</td><td>"+this.name+"</td><td>"+
    			this.address+"</td><td>"+this.phone+"</td></tr>");
    			$select.append("<option>"+this.name+"-"+this.address+"-"+
    			this.phone+"</option>");
    		});  		
    	</script>
  </body>
</html>
