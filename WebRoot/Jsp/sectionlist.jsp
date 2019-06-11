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
		$.post("<%=basePath %>section/getsectionpagebyajax",{},function(data){
			var v= '<li><a href="javascript:void(0)" onclick = "getshou()">首页</a></li>'+
            '<li><a href="javascript:void(0)" onclick = "prev()">上页</a></li>';
			for(var i =1; i<=data.totalpage; i++){
				v += '<li><a href="javascript:void(0)" onclick = "getsectionbypage(this,'+i+')">'+i+'</a></li>';
			}
			v += '<li><a href="javascript:void(0)" onclick = "getwei()">尾页</a></li>'+
	           '<li><a href="javascript:void(0)" onclick = "next()">下页</a></li>'+
	           '<li class="pageinfo">第<span id = "curpage">1</span>页</li>'+
	           '<li class="pageinfo">共'+data.totalpage+'页</li>';
			$("#mul").html(v);
		});
	});
	function getsectionbypage(obj,p){
		p = $(obj).html();
		$.post("<%=basePath %>section/getsectionbtajax",{page:p},function(data){
			var v = '<tr><th width="7%">机构编码</th><th>机构名称</th><th width="8%">行政类别</th>'+
	            '<th>科室编码</th><th>科室名称</th><th width="8%">电话号码</th><th width="8%">传真号码</th>'+
	            '<th width="5%">门号</th><th class="editColS">编辑</th></tr>';
			$(data.m).each(function(i,value){
				v += '<tr><td align="center">'+value.divcode+'</td><td align="center"></td>'+
		           	'<td align="center">'+value.exetype+'</td><td align="center">'+value.divcode+'</td>'+
		            '<td align="center">'+value.divname+'</td><td align="center">'+value.dutytel+'</td>'+
		            '<td align="center">'+value.fax+'</td><td align="center">'+value.divroomno+'</td>'+
		            '<td align="center">'+
		            	'<a href="office-edit.html" class="btnIconEdit" title="更新"></a>'+
		                '<a href="#" class="btnIconDel" title="注销"></a>'+
		            '</td></tr>';
				});
			$("#mytable").html(v);
			$("#curpage").html(p);
		});
	};

	function prev(){
		var cur_page = Number($("#curpage").html());
		if("1" == $("#curpage").html()){
			return;
		}else{
			$.post("<%=basePath %>section/getsectionbtajax",{page:cur_page - 1},function(data){
			var v = '<tr><th width="7%">机构编码</th><th>机构名称</th><th width="8%">行政类别</th>'+
	            '<th>科室编码</th><th>科室名称</th><th width="8%">电话号码</th><th width="8%">传真号码</th>'+
	            '<th width="5%">门号</th><th class="editColS">编辑</th></tr>';
			$(data.m).each(function(i,value){
				v += '<tr><td align="center">'+value.divcode+'</td><td align="center"></td>'+
		           	'<td align="center">'+value.exetype+'</td><td align="center">'+value.divcode+'</td>'+
		            '<td align="center">'+value.divname+'</td><td align="center">'+value.dutytel+'</td>'+
		            '<td align="center">'+value.fax+'</td><td align="center">'+value.divroomno+'</td>'+
		            '<td align="center">'+
		            	'<a href="office-edit.html" class="btnIconEdit" title="更新"></a>'+
		                '<a href="#" class="btnIconDel" title="注销"></a>'+
		            '</td></tr>';
				});
			$("#mytable").html(v);
			$("#curpage").html(cur_page - 1);
		});
		}
	};
	function getshou(){
		var cur_page = Number($("#curpage").html());
		if("1" == $("#curpage").html()){
			return;
		}else{
			$.post("<%=basePath %>section/getsectionbtajax",{page:1},function(data){
			var v = '<tr><th width="7%">机构编码</th><th>机构名称</th><th width="8%">行政类别</th>'+
	            '<th>科室编码</th><th>科室名称</th><th width="8%">电话号码</th><th width="8%">传真号码</th>'+
	            '<th width="5%">门号</th><th class="editColS">编辑</th></tr>';
			$(data.m).each(function(i,value){
				v += '<tr><td align="center">'+value.divcode+'</td><td align="center"></td>'+
		           	'<td align="center">'+value.exetype+'</td><td align="center">'+value.divcode+'</td>'+
		            '<td align="center">'+value.divname+'</td><td align="center">'+value.dutytel+'</td>'+
		            '<td align="center">'+value.fax+'</td><td align="center">'+value.divroomno+'</td>'+
		            '<td align="center">'+
		            	'<a href="office-edit.html" class="btnIconEdit" title="更新"></a>'+
		                '<a href="#" class="btnIconDel" title="注销"></a>'+
		            '</td></tr>';
				});
			$("#mytable").html(v);
			$("#curpage").html(1);
		});
		}
	};
	function next(){
		$.post("<%=basePath %>section/getsectionpagebyajax",{},function(data){
		
			
		});
	};
</script>
</head>

<body class="content-pages-body">
<div class="content-pages-wrap">
    <div class="commonTitle"><h2>&gt;&gt; 科室管理</h2></div>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="commonTableSearch">
       	<form id="form-search" name="form-search" action="" method="post">
        <tr>
            <td width="40" align="center"><img src="../images/icon-search.png" width="16" height="16" alt="检索" /></td>
            <th align="right">机构名称：</th>
            <td><select name="select" id="select">
			 <option value="">某某监督机构1</option>
			 <option value="">某某监督机构2</option>
			 <option value="">某某监督机构3</option>
			 <option value="">...</option>
			</select></td>
            <th >科室名称：</th>
            <td><input name="datepiker1" type="text" class="inputTextNormal" id="datepiker1" /></td>
            <td align="right"><button>检索</button></td>
        </tr>
       	</form>
    </table>
    <!--//commonTableSearch-->
    <div class="btnBar">
    	<ul class="clearfix">
        	<li><a href="office-creat.html" title="创建科室" class="btnNormal">创建科室</a></li>
        </ul>
    </div>
    <table id = "mytable" border="0" cellspacing="1" cellpadding="0" class="commonTable">
        <tr>
            <th width="7%">机构编码</th>
            <th>机构名称</th>
            <th width="8%">行政类别</th>
            <th>科室编码</th>
            <th>科室名称</th>
            <th width="8%">电话号码</th>
            <th width="8%">传真号码</th>
            <th width="5%">门号</th>
            <th class="editColS">编辑</th>
        </tr>
         <c:forEach var = "i" items = "${data }">
	       <tr>
		 	<td align="center">${i.divcode }</td>
            <td align="center"></td>
            <td align="center" >${i.exetype }</td>
            <td align="center">${i.divcode }</td>
            <td align="center">${i.divname }</td>
            <td align="center">${i.dutytel }</td>
            <td align="center">${i.fax }</td>
            <td align="center">${i.divroomno }</td>
            <td align="center">
            	<a href="office-edit.html" class="btnIconEdit" title="更新"></a>
                <a href="#" class="btnIconDel" title="注销"></a>
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
