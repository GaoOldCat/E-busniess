<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	$(function (){
		$.getJSON("js/json/class_1.js",function(data){
			// 用js循环json的分类集合
			$(data).each(function(i,json){
				// 将分类集合的内容生成<option>对象加载到下拉列表中
				$("#class_1_select").append("<option value="+json.id+">"+json.flmch1+"</option>");
			});
		});
	});
	
	function get_class_2(class_1_id){
		// $("#class_1_select option:selected").val();
		// $("#class_1_select").val();
		$.getJSON("js/json/class_2_"+class_1_id+".js",function(data){
			// 用js循环json的分类集合
			$("#class_2_select").empty();
			$(data).each(function(i,json){
				// 将分类集合的内容生成<option>对象加载到下拉列表中
				$("#class_2_select").append("<option value="+json.id+">"+json.flmch2+"</option>");
			});
		});
		
		get_tm(class_1_id);
	}
	
	function get_tm(class_1_id){
		// $("#class_1_select option:selected").val();
		// $("#class_1_select").val();
		$.getJSON("js/json/tm_class_1_"+class_1_id+".js",function(data){
			// 用js循环json的分类集合
			$("#tm_select").empty();
			$(data).each(function(i,json){
				// 将分类集合的内容生成<option>对象加载到下拉列表中
				$("#tm_select").append("<option value="+json.id+">"+json.ppmch+"</option>");
			});
		});
	}
</script>
<title>硅谷商城</title>
</head>
<body>
	<select id="class_1_select" onchange="get_class_2(this.value)">
		<option>请选择</option>
	</select>
	<select id="class_2_select">
		<option>请选择</option>
	</select>
	<select id="tm_select">
		<option>请选择</option>
	</select>
</body>
</html>