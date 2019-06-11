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
		$.post("getstuffpage",{},function(data){
			var v= '<li><a href="javascript:void(0)" onclick = "getshou()">首页</a></li>'+
            '<li><a href="javascript:void(0)" onclick = "prev()">上页</a></li>';
			for(var i = 1; i<=(data.totalpage); i++){
				v += '<li><a href="javascript:void(0)" onclick = "getstuffbypage(this,'+i+')">'+i+'</a></li>';
			}
			v += '<li><a href="javascript:void(0)" onclick = "getwei()">尾页</a></li>'+
            '<li><a href="javascript:void(0)" onclick = "next()">下页</a></li>'+
            '<li class="pageinfo">第<span id = "curpage">1</span>页</li>'+
            '<li class="pageinfo">共'+data.totalpage+'页</li>';
			$("#mul").html(v);
		});
	});
	function getstuffbypage(obj,p){
		p = $(obj).html();
		$.post("getStuffbyajax",{page:p},function(data){
			var v = '<tr><th>人员编码</th><th>机构</th><th>科室</th><th>姓名</th><th>性别</th><th>学历</th><th>职务</th><th>职级</th>'+
			'<th>所学专业</th><th class="editColL">编辑</th></tr>';
			$(data.m).each(function(i,value){
				v += '<tr><td align="center">'+value.perCode+'</td>'+
	           '<td align="center">'+value.orgname+'</td>'+
	           '<td align="center">'+value.divname+'</td>'+
	           '<td align="left">'+value.repManName+'</td>'+
	           '<td align="center">'+value.gender+'</td>'+
	           '<td align="left">'+value.edu+'</td>'+
	           '<td align="center">'+value.manageJob+'</td>'+
	           '<td align="center">'+value.jobLevel+'</td>'+
	           '<td align="center">'+value.choiceSpe+'</td>'+
	           '<td align="center">'+
	            	'<a href="member-view.html" class="btnIconView" title="查看详情"></a>'+
	            	'<a href="member-edit.html" class="btnIconEdit" title="更新"></a>'+
	            	'<a href="member-relation.html" class="btnIconRel" title="关联科室"></a>'+
	            	'<a href="userid-relation.html" class="btnIconKey" title="创建登录号"></a>'+
	                '<a href="<%=basePath %>delone?id='+value.id+'" class="btnIconDel" title="注销"></a></td></tr>';
			});
			$("#mytable").html(v);//进行修改mytable中的内容为v
			$("#curpage").html(p);
		});
	}
	function getshou(){
		if("1" == $("#curpage").html())
			return;
		else{
			$.post("getStuffbyajax",{page:1},function(data){
			var v = '<tr><th>人员编码</th><th>机构</th><th>科室</th><th>姓名</th><th>性别</th><th>学历</th><th>职务</th><th>职级</th>'+
			'<th>所学专业</th><th class="editColL">编辑</th></tr>';
			$("#mytable").html("");//清空
			$(data.m).each(function(i,value){
				v += '<tr><td align="center">'+value.perCode+'</td>'+
	           '<td align="center">'+value.orgname+'</td>'+
	           '<td align="center">'+value.divname+'</td>'+
	           '<td align="left">'+value.repManName+'</td>'+
	           '<td align="center">'+value.gender+'</td>'+
	           '<td align="left">'+value.edu+'</td>'+
	           '<td align="center">'+value.manageJob+'</td>'+
	           '<td align="center">'+value.jobLevel+'</td>'+
	           '<td align="center">'+value.choiceSpe+'</td>'+
	           '<td align="center">'+
	            	'<a href="member-view.html" class="btnIconView" title="查看详情"></a>'+
	            	'<a href="member-edit.html" class="btnIconEdit" title="更新"></a>'+
	            	'<a href="member-relation.html" class="btnIconRel" title="关联科室"></a>'+
	            	'<a href="userid-relation.html" class="btnIconKey" title="创建登录号"></a>'+
	                '<a href="<%=basePath %>delone?id='+value.id+'" class="btnIconDel" title="注销"></a></td></tr>';
			});
			$("#mytable").html(v);//进行修改mytable中的内容为v
			$("#curpage").html(1);
		});
		}
	}
	function getwei(){
		$.post("getstuffpage",{},function(Data){
			if(Data.totalpage == Number($("#curpage").html()))
				return;
			else{
					$.post("getStuffbyajax",{page:Data.totalpage},function(data){
			var v = '<tr><th>人员编码</th><th>机构</th><th>科室</th><th>姓名</th><th>性别</th><th>学历</th><th>职务</th><th>职级</th>'+
			'<th>所学专业</th><th class="editColL">编辑</th></tr>';
			$("#mytable").html("");//清空
			$(data.m).each(function(i,value){
				v += '<tr><td align="center">'+value.perCode+'</td>'+
	           '<td align="center">'+value.orgname+'</td>'+
	           '<td align="center">'+value.divname+'</td>'+
	           '<td align="left">'+value.repManName+'</td>'+
	           '<td align="center">'+value.gender+'</td>'+
	           '<td align="left">'+value.edu+'</td>'+
	           '<td align="center">'+value.manageJob+'</td>'+
	           '<td align="center">'+value.jobLevel+'</td>'+
	           '<td align="center">'+value.choiceSpe+'</td>'+
	           '<td align="center">'+
	            	'<a href="member-view.html" class="btnIconView" title="查看详情"></a>'+
	            	'<a href="member-edit.html" class="btnIconEdit" title="更新"></a>'+
	            	'<a href="member-relation.html" class="btnIconRel" title="关联科室"></a>'+
	            	'<a href="userid-relation.html" class="btnIconKey" title="创建登录号"></a>'+
	                '<a href="<%=basePath %>delone?id='+value.id+'" class="btnIconDel" title="注销"></a></td></tr>';
			});
			$("#mytable").html(v);//进行修改mytable中的内容为v
			$("#curpage").html(Data.totalpage);
			});
			}
		});
	}
	function prev(){
		var p = Number($("#curpage").html()); 
		if("1" == $("#curpage").html())
			return;
		else{
			$.post("getStuffbyajax",{page:p-1},function(data){
			var v = '<tr><th>人员编码</th><th>机构</th><th>科室</th><th>姓名</th><th>性别</th><th>学历</th><th>职务</th><th>职级</th>'+
			'<th>所学专业</th><th class="editColL">编辑</th></tr>';
			$("#mytable").html("");//清空
			$(data.m).each(function(i,value){
				v += '<tr><td align="center">'+value.perCode+'</td>'+
	           '<td align="center">'+value.orgname+'</td>'+
	           '<td align="center">'+value.divname+'</td>'+
	           '<td align="left">'+value.repManName+'</td>'+
	           '<td align="center">'+value.gender+'</td>'+
	           '<td align="left">'+value.edu+'</td>'+
	           '<td align="center">'+value.manageJob+'</td>'+
	           '<td align="center">'+value.jobLevel+'</td>'+
	           '<td align="center">'+value.choiceSpe+'</td>'+
	           '<td align="center">'+
	            	'<a href="member-view.html" class="btnIconView" title="查看详情"></a>'+
	            	'<a href="member-edit.html" class="btnIconEdit" title="更新"></a>'+
	            	'<a href="member-relation.html" class="btnIconRel" title="关联科室"></a>'+
	            	'<a href="userid-relation.html" class="btnIconKey" title="创建登录号"></a>'+
	               '<a href="<%=basePath %>delone?id='+value.id+'" class="btnIconDel" title="注销"></a></td></tr>';
			});
			$("#mytable").html(v);//进行修改mytable中的内容为v
			$("#curpage").html(p-1);
		});
		}
	}
	function next(){
		var p = Number($("#curpage").html()); 
		$.post("getstuffpage",{},function(Data){
			if(Data.totalpage == p)
				return;
			else{
					$.post("getStuffbyajax",{page:p + 1},function(data){
			var v = '<tr><th>人员编码</th><th>机构</th><th>科室</th><th>姓名</th><th>性别</th><th>学历</th><th>职务</th><th>职级</th>'+
			'<th>所学专业</th><th class="editColL">编辑</th></tr>';
			$("#mytable").html("");//清空
			$(data.m).each(function(i,value){
				v += '<tr><td align="center">'+value.perCode+'</td>'+
	           '<td align="center">'+value.orgname+'</td>'+
	           '<td align="center">'+value.divname+'</td>'+
	           '<td align="left">'+value.repManName+'</td>'+
	           '<td align="center">'+value.gender+'</td>'+
	           '<td align="left">'+value.edu+'</td>'+
	           '<td align="center">'+value.manageJob+'</td>'+
	           '<td align="center">'+value.jobLevel+'</td>'+
	           '<td align="center">'+value.choiceSpe+'</td>'+
	           '<td align="center">'+
	            	'<a href="member-view.html" class="btnIconView" title="查看详情"></a>'+
	            	'<a href="member-edit.html" class="btnIconEdit" title="更新"></a>'+
	            	'<a href="member-relation.html" class="btnIconRel" title="关联科室"></a>'+
	            	'<a href="userid-relation.html" class="btnIconKey" title="创建登录号"></a>'+
	                '<a href="<%=basePath %>delone?id='+value.id+'" class="btnIconDel" title="注销"></a></td></tr>';
			});
			$("#mytable").html(v);//进行修改mytable中的内容为v
			$("#curpage").html(p+1);
			});
			}
		});
	}
