﻿
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
 <%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
 %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin: 0px;
}
-->
</style>
<link href="../admin/global.css" rel="stylesheet" type="text/css" />
 
<SCRIPT language=javascript>
/* /* 
<!--
function window.onload() { 


if(top.location != self.location){ 

var a = window.parent.document.getElementsByTagName('iframe'); 

for (var i=0; i<a.length; i++){ 

if (a[i].name == self.name) {a[i].height = document.body.scrollHeight; return;}}} 

} */

//--> */
</script>

</head>

<% 
HashMap ext = new HashMap(); 
String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
ext.put("tglparentid",tglparentid); 
new CommDAO().insert(request,response,"zxgs",ext,true,true); 
%>
<body>
  <form  action="zxgstj.jsp?f=f&tglparentid=<%=tglparentid%>"     name="f1" method="post"  onsubmit="return checkform()" >
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="main_table_frame">
  <tr>
    <td height="48"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F7F7F7" class="main_desk_table">
      <tr>
        <td width="8%" height="6"></td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F7F7F7">
          <tr>
           <td width="118" class="main_title_td_center">相关信息</td>
                        <td align="right" class="main_title_td_bg">&nbsp;</td>
                        
              </tr>
        </table>
              <table width="100%" border="0" 
            cellspacing="0" rules="all" style="WIDTH: 100%; BORDER-COLLAPSE: collapse">
                <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="399" align="center" class="main_matter_td">公司名称</td>
                  <td width="912" align="left" class="main_matter_td">
                    <input type=text  class='textBox' id='gsname' name='gsname' size=35 /><label id='clabelgsname' />                 </td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="399" align="center" class="main_matter_td">简介</td>
                  <td width="912" align="left" class="main_matter_td">
                    <textarea  cols='35'  style='margin-top: 1px;margin-bottom: 1px'  class='textArea'  name='jj'  ></textarea>                 </td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="399" align="center" class="main_matter_td">地址</td>
                  <td width="912" align="left" class="main_matter_td">
                    <input type=text  class='textBox' id='addrs' name='addrs' size=35 /><label id='clabeladdrs' />                 </td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="399" align="center" class="main_matter_td">联系电话</td>
                  <td width="912" align="left" class="main_matter_td">
                    <input type=text  class='textBox' id='tel' name='tel' size=35 /><label id='clabeltel' />                 </td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="399" align="center" class="main_matter_td">联系人</td>
                  <td width="912" align="left" class="main_matter_td">
                    <input type=text  class='textBox' id='lxr' name='lxr' size=35 /><label id='clabellxr' />                 </td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="399" align="center" class="main_matter_td">口碑</td>
                  <td width="912" align="left" class="main_matter_td">
                    <input type=text  class='textBox' id='kb' name='kb' size=35 /><label id='clabelkb' />                 </td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="399" align="center" class="main_matter_td">公司LOGO</td>
                  <td width="912" align="left" class="main_matter_td">
                    <%=Info.getImgUpInfo(65)%>                 </td>
                </tr>

				
				 <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td height="35" colspan="4" align="center" class="main_matter_td"><label>
                  <input type="submit" name="Submit" value="提交信息" />&nbsp;&nbsp;&nbsp;
                    <input type=button value='返回上页' onclick='popclose();' />
                  </label></td> 
                </tr>
            </table></td>
      </tr>
    </table>
      </td>
  </tr>
</table>
</form>
</body>
</html>
 
<script language=javashhouserc='/lpsqglpt/js/My97DatePicker/WdatePicker.js'></script>
<script language=javshhousesrc='/lpsqglpt/js/popup.js'></script>
<script language=jashhouse src='/lpsqglpt/js/ajax.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
 function checkform(){  
var gsnameobj = document.getElementById("gsname");  
if(gsnameobj.value==""){  
document.getElementById("clabelgsname").innerHTML="&nbsp;&nbsp;<font color=red>请输入公司名称</font>";  
return false;  
}else{
document.getElementById("clabelgsname").innerHTML="  ";  
}  
  
var gsnameobj = document.getElementById("gsname");  
if(gsnameobj.value!=""){  
shhouse = new AJAX();
ajax.post("/lpsqglpt/factory/checkno.jsp?table=zxgs&col=gsname&value="+gsnameobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelgsname").innerHTML="&nbsp;&nbsp;<font color=red>公司名称已存在</font>";  
return false;
}else{document.getElementById("clabelgsname").innerHTML="  ";  
}  
}  
var telobj = document.getElementById("tel");  
if(telobj.value!=""){  
if(telobj.value.length>11||telobj.value.length<8||isNaN(telobj.value)){ 
document.getElementById("clabeltel").innerHTML="&nbsp;&nbsp;<font color=red>联系电话必须为8-11位数字</font>";  
return false;
}else{  
document.getElementById("clabeltel").innerHTML="";  
}  
}  
return true;   
}   
</script>  
