
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
 <%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
String userid = user.get("id").toString();
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
/* 
<!--
function window.onload() { 


if(top.location != self.location){ 

var a = window.parent.document.getElementsByTagName('iframe'); 

for (var i=0; i<a.length; i++){ 

if (a[i].name == self.name) {a[i].height = document.body.scrollHeight; return;}}} 

} */

//-->
</script>

</head>

<% 
new CommDAO().delete(request,"sellinfo"); 
String id = request.getParameter("id"); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
ext.put("uname",Info.getUser(request).get("uname")); 
new CommDAO().update(request,response,"sellinfo",ext,true,false); 
HashMap mmm = new CommDAO().getmap(id,"sellinfo"); 
%>
<body>
  <form  action="sellinfoxg.jsp?f=f&id=<%=mmm.get("id")%>"     name="f1" method="post"  onsubmit="return checkform()" >
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
                 
                  <td width="16%" align="center" class="main_matter_td">标题</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text  class='textBox' id='hname' name='hname' size=35 /><label id='clabelhname' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">环线位置</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text  class='textBox' id='hxaddr' name='hxaddr' size=35 /><label id='clabelhxaddr' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">物业地址</td>
                  <td width="84%" align="left" class="main_matter_td"><textarea  cols='35'   style='margin-top: 1px;margin-bottom: 1px'  class='textArea'   name='addrs'   ></textarea></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">内容</td>
                  <td width="84%" align="left" class="main_matter_td"><textarea  cols='35'   style='margin-top: 1px;margin-bottom: 1px'  class='textArea'   name='tcontent'   ></textarea></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">地区</td>
                  <td width="84%" align="left" class="main_matter_td"><span id="areadanx"><%=Info.getradio("area","idatadic","icontent~无名","itype='楼房地区'")%></span></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">实际面积</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text  class='textBox' id='mjs' name='mjs' size=35 /><label id='clabelmjs' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">楼房房型</td>
                  <td width="84%" align="left" class="main_matter_td"><span id="ftypedanx"><%=Info.getradio("ftype","idatadic","icontent~无名","itype='楼房房型'")%></span></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">实际价格</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text  class='textBox' id='price' name='price' size=35 /><label id='clabelprice' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">联系人</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text  class='textBox' id='linkman' name='linkman' size=35 /><label id='clabellinkman' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">联系电话</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text  class='textBox' id='tel' name='tel' size=35 /><label id='clabeltel' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">相关图片</td>
                  <td width="84%" align="left" class="main_matter_td"><%=Info.getImgUpInfo(65)%></td>
                </tr>

				
				 <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td height="35" colspan="4" align="center" class="main_matter_td"><label>
                  <input type="submit" name="Submit" value="提交信息" />&nbsp;&nbsp;&nbsp;
                    <input type=button value='返回上页' onclick='window.location.replace("sellinfocx.jsp")' />
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
 
<script language=javascript src='/shhouse/js/My97DatePicker/WdatePicker.js'></script> 
<script language=javascript src='/shhouse/js/ajax.js'></script> 
<script language=javascript src='/shhouse/js/popup.js'></script> 
<%@page import="util.Info"%> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
</script>  
<script language=javascript >  
 function checkform(){  
var hnameobj = document.getElementById("hname");  
if(hnameobj.value==""){  
document.getElementById("clabelhname").innerHTML="&nbsp;&nbsp;<font color=red>请输入标题</font>";  
return false;  
}else{ 
document.getElementById("clabelhname").innerHTML="  ";  
}  
var hxaddrobj = document.getElementById("hxaddr");  
if(hxaddrobj.value==""){  
document.getElementById("clabelhxaddr").innerHTML="&nbsp;&nbsp;<font color=red>请输入环线位置</font>";  
return false;  
}else{ 
document.getElementById("clabelhxaddr").innerHTML="  ";  
}  
var mjsobj = document.getElementById("mjs");  
if(mjsobj.value==""){  
document.getElementById("clabelmjs").innerHTML="&nbsp;&nbsp;<font color=red>请输入实际面积</font>";  
return false;  
}else{ 
document.getElementById("clabelmjs").innerHTML="  ";  
}  
var priceobj = document.getElementById("price");  
if(priceobj.value==""){  
document.getElementById("clabelprice").innerHTML="&nbsp;&nbsp;<font color=red>请输入实际价格</font>";  
return false;  
}else{ 
document.getElementById("clabelprice").innerHTML="  ";  
}  
var linkmanobj = document.getElementById("linkman");  
if(linkmanobj.value==""){  
document.getElementById("clabellinkman").innerHTML="&nbsp;&nbsp;<font color=red>请输入联系人</font>";  
return false;  
}else{ 
document.getElementById("clabellinkman").innerHTML="  ";  
}  
var telobj = document.getElementById("tel");  
if(telobj.value==""){  
document.getElementById("clabeltel").innerHTML="&nbsp;&nbsp;<font color=red>请输入联系电话</font>";  
return false;  
}else{ 
document.getElementById("clabeltel").innerHTML="  ";  
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
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
