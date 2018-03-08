
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.PageManager"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>

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


function clearNoNum(obj){
     //先把非数字的都替换掉，除了数字和.
     obj.value = obj.value.replace(/[^\d.]/g,"");
     //必须保证第一个为数字而不是.
     obj.value = obj.value.replace(/^\./g,"");
     //保证只有出现一个.而没有多个.
     obj.value = obj.value.replace(/\.{2,}/g,".");
     //保证.只出现一次，而不能出现两次以上
     obj.value = obj.value.replace(".","$#$").replace(/\./g,"").replace("$#$",".");
   } 

/* 
<!--
function window.onload() { 


if(top.location != self.location){ 

var a = window.parent.document.getElementsByTagName('iframe'); 

for (var i=0; i<a.length; i++){ 

if (a[i].name == self.name) {a[i].height = document.body.scrollHeight+400; return;}}} 

} */

//-->
</script>

</head>

<body>
  <form  action="kfscx.jsp"  name="f1" method="post"  >
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="main_table_frame">
  <tr>
    <td height="136"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F7F7F7" class="main_desk_table">
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
                 
                  <td colspan=7   align="left" class="main_matter_td" height='30'>&nbsp;&nbsp;&nbsp;
<% 
String pkname = request.getParameter("kname")==null?"":request.getParameter("kname"); 
String startkname = request.getParameter("startkname")==null?"":request.getParameter("startkname"); 
String endkname = request.getParameter("endkname")==null?"":request.getParameter("endkname"); 
String pqyzz = request.getParameter("qyzz")==null?"":request.getParameter("qyzz"); 
String startqyzz = request.getParameter("startqyzz")==null?"":request.getParameter("startqyzz"); 
String endqyzz = request.getParameter("endqyzz")==null?"":request.getParameter("endqyzz"); 
   %>

<%
 HashMap mmm = new HashMap();%> 
&nbsp;&nbsp;开发商名称 &nbsp;:&nbsp; <input type=text class='textBox'  size=20 name='kname' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;企业资质 &nbsp;:&nbsp; <input type=text class='textBox'  size=20 name='qyzz' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<input type=submit class='' value='查询信息' /> &nbsp;&nbsp;<input type=button   class=''  value='添加信息' onclick="add();" /> &nbsp;&nbsp;</td>
                </tr>
            </table></td>
      </tr>
    </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="6" colspan="2"></td>
          </tr>
          <tr>
            <td width="118" class="main_title_td_center">信息列表</td>
            <td class="main_title_td_bg">&nbsp;</td>
          </tr>
        </table>
      <table width="100%" border="0" 
            cellspacing="0" style="WIDTH: 100%; BORDER-COLLAPSE: collapse">
          <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
            <td align="center" class="main_title_td_center2">开发商名称</td>
<td align="center" class="main_title_td_center2">成立时间</td>
<td align="center" class="main_title_td_center2">代表建筑</td>
<td align="center" class="main_title_td_center2">企业资质</td>
<td align="center" class="main_title_td_center2">公司地址</td>
<td align="center" class="main_title_td_center2">操作</td>
          </tr>
        
        
    
           <% 
new CommDAO().delete(request,"kfs"); 
if(request.getParameter("knameid1")!=null){ 
 new CommDAO().commOper("update kfs set kname ='' where id="+request.getParameter("knameid1"));  
} 
if(request.getParameter("knameid2")!=null){ 
 new CommDAO().commOper("update kfs set kname ='' where id="+request.getParameter("knameid2"));  
} 
String sql = "select * from kfs where 1=1 " ;
 if(!pkname.equals("")){ 
 sql+= " and kname like'%"+pkname+"%' " ;
 }  
 if(!startkname.equals("")){  
 mmm.put("startkname",startkname) ;
 sql+= " and kname >'"+startkname+"' " ;
 }  
 if(!endkname.equals("")){  
 mmm.put("endkname",endkname) ;
 sql+= " and kname <'"+Info.getDay(endkname,1)+"' " ;
 }  
 if(!pqyzz.equals("")){ 
 sql+= " and qyzz like'%"+pqyzz+"%' " ;
 }  
 if(!startqyzz.equals("")){  
 mmm.put("startqyzz",startqyzz) ;
 sql+= " and qyzz >'"+startqyzz+"' " ;
 }  
 if(!endqyzz.equals("")){  
 mmm.put("endqyzz",endqyzz) ;
 sql+= " and qyzz <'"+Info.getDay(endqyzz,1)+"' " ;
 }  
  sql +=" order by id desc ";
String url = "kfscx.jsp?1=1&kname="+pkname+"&qyzz="+pqyzz+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">

            <td align="center" valign="middle" class="main_matter_td"><%=map.get("kname")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("clsj")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("dbz")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("qyzz")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("gsdz")%></td>
            <td align="center" valign="middle" class="main_matter_td"><a href="javascript:update('<%=map.get("id")%>')">修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a onclick="return confirm('确定要删除这条记录吗?')"  href="kfscx.jsp?scid=<%=map.get("id")%>">删除</a></td>
</tr>
<%}%>
         
         
              
          
          
          <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
            <td colspan=7 height="15"  align="center" valign="middle" class="main_matter_td">${page.info}</td>
          </tr>
      </table></td>
  </tr>
</table>
</form>
</body>
</html>
 <script language=javascript src='/shhouse/js/ajax.js'></script>
<% 
mmm.put("kname",pkname); 
mmm.put("qyzz",pqyzz); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/shhouse/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/shhouse/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('kfsxg.jsp?id='+no,'信息修改',550,325) 
}
</script> 
<script language=javascript> 
function add(){ 
pop('kfstj.jsp','信息添加',550,325) 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
