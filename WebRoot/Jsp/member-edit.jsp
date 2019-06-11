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
	$(function(){
		//单选按钮   加载页面后选中
		var sex = "${data.gender}";
		var leibie = "${data.pertype}"
		var zaibian = "${data.ifstaffper}"
		$(":radio[value="+sex+"]").attr("checked","true");
		$(":radio[value="+leibie+"]").attr("checked","true");
		$(":radio[value="+zaibian+"]").attr("checked","true");
		//学历下拉列表   加载页面后被选中
		var xueli = "${data.edu}";
		var minzu = "${data.folk}"
		var zhengzhimianmao = "${data.pol}"
		var zhuanyeleixing = "${data.spe}"
		var zhiwu = "${data.managejob}"
		var zhiji = "${data.joblevel}"
		var renyuanxingzhi = "${data.perpro}"
		var zhicheng = "${data.title}"
		$("#xueli").val(xueli);
		$("#minzu").val(minzu);
		$("#zhengzhimianmao").val(zhengzhimianmao);
		$("#zhuanyeleixing").val(zhuanyeleixing);
		$("#zhiwu").val(zhiwu);
		$("#zhiji").val(zhiji);
		$("#renyuanxingzhi").val(renyuanxingzhi);
		$("#zhicheng").val(zhicheng);
	});
	function tijiao(){
		//提交表单
		$("#memberCreat").submit();
	}
 function jdy_hide(){
 document.getElementById('jdy1').style.display='none';
 document.getElementById('jdy2').style.display='none';
 } 
 function jdy_show(){
 document.getElementById('jdy1').style.display='block';
 document.getElementById('jdy2').style.display='block';
 } 
