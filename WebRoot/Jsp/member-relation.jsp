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

<script type="text/javascript">
 function jigou_hide(){
 document.getElementById('qitajigourow').style.display='none';
 }
 function jigou_show(){
 document.getElementById('qitajigourow').style.display='block';
 }
</script>

</head>

<body class="content-pages-body">
<div class="content-pages-wrap">
    <div class="commonTitle">
        <h2>&gt;&gt; <a href="member-list.html">人员管理</a> - 关联科室</h2></div>
    <table border="0" cellspacing="1" cellpadding="0" class="commonTable">
        <form id="institutionCreat" name="institutionCreat" action="" method="post">
		 <tr>
            <td align="right"><span class="required">*</span>机构：</td>
            <td align="left"><input name="aa" type="radio" value="" checked  onclick="jigou_hide()" /> 
              本机构
              <input onclick="jigou_show()" name="aa" type="radio" value="" /> 
              其他机构              
                </td>
        </tr>
		 <tr id="qitajigourow" style="display:none;">
            <td align="right"><span class="required">*</span>选择机构：</td>
            <td align="left"><select name="select" id="select">
                <option>请选择</option>
                <option>监督所1</option>
                <option>监督所2</option>
                <option>监督所3</option>
                <option>......</option>
            </select>                
                </td>
        </tr>		
        <tr>
            <td align="right"><span class="required">*</span>选择科室：</td>
            <td align="left"><select name="select" id="select">
                <option>请选择</option>
                <option>办公室</option>
                <option>法制科</option>
                <option>外宣办</option>
                <option>......</option>
            </select>                
                </td>
        </tr>

        </form>
    </table>
    <!--//commonTable-->
    <div id="formPageButton">
    	<ul>
        	<li><a href="member-list.html" title="保存" class="btnShort">保存</a></li>
        	<li><a href="javascript:window.history.go(-1)" title="返回" class="btnShort">返回</a></li>
        </ul>
    </div>
    <!--//commonToolBar-->
</div>
<!--//content pages wrap-->
</body>
</html>
