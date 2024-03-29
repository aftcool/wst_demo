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

<script type="text/javascript">
	
</script>
<body class="content-pages-body">
<div class="content-pages-wrap">
    <div class="commonTitle"><h2>&gt;&gt; <a href="institution-list.html">机构管理</a> - 机构创建</h2></div>
    <table border="0" cellspacing="1" cellpadding="0" class="commonTable">
        <form id="institutionCreat" name="institutionCreat" action="" method="post">
        <tr>
         <td align="right"><span class="required">*</span>机构编码：</td>
            <td align="left"><input name="textfield" type="text" class="inputTextMiddle" id="textfield" /></td>
             <td align="right"><span class="required">*</span>机构代码：</td>
            <td align="left" colspan="3"><input name="textfield" type="text" class="inputTextMiddle" id="textfield" />(<span class="required">代码格式:XXXXXXXX-X</span>)</td>
        </tr>
        <tr>
            <td align="right"><span class="required">*</span>机构名称：</td>
            <td align="left"><input name="textfield2" type="text" class="inputTextMiddle" id="textfield2" /></td>
            <td align="right"><span class="required">*</span>行政类别：</td>
            <td align="left" colspan="4">
            	<input type="radio" name="radio1" id="radio5" value="radio5" />行政部门
                <input type="radio" name="radio1" id="radio6" value="radio6" />卫生监督机构
                <input type="radio" name="radio1" id="radio7" value="radio7" />协作单位
            </td>
        </tr>
        <tr>
            <td align="right">地址：</td>
            <td colspan="3" align="left"><input name="textfield5" type="text" class="inputTextLong" id="textfield5" /></td>
            <td align="right">邮编：</td>
            <td align="left"><input name="textfield4" type="text" class="inputTextNormal" id="textfield4" /></td>
        </tr>
        <tr>
       	     <td align="right"><span class="required">*</span>行政区划：</td>
            <td align="left"><input name="textfield6" type="text" class="inputTextNormal" id="textfield6" /></td>
            <td align="right">挂牌日期：</td>
            <td align="left"><input name="textfield6" type="text" class="inputTextNormal" id="textfield6" /></td>
            <td align="right">独立运行日期：</td>
            <td align="left"><input name="textfield7" type="text" class="inputTextNormal" id="textfield7" /></td>
        </tr>
        <tr>
         <td align="right"><span class="required">*</span>行政区类别：</td>
            <td align="left">
            	<input type="radio" name="radio" id="radio1" value="radio1" />省
                <input type="radio" name="radio" id="radio2" value="radio2" />市
                <input type="radio" name="radio" id="radio3" value="radio3" />县
                <input type="radio" name="radio" id="radio4" value="radio4" />区

            </td>
            <td align="right">在职人数：</td>
            <td align="left"><input name="textfield8" type="text" class="inputTextNormal" id="textfield8" /></td>
            <td align="right">卫生监督员数：</td>
            <td align="left"><input name="textfield9" type="text" class="inputTextNormal" id="textfield9" /></td>
        </tr>
		<tr>
            <td align="right"><span class="required">*</span>机构行政级别 ：</td>
            <td align="left"><select name="select" id="select">
			 <option value="">请选择</option>
			 <option value="">处级</option>
			 <option value="">副处级</option>
			 <option value="">科级</option>
			 <option value="">副科级</option>
			 <option value="">乡级及以下</option>
			</select></td>
            <td align="right"><span class="required">*</span>机构性质：</td>
            <td align="left"><select name="select2" id="select5">
              <option value="">请选择</option>
              <option value="">行政机构</option>
              <option value="">全额拔款事业单位</option>
              <option value="">差额拔款事业单位</option>
              <option value="">自收自支事业单位</option>
              <option value="">其他</option>
            </select></td>
             <td align="right">编办批文日期：</td>
            <td align="left"><input name="textfield936" type="text" class="inputTextNormal" id="textfield936" /></td>
        </tr>
		<tr>
            <td align="right"><span class="required">*</span>是否参公管理 ：</td>
            <td align="left"><input type="radio" name="0" value="是"/>是<input type="radio" name="1" value="否">否</td>
            <td align="right"><span class="required">*</span>离退休人数 ：</td>
            <td align="left"><input name="textfield9" type="text" class="inputTextNormal" id="textfield9" /></td>
            <td align="right"><span class="required">*</span>编制人数 ：</td>
            <td align="left"><input name="textfield935" type="text" class="inputTextNormal" id="textfield935" /></td>
        </tr>
		<tr>
            <td align="right"><span class="required">*</span>房屋所有权 ：</td>
            <td align="left"><select name="select" id="select">
			 <option value="">请选择</option>
			 <option value="">自有</option>
			 <option value="">借</option>
			 <option value="">租</option>
			</select></td>
            <td align="right"> 办公用房在建面积（平方米） ：</td>
            <td align="left"><input name="textfield9" type="text" class="inputTextNormal" id="textfield9" /></td>
            <td align="right"> <span class="required">*</span>办公用房建筑面积（平方米） ：</td>
            <td align="left"><input name="textfield934" type="text" class="inputTextNormal" id="textfield934" /></td>
        </tr>
	<tr>
            <td align="right"><span class="required">*</span>职能科室数 ：</td>
            <td align="left"><input name="textfield8" type="text" class="inputTextNormal" id="textfield8" /></td>
            <td align="right"><span class="required">*</span>派出机构数 ：</td>
            <td align="left"><input name="textfield9" type="text" class="inputTextNormal" id="textfield9" /></td>
           <td align="right"><span class="required">*</span>业务科室数 ：</td>
            <td align="left"><input name="textfield92" type="text" class="inputTextNormal" id="textfield92" /></td>
        </tr>
        <tr>
            <td align="right"><span class="required">*</span>检测仪器设备数 ：</td>
            <td align="left" colspan="5"><input name="textfield9" colspan="2" type="text" id="textfield9" size="4"/>（价格大于一千,小于一万）<br/>
              <input name="textfield9" colspan="2" type="text" id="textfield9" size="4"/>（价格大于一万、小于十万）<br/>
             <input name="textfield9" type="text" id="textfield9" size="4"/>（价格大于十万）</td>
        </tr>
        <tr>
            <td align="right"><span class="required">*</span> 汽车数（不含快速检测车） ：</td>
            <td align="left"><input name="textfield8" type="text" class="inputTextNormal" id="textfield8" /></td>
            <td align="right"><span class="required">*</span> 快速检测车数 ：</td>
            <td align="left"><input name="textfield9" type="text" class="inputTextNormal" id="textfield9" /></td>
            <td align="right"><span class="required">*</span> 摩托车数 ：</td>
            <td align="left"><input name="textfield93" type="text" class="inputTextNormal" id="textfield93" /></td>
        </tr>
		<tr>
            <td align="right"><span class="required">*</span> 照相机数：</td>
            <td align="left"><input name="textfield8" type="text" class="inputTextNormal" id="textfield8" /></td>
            <td align="right"><span class="required">*</span> 摄像机数 ：</td>
            <td align="left"><input name="textfield9" type="text" class="inputTextNormal" id="textfield9" /></td>
            <td align="right"><span class="required">*</span> 复印机数：</td>
            <td align="left"><input name="textfield932" type="text" class="inputTextNormal" id="textfield932" /></td>
        </tr>
		<tr>
            <td align="right"><span class="required">*</span> 台式电脑数 ：</td>
            <td align="left"><input name="textfield8" type="text" class="inputTextNormal" id="textfield8" /></td>
            <td align="right"> <span class="required">*</span>笔记本电脑数 ：</td>
            <td align="left"><input name="textfield9" type="text" class="inputTextNormal" id="textfield9" /></td>
            <td align="right"><span class="required">*</span> 服务器数 ：</td>
            <td align="left"><input name="textfield933" type="text" class="inputTextNormal" id="textfield933" /></td>
        </tr>
	 <tr>
            <td align="right"> <span class="required">*</span>交换机数 ：</td>
            <td align="left"><input name="textfield8" type="text" class="inputTextNormal" id="textfield8" /></td>
            <td align="right"> <span class="required">*</span>传真机数 ：</td>
            <td align="left"><input name="textfield9" type="text" class="inputTextNormal" id="textfield9" /></td>
            <td align="right"> <span class="required">*</span>投影仪数 ：</td>
            <td align="left"><input name="textfield937" type="text" class="inputTextNormal" id="textfield937" /></td>
        </tr>
        <tr>
           <td align="right"> <span class="required">*</span>录音笔数：</td>
            <td align="left"><input name="textfield937" type="text" class="inputTextNormal" id="textfield937" /></td>
             <td align="right"> </td>
            <td align="left"></td>
            <td align="right"> </td>
            <td align="left"></td>
        </tr>
        </form>
    </table>
    <!--//commonTable-->
    <div id="formPageButton">
    	<ul>
        	<li><a href="#" title="保存" class="btnShort">保存</a></li>
        	<li><a href="institution-list.html" title="提交" class="btnShort">提交</a></li>
        	<li><a href="javascript:window.history.go(-1)" title="返回" class="btnShort">返回</a></li>
        </ul>
    </div>
    <!--//commonToolBar-->
    
    <div class="commonToolBar">
    	<a href="institution-appropriation-creat.html" title="机构创建" class="btnNormal rt1st">添加拨款</a>
    </div>
    <!--//commonToolBar-->
   	<div class="commonTitle">
    	    <h2>&gt;&gt; 机构财政拨款</h2></div>
   	<!--//commonTableSearch-->
    <table border="0" cellspacing="1" cellpadding="0" class="commonTable">
        <tr>
            <th>年度</th>
            <th width="20%">人员经费（万元）</th>
            <th width="20%">公务费（万元）</th>
            <th width="20%">业务经费（万元）</th>
            <th width="20%">基本建设资金（万元）</th>
            <th class="editColS">编辑</th>
        </tr>
        <tr>
            <td align="center">2010</td>
            <td align="center">305.26</td>
            <td align="center">1020.08</td>
            <td align="center">2089.82</td>
            <td align="center">6122.37</td>
            <td align="center">
            	<a href="institution-appropriation-creat.html" class="btnIconEdit" title="更新"></a>
                <a href="#" class="btnIconDel" title="删除"></a>
            </td>
        </tr>
        <tr>
            <td align="center">2009</td>
            <td align="center">305.26</td>
            <td align="center">1020.08</td>
            <td align="center">2089.82</td>
            <td align="center">6122.37</td>
            <td align="center">
            	<a href="institution-appropriation-creat.html" class="btnIconEdit" title="更新"></a>
                <a href="#" class="btnIconDel" title="删除"></a>
            </td>
        </tr>
        <tr>
            <td align="center">2008</td>
            <td align="center">305.26</td>
            <td align="center">1020.08</td>
            <td align="center">2089.82</td>
            <td align="center">6122.37</td>
            <td align="center">
            	<a href="institution-appropriation-creat.html" class="btnIconEdit" title="更新"></a>
                <a href="#" class="btnIconDel" title="删除"></a>
            </td>
        </tr>
        <tr>
            <td align="center">2007</td>
            <td align="center">305.26</td>
            <td align="center">1020.08</td>
            <td align="center">2089.82</td>
            <td align="center">6122.37</td>
            <td align="center">
            	<a href="institution-appropriation-creat.html" class="btnIconEdit" title="更新"></a>
                <a href="#" class="btnIconDel" title="删除"></a>
            </td>
        </tr>
        <tr>
            <td align="center">2006</td>
            <td align="center">305.26</td>
            <td align="center">1020.08</td>
            <td align="center">2089.82</td>
            <td align="center">6122.37</td>
            <td align="center">
            	<a href="institution-appropriation-creat.html" class="btnIconEdit" title="更新"></a>
                <a href="#" class="btnIconDel" title="删除"></a>
            </td>
        </tr>
        <tr>
            <td align="center">2005</td>
            <td align="center">305.26</td>
            <td align="center">1020.08</td>
            <td align="center">2089.82</td>
            <td align="center">6122.37</td>
            <td align="center">
            	<a href="institution-appropriation-creat.html" class="btnIconEdit" title="更新"></a>
                <a href="#" class="btnIconDel" title="删除"></a>
            </td>
        </tr>
    </table>
    <!--//commonTable-->
    <div id="pagelist">
    	<ul class="clearfix">
        	<li><a href="#">首页</a></li>
            <li><a href="#">上页</a></li>
            <li class="current">1</li>
            <li><a href="#">2</a></li>
            <li><a href="#">下页</a></li>
            <li><a href="#">尾页</a></li>
            <li class="pageinfo">第1页</li>
            <li class="pageinfo">共2页</li>
        </ul>
    </div>
</div>
<!--//content pages wrap-->
</body>
</html>