</script>
<body class="content-pages-body"> 
<div class="content-pages-wrap"> 
  <div class="commonTitle"> 
    <h2>&gt;&gt; <a href="member-list.html">人员管理</a> - 人员创建</h2> 
  </div> 
  <table border="0" cellspacing="1" cellpadding="0" class="commonTable"> 
    <form id="memberCreat" name="memberCreat" action="<%=basePath %>edit" method="post"> 
    	<input name = "id" value = "${data.id }" type = "hidden" />
      <tr> 
        <td width="12%" align="right"><span class="required">*</span>人员编码：</td> 
        <td width="21%" align="left"><input name="percode" type="text" class="inputTextNormal" id="textfield" value="${data.percode}"/></td> 
        <td width="12%" align="right"><span class="required">*</span>姓名：</td> 
        <td width="21%" align="left"><input name="repmanname" type="text" class="inputTextNormal" id="textfield2" value="${data.repmanname}"/></td> 
        <td width="12%" align="right"><span class="required">*</span>性别：</td> 
        <td align="left">
        	<input type="radio" name="gender" id="radio1" value="男" /> 男
          	<input type="radio" name="gender" id="radio2" value="女" /> 女
        </td> 
      </tr> 
      <tr> 
        <td align="right"><span class="required">*</span>出生年月：</td> 
        <td align="left">
        	<input name="birthdate" type="date" class="inputTextNormal"  id="textfield3" value="${data.birthdate}"/>
        </td> 
        <td align="right">民族：</td> 
        <td align="left"> 
        	<select name="folk" id="minzu"> 
	            <option value = "请选择">请选择</option> 
	            <option value = "汉">汉</option> 
	            <option value = "回">回</option> 
	            <option value = "其他">其他</option> 
          	</select>
        </td> 
        <td align="right"><span class="required">*</span>政治面貌：</td> 
        <td align="left"><select name="pol" id="zhengzhimianmao"> 
            <option value = "请选择">请选择</option> 
            <option value = "中共党员">中共党员</option> 
            <option value = "团员">团员</option> 
            <option value = "民族党派">民族党派</option> 
            <option value = "群众">群众</option> 
          </select></td> 
      </tr> 
      <tr> 
        <td width="12%" align="right">手机：</td> 
        <td width="21%" align="left"><input name="mobile" type="text" class="inputTextNormal" id="textfield" value="${data.mobile}"/></td> 
        <td width="12%" align="right">电话：</td> 
        <td width="21%" align="left"><input name="worktel" type="text" class="inputTextNormal" id="textfield2" value="${data.worktel}"/></td> 
        <td width="12%" align="right">电子邮件：</td> 
        <td align="left"><input name="email" type="text" class="inputTextNormal" id="textfield232" value="${data.email}"/></td> 
      </tr> 
      <tr> 
        <td align="right"><span class="required">*</span>学历：</td> 
        <td align="left"><select name="edu" id="xueli"> 
            <option value = "请选择">请选择</option> 
            <option value = "博士">博士</option> 
            <option value = "硕士">硕士</option> 
            <option value = "本科">本科</option> 
            <option value = "大专">大专</option> 
            <option value = "中专">中专</option> 
            <option value = "高中">高中</option> 
            <option value = "初中">初中</option> 
            <option value = "无学历">无学历</option> 
          </select></td> 
        <td align="right">毕业学校：</td> 
        <td align="left"><input name="gracollege" type="text" class="inputTextNormal" id="textfield28" value="${data.gracollege}"/></td> 
        <td align="right"> 所选专业：</td> 
        <td align="left"><input name="choicespe" type="text" class="inputTextNormal" id="textfield24" value="${data.choicespe}"/></td> 
      </tr> 
      <tr> 
        <td align="right">所学专业类型：</td> 
        <td align="left"> <select name="spe" id="zhuanyeleixing"> 
            <option value = "请选择">请选择</option> 
            <option value = "工程">工程</option> 
            <option value = "法律">法律</option> 
            <option value = "医药">医药</option> 
            <option value = "公共卫生">公共卫生</option> 
            <option value = "无专业">无专业</option> 
            <option value = "其他专业">其他专业</option> 
            <option value = "不详">不详</option> 
          </select></td> 
        <td align="right">建所前从事专业：</td> 
        <td align="left"><input name="beforespe" type="text" class="inputTextNormal" id="textfield29" value="${data.beforespe}"/></td> 
        <td align="right"><span class="required">*</span>何时参加工作：</td> 
        <td align="left"><input name="beginworkdate" type="text" class="inputTextNormal" id="textfield29" value="${data.beginworkdate}"/></td> 
      </tr> 
      <tr> 
        <td align="right"><span class="required">*</span>职务：</td> 
        <td align="left"><select name=managejob id="zhiwu"> 
            <option value = "请选择">请选择</option> 
            <option value = "所长">所长</option> 
            <option value = "书记">书记</option> 
            <option value = "副所长">副所长</option> 
            <option value = "副书记">副书记</option> 
            <option value = "主任(科长)">主任(科长)</option> 
            <option value = "副主任(副科长)">副主任(副科长)</option> 
            <option value = "科员">科员</option> 
            <option value = "无">无</option> 
          </select></td> 

        <td align="right"><span class="required">*</span>职级：</td> 
        <td align="left"><select name="joblevel" id="zhiji"> 
            <option value ="请选择">请选择</option> 
            <option value ="省部级正职">省部级正职</option> 
            <option value ="省部级副职">省部级副职</option> 
            <option value ="厅局级正职">厅局级正职</option> 
            <option value ="厅局级副职">厅局级副职</option> 
            <option value ="乡科级正职">乡科级正职</option> 
            <option value ="乡科级副职">乡科级副职</option> 
            <option value ="县处级正职">县处级正职</option> 
            <option value ="县处级副职">县处级副职</option> 
            <option value ="科办员">科办员</option> 
          </select></td> 
        <td align="right"><span class="required">*</span>职称：</td> 
        <td align="left"> <select name="title" id="zhicheng"> 
            <option value ="请选择">请选择</option> 
            <option value ="初级（医（技）师）">初级（医（技）师）</option> 
            <option value ="初级（助理政工师）">初级（助理政工师）</option> 
            <option value ="初级（助理工程师）">初级（助理工程师）</option> 
            <option value ="初级（助理会计师）">初级（助理会计师）</option> 
            <option value ="初级（研究实习员）">初级（研究实习员）</option> 
            <option value ="中级（主管（治）医（技）师）">中级（主管（治）医（技）师）</option> 
            <option value ="中级（政工师）">中级（政工师）</option> 
            <option value ="中级（馆员）">中级（馆员）</option> 
            <option value ="中级（工程师）">中级（工程师）</option> 
            <option value ="中级（会计师）">中级（会计师）</option> 
            <option value ="副高（副主任医（技）师）">副高（副主任医（技）师）</option> 
            <option value ="副高（高级政工师）">副高（高级政工师）</option> 
            <option value ="副高（高级会计师）">副高（高级会计师）</option> 
            <option value ="正高（主任医（技）师））">正高（主任医（技）师））</option> 
            <option value ="未聘任专业技术职务">未聘任专业技术职务</option> 
            <option value ="无职称">无职称</option> 
          </select></td> 
      </tr> 
      <tr> 
        <td align="right">何时进卫生监督所：</td> 
        <td align="left"><input name="getindate" type="text" class="inputTextNormal" id="textfield3" /></td> 
        <td align="right"><span class="required">*</span>人员性质：</td> 
        <td align="left"><select name="perpro" id="renyuanxingzhi"> 
            <option value ="请选择">请选择</option> 
            <option value ="聘用制干部">聘用制干部</option> 
            <option value ="聘用制工人">聘用制工人</option> 
            <option value ="固定干部">固定干部</option> 
            <option value ="固定工人">固定工人</option> 
            <option value ="其他">其他</option> 
          </select></td> 
        <td align="right">类别：</td> 
        <td align="left"><input type="radio" name="pertype" id="radio1" value="radio1" checked  onclick="jdy_show()"/> 
          	监督人员
          <input type="radio" name="pertype" id="radio2" value="radio2"  onclick="jdy_hide()"/> 
          协查人员 
          <input type="radio" name="pertype" id="radio2" value="radio2" onclick="jdy_hide()"/> 
          不详</td> 
      </tr> 
      <tr id="jdy1" style="display:block"> 
        <td align="right"><span class="required">*</span>行政执法证号：</td> 
        <td align="left"><input name="enfcardno" type="text" class="inputTextNormal" id="textfield32" value="${data.enfcardno}"/></td> 
        <td align="right"><span class="required">*</span>何时取得行政执法证：</td> 
        <td align="left"><input name="getcarddate" type="text" class="inputTextNormal" id="textfield27" value="${data.getcarddate}"/></td> 
        <td align="right"><span class="required">*</span>卫生监督胸牌号：</td> 
        <td align="left"><input name="healthperno" type="text" class="inputTextNormal" id="textfield26" value="${data.healthperno}"/></td> 
        </td> 
      </tr> 
      <tr id="jdy2" style="display:block"> 
        <td align="right"><span class="required">*</span>何时取得卫生监督员资格：</td> 
        <td align="left"><input name="getquadate" type="text" class="inputTextNormal" id="textfield27" value="${data.getquadate}"/></td> 
        <td align="right"><span class="required">*</span>目前持有有效的监督员证号：</td> 
        <td align="left"><input name="healthcardno" type="text" class="inputTextNormal" id="textfield3" value="${data.healthcardno}"/></td> 
        <td align="right"><span class="required">*</span>目前所持有效监督员证的有效时间：</td> 
        <td align="left"><input name="cardday" type="text" class="inputTextNormal" id="textfield26" value="${data.cardday}"/></td> 
      </tr> 
      <tr> 
        <td align="right"><span class="required">*</span>是否为在编人员：</td> 
        <td align="left"><input type="radio" name="ifstaffper" id="radio1" value="1" /> 
          是
          <input type="radio" name="ifstaffper" id="radio2" value="0" /> 
          否</td> 
        <td align="right"></td> 
        <td align="left"></td> 
        <td align="right">&nbsp;</td> 
        <td align="left">&nbsp;</td> 
      </tr> 
    
  </table> 
  <!--//commonTable--> 
  <div id="formPageButton"> 
    <ul> 
      <li><a href="javascript:;" onclick="tijiao()" title="保存" class="btnShort">保存</a></li> 
      <li><a href="javascript:window.history.go(-1)" title="返回" class="btnShort">返回</a></li> 
    </ul> 
  </div> 
   </form>
  <!--//commonToolBar--> 
</div> 
<!--//content pages wrap--> 
</body>
</html>

