<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>江苏省卫生监督业务系统</title>
<link href="<%=basePath %>css/main.css" rel="stylesheet" type="text/css" media="all" />
<script src="<%=basePath %>js/jquery-1.4.2.min.js" type="text/javascript"></script>
</head>

<body class="content-pages-body">
<div class="content-pages-wrap">
    <div class="commonTitle">
    <h2>&gt;&gt; <a href="member-list.html">人员管理</a> - 人员信息</h2></div>
    <table border="0" cellspacing="1" cellpadding="0" class="commonTable">
        <form id="institutionCreat" name="institutionCreat" action="" method="post">
        <tr>
            <td width="12%" class="title">人员编码</td>
            <td width="21%">${data.percode }</td>
            <td width="12%" class="title">姓名</td>
            <td width="21%">${data.repmanname }</td>
            <td width="12%" class="title">性别</td>
            <td>${data.gender }</td>
          </tr>
        <tr>
            <td class="title">出生年月：</td>
            <td>${data.birthdate }</td>
            <td class="title">民族：</td>
            <td>${data.folk }</td>			
            <td class="title">政治面貌：</td>
            <td>${data.pol }</td>			
        </tr>
        <tr>
            <td class="title">手机：</td>
            <td>${data.mobile }</td>
            <td class="title">电话：</td>
            <td>${data.worktel }</td>
            <td class="title">电子邮件：</td>
            <td>${data.email }</td>			
        </tr>
		<tr>
            <td class="title">学历：</td>
            <td>${data.edu }</td>
            <td class="title">毕业学校：</td>
            <td>${data.gracollege }</td>
            <td class="title">所选专业：</td>
            <td>${data.choicespe }</td>
        </tr>
		<tr>
            <td class="title">所学专业类型：</td>
            <td>${data.spe }</td>
            <td class="title">建所前从事专业：</td>
            <td>${data.beforespe }</td>
            <td class="title">何时参加工作：</td>
            <td>${data.beginworkdate }</td>

        </tr>		
        <tr>
            <td class="title">职务：</td>
            <td>${data.managejob }</td>
            <td class="title">职级：</td>
            <td>${data.joblevel }</td>
            <td class="title">职称：</td>
            <td>${data.title }</td>
        </tr>
		<tr>
            <td class="title">何时进卫生监督所：</td>
            <td>${data.getindate }</td>
            <td class="title">人员性质：</td>
            <td>${data.perpro }</td>			
            <td class="title">类型：</td>
            <td>${data.pertype }</td>
        </tr>
        <tr>
            <td class="title"> 行政执法证号： </td>
            <td>${data.enfcardno }</td>
            <td class="title">何时取得行政执法证：</td>
            <td>${data.getcarddate }</td>
            <td class="title"> 卫生监督胸牌号： </td>
            <td>${data.healthperno }</td>
        </tr>		
        <tr>
		    <td class="title">何时取得卫生监督员资格：</td>
            <td>${data.getquadate }</td>
            <td class="title"> 目前持有有效的监督员证号： </td>
            <td>${data.healthcardno }</td>
            <td class="title">目前所持有效监督员证的有效时间：</td>
            <td>${data.cardday }</td>
        </tr>
        <tr>
            <td class="title">是否为在编人员：</td>
            <td>${data.ifstaffper }</td>
	  <td class="title"></td>
            <td colspan="3"></td>
        </tr>		
        </form>
    </table>
    <!--//commonTable-->
    <div id="formPageButton">
    	<ul>
        	<li><a href="<%=basePath %>getStuffByid?id=${data.id}" title="修改" class="btnShort">修改</a></li>
        	<li><a href="javascript:window.history.go(-1)" title="返回" class="btnShort">返回</a></li>
        </ul>
    </div>
    <!--//commonToolBar-->
</div>
<!--//content pages wrap-->
</body>
</html>

