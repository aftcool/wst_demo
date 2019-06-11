<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>江苏省卫生监督业务系统</title>
<link href="<%=basePath %>css/main.css" rel="stylesheet" type="text/css" media="all" />
<script src="<%=basePath %>js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script  type="text/javascript">
	$(function(){
		//页面加载完成的回调函数 --获取页数
		$.post("getpage",{},function(data){
			var s = '<li><a href="javascript:void(0)" onclick = "getShou()">首页</a></li>'+
			'<li><a href="javascript:void(0)" onclick = "prev()">上页</a></li>';
			for(var i = 1; i<=(data.totalpage);i++){
				s+= '<li><a href="javascript:void(0)" id = "page" onclick="getdatabypage(this,'+i+')">'+i+'</a></li>';
			}
			s += '<li><a href="javascript:void(0)" onclick = "next()">下页</a></li>'+
            '<li><a href="javascript:void(0)" onclick = "getWei()">尾页</a></li>'+
            '<li class="pageinfo">第<span id = "curpage">1</span>页</li>'+
            '<li class="pageinfo">共'+data.totalpage+'页</li>';
            $("#mul").html(s);
		});
	});
	function prev(){//上一页
		var courage = $("#curpage").html();
		if( "1" == $("#curpage").html()){
			return;
		}else{
		var arr = $("#mul").children("li");
		for(var i =0; i<arr.length; i++){
			$(arr[i]).removeAttr("class");
		}
		$("#mul li:nth-child(1 + courage").attr("class","current");
		$.post("getOrgsbyajax",{page:courage - 1},function(data){
			var v ="<tr><th width='7%'>申请单位（个人）</th><th>经营地址</th>"+
			"<th width='8%'>专业类别</th><th>负责人</th><th width='5%'>报告日期</th>"+
			"<th width='7%'>审核状态</th><th class='editColM'>操作</th></tr>"
			$("#mytable").html("");
			$(data.m).each(function(i,value){
				//alert(value.orgname+","+value.orgno);
				v = v+"<tr>"+
	           '<td align="center">'+value.orgname +'</td>'+
	           '<td align="left"><a href="institution-view.html">'+value.linkadd+'</a></td>'+
	           '<td align="center">'+value.exetype+'</td>'+
	           '<td align="left">负责人</td>'+
	           '<td align="center">'+value.listingdate+'</td>'+
	           '<td align="center">审核状态</td>'+
	           '<td align="center">'+
	            	'<a href="institution-view.html" class="btnIconView" title="查看详情"></a>'+
	            	'</a>               </td></tr>';
				});
			$("#mytable").html(v);
			$("#curpage").html(courage -1);
		});
		}
	}
	function next(){
	$.post("getpage",{},function(Data){
		var courage = $("#curpage").html();
		if(Data.totalpage == Number(courage)){
			return;
		}else{
			var arr = $("#mul").children("li");
		for(var i =0; i<arr.length; i++){
			$(arr[i]).removeAttr("class");
		}
		$("#mul li:nth-child(3 + courage").attr("class","current");
		$.post("getOrgsbyajax",{page:Number(courage) + 1},function(data){
			var v ="<tr><th width='7%'>申请单位（个人）</th><th>经营地址</th>"+
			"<th width='8%'>专业类别</th><th>负责人</th><th width='5%'>报告日期</th>"+
			"<th width='7%'>审核状态</th><th class='editColM'>操作</th></tr>"
			$("#mytable").html("");
			$(data.m).each(function(i,value){
				//alert(value.orgname+","+value.orgno);
				v = v+"<tr>"+
	           '<td align="center">'+value.orgname +'</td>'+
	           '<td align="left"><a href="institution-view.html">'+value.linkadd+'</a></td>'+
	           '<td align="center">'+value.exetype+'</td>'+
	           '<td align="left">负责人</td>'+
	           '<td align="center">'+value.listingdate+'</td>'+
	           '<td align="center">审核状态</td>'+
	           '<td align="center">'+
	            	'<a href="institution-view.html" class="btnIconView" title="查看详情"></a>'+
	            	'</a>               </td></tr>';
				});
			$("#mytable").html(v);
			$("#curpage").html(Number(courage) + 1);
		});
		}
	});
	}
	function getdatabypage(obj,p){
		p = $(obj).html();
		var arr = $("#mul").children("li");
		for(var i =0; i<arr.length; i++){
			$(arr[i]).removeAttr("class");
		}
		$(obj).parent().attr("class","current");
		$.post("getOrgsbyajax",{page:p},function(data){
			var v ="<tr><th width='7%'>申请单位（个人）</th><th>经营地址</th>"+
			"<th width='8%'>专业类别</th><th>负责人</th><th width='5%'>报告日期</th>"+
			"<th width='7%'>审核状态</th><th class='editColM'>操作</th></tr>"
			$("#mytable").html("");
			$(data.m).each(function(i,value){
				//alert(value.orgname+","+value.orgno);
				v = v+"<tr>"+
	           '<td align="center">'+value.orgname +'</td>'+
	           '<td align="left"><a href="institution-view.html">'+value.linkadd+'</a></td>'+
	           '<td align="center">'+value.exetype+'</td>'+
	           '<td align="left">负责人</td>'+
	           '<td align="center">'+value.listingdate+'</td>'+
	           '<td align="center">审核状态</td>'+
	           '<td align="center">'+
	            	'<a href="institution-view.html" class="btnIconView" title="查看详情"></a>'+
	            	'</a>               </td></tr>';
			});
			$("#mytable").html(v);
			$("#curpage").html(p);
		});
	}
	function getShou(){
		if( "1" == $("#curpage").html()){
			return;
		}else{
		var arr = $("#mul").children("li");
		for(var i =0; i<arr.length; i++){
			$(arr[i]).removeAttr("class");
		}
		$("#mul li:nth-child(3)").attr("class","current");
			$.post("getOrgsbyajax",{page:1},function(data){
			var v ="<tr><th width='7%'>申请单位（个人）</th><th>经营地址</th>"+
			"<th width='8%'>专业类别</th><th>负责人</th><th width='5%'>报告日期</th>"+
			"<th width='7%'>审核状态</th><th class='editColM'>操作</th></tr>"
			$("#mytable").html("");
			$(data.m).each(function(i,value){
				//alert(value.orgname+","+value.orgno);
				v = v+"<tr>"+
	           '<td align="center">'+value.orgname +'</td>'+
	           '<td align="left"><a href="institution-view.html">'+value.linkadd+'</a></td>'+
	           '<td align="center">'+value.exetype+'</td>'+
	           '<td align="left">负责人</td>'+
	           '<td align="center">'+value.listingdate+'</td>'+
	           '<td align="center">审核状态</td>'+
	           '<td align="center">'+
	            	'<a href="institution-view.html" class="btnIconView" title="查看详情"></a>'+
	            	'</a>               </td></tr>';
			});
			$("#mytable").html(v);
			$("#curpage").html(1);
		});
		}
	}	
	function getWei(){
	$.post("getpage",{},function(Data){
		var courage = $("#curpage").html();
		if(Data.totalpage == Number(courage)){
			return;
		}else{
			var arr = $("#mul").children("li");
		for(var i =0; i<arr.length; i++){
			$(arr[i]).removeAttr("class");
		}
		$("#mul li:nth-child(3 + courage").attr("class","current");
		$.post("getOrgsbyajax",{page:Data.totalpage},function(data){
			var v ="<tr><th width='7%'>申请单位（个人）</th><th>经营地址</th>"+
			"<th width='8%'>专业类别</th><th>负责人</th><th width='5%'>报告日期</th>"+
			"<th width='7%'>审核状态</th><th class='editColM'>操作</th></tr>"
			$("#mytable").html("");
			$(data.m).each(function(i,value){
				//alert(value.orgname+","+value.orgno);
				v = v+"<tr>"+
	           '<td align="center">'+value.orgname +'</td>'+
	           '<td align="left"><a href="institution-view.html">'+value.linkadd+'</a></td>'+
	           '<td align="center">'+value.exetype+'</td>'+
	           '<td align="left">负责人</td>'+
	           '<td align="center">'+value.listingdate+'</td>'+
	           '<td align="center">审核状态</td>'+
	           '<td align="center">'+
	            	'<a href="institution-view.html" class="btnIconView" title="查看详情"></a>'+
	            	'</a>               </td></tr>';
				});
			$("#mytable").html(v);
			$("#curpage").html(Data.totalpage);
		});
		}
	});
	}
	
