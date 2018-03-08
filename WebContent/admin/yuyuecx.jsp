
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


</script>

</head>

<body>
  <form  action="yuyuecx.jsp"  name="f1" method="post"  >
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
                 
                  <td colspan=6   align="left" class="main_matter_td" height='30'>&nbsp;&nbsp;&nbsp;
<% 
String pfcname = request.getParameter("fcname")==null?"":request.getParameter("fcname"); 
String startfcname = request.getParameter("startfcname")==null?"":request.getParameter("startfcname"); 
String endfcname = request.getParameter("endfcname")==null?"":request.getParameter("endfcname"); 
   %>

<%
 HashMap mmm = new HashMap();%> 
&nbsp;&nbsp;房产名称 &nbsp;:&nbsp; <input type=text class='textBox'  size=20 name='fcname' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<input type=submit class='' value='查询信息' /> &nbsp; &nbsp; &nbsp; <br /></td>
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
            <td align="center" class="main_title_td_center2">预约人</td>
<td align="center" class="main_title_td_center2">预约时间</td>
<td align="center" class="main_title_td_center2">房产名称</td>
<td align="center" class="main_title_td_center2">预约状态</td>
 
          </tr>
        
        
    
           <% 
new CommDAO().delete(request,"yuyue"); 
if(request.getParameter("unameid1")!=null){ 
 new CommDAO().commOper("update yuyue set uname ='' where id="+request.getParameter("unameid1"));  
} 
if(request.getParameter("unameid2")!=null){ 
 new CommDAO().commOper("update yuyue set uname ='' where id="+request.getParameter("unameid2"));  
} 
String sql = "select * from yuyue where 1=1 " ;
 if(!pfcname.equals("")){ 
 sql+= " and fcname like'%"+pfcname+"%' " ;
 }  
 if(!startfcname.equals("")){  
 mmm.put("startfcname",startfcname) ;
 sql+= " and fcname >'"+startfcname+"' " ;
 }  
 if(!endfcname.equals("")){  
 mmm.put("endfcname",endfcname) ;
 sql+= " and fcname <'"+Info.getDay(endfcname,1)+"' " ;
 }  
  sql +="  and (1!=1 " ; 
  sql +="  or  uname like'%"+Info.getUser(request).get("uname")+"%') " ;
  sql +=" order by id desc ";
String url = "yuyuecx.jsp?1=1&fcname="+pfcname+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">

            <td align="center" valign="middle" class="main_matter_td"><%=map.get("uname")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("yytime")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("fcname")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("status")%></td>
 
</tr>
<%}%>
         
         
              
          
          
          <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
            <td colspan=6 height="15"  align="center" valign="middle" class="main_matter_td">${page.info}</td>
          </tr>
      </table></td>
  </tr>
</table>
</form>
</body>
</html>
 <script language=javascript src='/shhouse/js/ajax.js'></script>
<% 
mmm.put("fcname",pfcname); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/shhouse/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/shhouse/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('yuyuexg.jsp?id='+no,'信息修改',550,350) 
}
</script> 
<script language=javascript> 
function add(){ 
pop('yuyuetj.jsp','信息添加',550,350) 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
