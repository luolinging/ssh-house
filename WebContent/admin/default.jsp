<%@ page language="java" pageEncoding="utf-8"%>
<jsp:directive.page import="java.util.List"/>
<%@page import="java.util.HashMap"%>
<%@page import="util.Info"%>
<%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
 %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>房产信息网后台</title>

<link href="/shhouse/admin/global.css" rel="stylesheet" type="text/css" />

<style type="text/css">
<!--
.STYLE1 {color: #000000}


a:visited {
	text-decoration: none;
	color: #000000;
}
a:hover {
	text-decoration: none;
	color: #000000;
}
a:active {
	text-decoration: none;
	color: #000000;
}
-->
</style> 
<link href="/shhouse/theme/css/subModal.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="/shhouse/theme/js/subModal.js"></script>
<script language="javascript" src="/shhouse/js/popup.js"></script>
<SCRIPT language=javascript> 
/* function window.onload() { 

if(top.location != self.location){ 

var a = window.parent.document.getElementsByTagName('iframe'); 

for (var i=0; i<a.length; i++){ 

if (a[i].name == self.name) {a[i].height = document.body.scrollHeight; return;}}} 
}  */

function change(no)
{
var c = document.getElementById("c");
c.innerHTML=no;
}
</script>

<script language=javascript>
function show(no)
{
for(var i=1;i<30;i++)
{
var a = document.getElementById(no+"@"+i);
if(a==null)
{
continue;
}
if(a.style.display=="")
{
a.style.display="none";
}else{
a.style.display="";
}
}

}
</script>
<script type="text/javascript">
function showzhi(inn)
{
var a = document.getElementById("loca");
a.innerHTML=inn;
}
</script>

</head>

<body class="body_bg" >

<input name="countrequest" type="hidden" id="2" value=""/>
<table width="100%" border="0" cellpadding="0"  cellspacing="0">
  <tr>
    <td height="68" align="left" valign="top"  class="top_banner"><table width="328" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="85" height="56" align="right" class="topnav_matter_td">用户：</td>
        <td width="119" align="center" class="topnav_matter_td"><%=user.get("uname")%> - <%=user.get("utype")%></td>
        <td width="88" class="topnav_matter_td"><img src="/shhouse/admin/images/login.gif" width="18" height="18" hspace="4" align="absmiddle" />&nbsp;&nbsp;<a href="#"   onclick="window.location.replace('/shhouse/index.jsp?t=t');return   false;"><font color="black">注销</font></a></td>
        <td width="30" class="topnav_matter_td"><img src="/shhouse/admin/images/help.GIF" width="18" height="18" /></td>
        <td width="6" class="topnav_matter_td">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>

<table width="100%" border="0" cellpadding="0" cellspacing="0" class="desk_table_bg">
  <tr>
    <td width="172" height="400" valign="top" class="leftsidebar_bg"><table width="150" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="20"></td>
      </tr>
    </table>
    <table width="92%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="2"></td>
        </tr>
      </table>
     
     
     
     
        
     <table width="150" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="leftsidebar_table_frame">
        
      
        <tr style="cursor: hand">
          <td align="left" onClick="show('4')"  class="leftsidebar_title_td">&nbsp;管理列表</td>
        </tr>
        
        <%
        String url = "";
        String text = "";
        if(utype.equals("管理员") ){
        url="wzjj.jsp";
        text="网站简介";
        }
        else{
        url="buyinfocx.jsp";
        text="发布求购信息";
        }
         %>
         <%
         if(utype.equals("管理员") ){
          %>
         <tr id="4@1" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/shhouse/admin/wzjj.jsp" onClick="change('网站简介')"  target="main" >&nbsp;网站简介</a></div></td>
        </tr>
        
        <tr id="4@2" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/shhouse/admin/lxwm.jsp" onClick="change('联系我们')"  target="main" >&nbsp;联系我们</a></div></td>
        </tr>
         
       
          <tr id="4@4" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/shhouse/admin/ylzx.jsp" onClick="change('新闻信息')"  target="main" >&nbsp;新闻信息</a></div></td>
        </tr>
          
        <tr id="4@7" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/shhouse/admin/proscx.jsp" onClick="change('楼房信息管理')"  target="main" >&nbsp;楼房信息管理</a></div></td>
        </tr>
         
        
        
        <tr id="4@9" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/shhouse/admin/lybcx.jsp" onClick="change('留言板管理')"  target="main" >&nbsp;留言板管理</a></div></td>
        </tr>
        
        <tr id="4@10" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/shhouse/admin/members.jsp" onClick="change('会员管理')"  target="main" >&nbsp;会员管理</a></div></td>
        </tr>
         
        <tr id="4@13" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/shhouse/admin/dqidatadiccx.jsp" onClick="change('楼房地区管理')"  target="main" >&nbsp;楼房地区管理</a></div></td>
        </tr>
        
         <tr id="4@14" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/shhouse/admin/lxidatadiccx.jsp" onClick="change('楼房类型管理')"  target="main" >&nbsp;楼房类型管理</a></div></td>
        </tr>
        
         <tr id="4@15" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/shhouse/admin/mjidatadiccx.jsp" onClick="change('楼房面积管理')"  target="main" >&nbsp;楼房面积管理</a></div></td>
        </tr>
         
        <tr id="4@16" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/shhouse/admin/fxidatadiccx.jsp" onClick="change('楼房户型管理')"  target="main" >&nbsp;楼房户型管理</a></div></td>
        </tr>
        
        <tr id="4@17" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/shhouse/admin/jgidatadiccx.jsp" onClick="change('楼房价格管理')"  target="main" >&nbsp;楼房价格管理</a></div></td>
        </tr>
        
        <%}else{ %>
         
        <tr id="4@2" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/shhouse/admin/buyinfocx.jsp" onClick="change('发布求购信息')"  target="main" >&nbsp;发布求购信息</a></div></td>
        </tr>
        
         <tr id="4@3" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/shhouse/admin/sellinfocx.jsp" onClick="change('发布卖房信息')"  target="main" >&nbsp;发布卖房信息</a></div></td>
        </tr>
        
         <tr id="4@4" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/shhouse/admin/scinfocx.jsp" onClick="change('我的收藏')"  target="main" >&nbsp;我的收藏</a></div></td>
        </tr>
         
         
         <%} %>
         <tr id="4@19" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/shhouse/admin/pupdateuser.jsp" onClick="change('修改个人信息')"  target="main" >&nbsp;修改个人信息</a></div></td>
        </tr>
       
        
         <tr id="4@20" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/shhouse/admin/uppass.jsp" onClick="change('修改登录信息')"  target="main" >&nbsp;修改登录信息</a></div></td>
        </tr>
   </table>
   
   
   
   
 
    
    

    <td valign="top" class="main_bg">
	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="32" width="295" class="main_matter_td_currentsite">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您当前的位置：<div style="display: inline;" id="c"><%=text %></div> </td>
        </tr>
      </table>
      <iframe width="100%" scrolling="no" frameborder="0" height="340" src="<%=url %>" style=background:transparent allowtransparency name="main"></iframe></td>
  
</table>

</body>
</html>
