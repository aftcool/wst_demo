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
<link href="../css/main.css" rel="stylesheet" type="text/css" media="all" />
<script src="../js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script language="javascript">
<!--
$().ready(function(){
	$(".btnShort").click(function(){$(".content-wrap-box").show()})
});
-->
</script>
</head>

<body class="content-pages-body">
<div class="content-pages-wrap">
    <div class="commonTitle"><h2>&gt;&gt; <a href="userid-list.html">登录号管理</a> - 登录号创建</h2></div>
    <table border="0" cellspacing="1" cellpadding="0" class="commonTable">
        <form id="institutionCreat" name="institutionCreat" action="" method="post">
        <tr>
            <td width="15%" align="right">科室：</td>
            <td width="35%"><input name="textfield" type="text" class="inputTextMiddle inputTextReadonly" id="textfield" value="办公室" readonly="readonly" /></td>
            <td width="15%" align="right">姓名：</td>
            <td><input name="textfield5" type="text" class="inputTextNormal inputTextReadonly" id="textfield5" value="测试人员" readonly="readonly" /></td>
        </tr>
        </form>
    </table>
    <div class="content-wrap-box">
    <table border="0" cellspacing="1" cellpadding="0" class="commonTable">
        <form id="useridCreat" name="useridCreat" action="" method="post">
        <tr>
            <td width="15%" align="right"><span class="required">*</span>登录名：</td>
            <td width="35%" align="left"><input name="textfield" type="text" class="inputTextNormal" id="textfield" /></td>
            <td width="15%" align="right">描述：</td>
            <td align="left"><input name="textfield2" type="text" class="inputTextNormal" id="textfield2" /></td>
          </tr>
        <tr>
            <td align="right"><span class="required">*</span>密码：</td>
            <td align="left"><input name="textfield3" type="text" class="inputTextNormal" id="textfield3" /></td>
            <td align="right"><span class="required">*</span>确认密码：</td>
            <td align="left"><input name="textfield4" type="text" class="inputTextNormal" id="textfield4" /></td>
        </tr>
        </form>
    </table>
    <!--//commonTable-->
    <div id="formPageButton">
    	<ul>
        	<li><a href="userid-list.html" title="保存" class="btnShort">保存</a></li>
        	<li><a href="javascript:window.history.go(-1)" title="返回" class="btnShort">返回</a></li>
        </ul>
    </div>
    <!--//commonToolBar-->
    </div>
</div>
<!--//content pages wrap-->
</body>
</html>