</script>
</head>

<body class="content-pages-body">
<div class="content-pages-wrap">
    <div class="commonTitle">
    <h2>&gt;&gt; 人员管理</h2></div>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="commonTableSearch">
       	<form id="form-search" name="form-search" action="" method="post">
        <tr>
            <th align="right">机构名称：</th>
            <td><select name="select" id="select">
			 <option value="">某某监督机构1</option>
			 <option value="">某某监督机构2</option>
			 <option value="">某某监督机构3</option>
			 <option value="">...</option>
			</select></td>
            <th align="right">姓名：</th>
            <td><input name="textfield" type="text" class="inputTextNormal" id="textfield" /></td>
            <th >性别：</th>
            <td><select name="select" id="select">
                <option>请选择</option>
                <option>男</option>
                <option>女</option>
            </select></td>
            <th >学历：</th>
            <td><select name="select2" id="select2">
                <option>请选择</option>
                <option>博士</option>
                <option>硕士</option>
                <option>本科</option>
                <option>大专</option>
                <option>中专</option>
                <option>高中</option>
                <option>初中</option>
                <option>无学历</option>
                <option>不详</option>
            </select></td>            
        </tr>
        <tr>
		     <th align="right">科室：</th>
            <td><select name="select2" id="select2">
              <option>请选择</option>
              <option>科室1</option>
              <option>科室2</option>
              <option>科室3</option>
              <option>科室4</option>
            </select></td>
            <th align="right">职务：</th>
            <td><select name="select2" id="select2">
              <option>请选择</option>
              <option>所长</option>
              <option>书记</option>
              <option>副所长</option>
              <option>副书记</option>
              <option>主任(科长)</option>
              <option>副主任(副科长)</option>
              <option>无</option>
            </select></td>
            <th align="right">职级：</th>
            <td><select name="select3" id="select3">
              <option>请选择</option>
              <option>省部级正职</option>
              <option>省部级副职</option>
              <option>厅局级正职</option>
              <option>厅局级副职</option>
              <option>乡科级正职</option>
              <option>乡科级副职</option>
              <option>县处级正职</option>
              <option>县处级副职</option>
              <option>科办员</option>
            </select></td>
            <th >所学专业：</th>
            <td><select name="select" id="select">
                <option>请选择</option>
                <option>工程</option>
                <option>法律</option>
				 <option>医药</option>
                <option>公共卫生</option>
                <option>无专业</option>
				<option>其他专业</option>
				  <option>不详</option>
            </select>&nbsp;&nbsp;<button>检索</button></td>

        </tr>		
       	</form>
    </table>
    <!--//commonTableSearch-->
    <div class="btnBar">
    	<ul class="clearfix">
        	<li><a href="<%=basePath %>Jsp/member-create.jsp" title="创建人员" class="btnNormal">创建人员</a></li>
        </ul>
    </div>
    <table id = "mytable" border="0" cellspacing="1" cellpadding="0" class="commonTable">
        <tr>
            <th>人员编码</th>
            <th>机构</th>
            <th>科室</th>
            <th>姓名</th>
            <th>性别</th>
            <th>学历</th>
            <th>职务</th>            
            <th>职级</th>
            <th>所学专业</th>            
            <th class="editColL">编辑</th>
        </tr>
        <c:forEach var = "i" items = "${data }">
	        <tr>
	            <td align="center">${i.perCode }</td>
	            <td align="center">${i.orgname }</td>
	            <td align="center">${i.divname }</td>
	            <td align="left">${i.repManName }</td>
	            <td align="center">${i.gender }</td>
	            <td align="left">${i.edu }</td>
	            <td align="center">${i.manageJob }</td>
	            <td align="center">${i.jobLevel }</td>
	            <td align="center">${i.choiceSpe }</td>
	            <td align="center">
	            	<a href="<%=basePath %>ShowStuffByid?id=${i.id}" class="btnIconView" title="查看详情"></a>
	            	<a href="<%=basePath %>getStuffByid?id=${i.id}" class="btnIconEdit" title="更新"></a>
	            	<a href="<%=basePath %>/Jsp/member-relation.jsp" class="btnIconRel" title="关联科室"></a>
	            	<a href="<%=basePath %>/Jsp/userid-relation.jsp" class="btnIconKey" title="创建登录号"></a>
	                <a href="<%=basePath %>delone?id=${i.id}"  class="btnIconDel" title="注销"></a>
	            </td>
	        </tr>
	    </c:forEach>
    </table>
    <!--//commonTable-->
    <div id = "pagelist">
    	<ul class="clearfix" id="mul">

        </ul>
    </div>
</div>
<!--//content pages wrap-->
</body>
</html>