</script>
</head>

<body class="content-pages-body">
<div class="content-pages-wrap">
	<div class="commonTitle">
	  <h2>&gt;&gt;建设项目审查</h2>
	</div>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="commonTableSearch">
       	<form id="form-search" name="form-search" action="" method="post">
        <tr>
          <th align="right">专业类别：</th>
          <td><select name="select" id="select">
            <option value="">公共场所</option>
            <option value="">生活饮用水</option>
            <option value="">职业卫生</option>
            <option value="">放射卫生</option>
            <option value="">其他</option>
          </select></td>
          <td><div align="right">单位名称（个人）：</div></td>
          <td><input name="textfield6" type="text" class="inputTextNormal" id="textfield6" /></td>
          <td align="right">组织机构代码：</td>
          <td align="right"><input name="textfield62" type="text" class="inputTextNormal" id="textfield62" /></td>
          <td align="right">身份证号码：</td>
          <td align="right"><input name="textfield622" type="text" class="inputTextNormal" id="textfield622" /></td>
        </tr>
        <tr>
            <th align="right">行政区划：</th>
            <td><input name="textfield63" type="text" class="inputTextNormal" id="textfield63" value="用地址进行后台匹配" /></td>
            <td><div align="right">报告单位：</div></td>
            <td><input name="textfield64" type="text" class="inputTextNormal" id="textfield64" /></td>
            <td align="right">报告人：</td>
            <td align="right"><input name="textfield642" type="text" class="inputTextNormal" id="textfield642" /></td>
            <td align="right">&nbsp;</td>
            <td align="right"><button>检索</button></td>
        </tr>
       	</form>
    </table>
    <!--//commonTableSearch-->
    <div class="btnBar">
    	<ul class="clearfix">
        	<li><a href="<%=basePath %>Jsp/institution-creat.jsp" title="创建机构" class="btnNormal">新增</a></li>
        </ul>
    </div>
    <table id ="mytable" border="0" cellspacing="1" cellpadding="0" class="commonTable">
        <tr>
            <th width="7%">申请单位（个人）</th>
            <th>经营地址</th>
            <th width="8%">专业类别</th>
            <th>负责人</th>
            <th width="5%">报告日期</th>
            <th width="7%">审核状态</th>
            <th class="editColM">操作</th>
        </tr>
        <c:forEach var = "i" items = "${data }">
        <tr>
            <td align="center">${i.orgname }</td>
            <td align="left"><a href="institution-view.html">${i.linkadd }</a></td>
            <td align="center">${i.exetype }</td>
            <td align="left">负责人</td>
            <td align="center">${i.listingdate }</td>
            <td align="center">审核状态</td>
            <td align="center">
            	<a href="institution-view.html" class="btnIconView" title="查看详情"></a>
            	</a>               
                 </td>
        </tr>
        </c:forEach>
    </table>
    <!--//commonTable-->
    <div id="pagelist">
    	<ul class="clearfix" id = "mul">

        </ul>
    </div>
</div>
<!--//content pages wrap-->
</body>
</html>
