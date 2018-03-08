
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

/* /* 
<!--
function window.onload() { 


if(top.location != self.location){ 

var a = window.parent.document.getElementsByTagName('iframe'); 

for (var i=0; i<a.length; i++){ 

if (a[i].name == self.name) {a[i].height = document.body.scrollHeight+400; return;}}} 

}

//--> */
</script>

</head>

<body>
  <form  action="zxgscx.jsp"  name="f1" method="post"  >
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
String pgsname = request.getParameter("gsname")==null?"":request.getParameter("gsname"); 
String startgsname = request.getParameter("startgsname")==null?"":request.getParameter("startgsname"); 
String endgsname = request.getParameter("endgsname")==null?"":request.getParameter("endgsname"); 
String plxr = request.getParameter("lxr")==null?"":request.getParameter("lxr"); 
String startlxr = request.getParameter("startlxr")==null?"":request.getParameter("startlxr"); 
String endlxr = request.getParameter("endlxr")==null?"":request.getParameter("endlxr"); 
   %>

<%
 HashMap mmm = new HashMap();%> 
&nbsp;&nbsp;公司名称 &nbsp;:&nbsp; <input type=text class='textBox'  size=20 name='gsname' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;联系人 &nbsp;:&nbsp; <input type=text class='textBox'  size=20 name='lxr' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
            <td align="center" class="main_title_td_center2">公司名称</td>
<td align="center" class="main_title_td_center2">地址</td>
<td align="center" class="main_title_td_center2">联系电话</td>
<td align="center" class="main_title_td_center2">联系人</td>
<td align="center" class="main_title_td_center2">口碑</td>
<td align="center" class="main_title_td_center2">操作</td>
          </tr>
        
        
    
           <% 
new CommDAO().delete(request,"zxgs"); 
if(request.getParameter("gsnameid1")!=null){ 
 new CommDAO().commOper("update zxgs set gsname ='' where id="+request.getParameter("gsnameid1"));  
} 
if(request.getParameter("gsnameid2")!=null){ 
 new CommDAO().commOper("update zxgs set gsname ='' where id="+request.getParameter("gsnameid2"));  
} 
String sql = "select * from zxgs where 1=1 " ;
 if(!pgsname.equals("")){ 
 sql+= " and gsname like'%"+pgsname+"%' " ;
 }  
 if(!startgsname.equals("")){  
 mmm.put("startgsname",startgsname) ;
 sql+= " and gsname >'"+startgsname+"' " ;
 }  
 if(!endgsname.equals("")){  
 mmm.put("endgsname",endgsname) ;
 sql+= " and gsname <'"+Info.getDay(endgsname,1)+"' " ;
 }  
 if(!plxr.equals("")){ 
 sql+= " and lxr like'%"+plxr+"%' " ;
 }  
 if(!startlxr.equals("")){  
 mmm.put("startlxr",startlxr) ;
 sql+= " and lxr >'"+startlxr+"' " ;
 }  
 if(!endlxr.equals("")){  
 mmm.put("endlxr",endlxr) ;
 sql+= " and lxr <'"+Info.getDay(endlxr,1)+"' " ;
 }  
  sql +=" order by id desc ";
String url = "zxgscx.jsp?1=1&gsname="+pgsname+"&lxr="+plxr+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">

            <td align="center" valign="middle" class="main_matter_td"><%=map.get("gsname")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("addrs")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("tel")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("lxr")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("kb")%></td>
            <td align="center" valign="middle" class="main_matter_td"><a href="javascript:update('<%=map.get("id")%>')">修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a onclick="return confirm('确定要删除这条记录吗?')"  href="zxgscx.jsp?scid=<%=map.get("id")%>">删除</a></td>
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
mmm.put("gsname",pgsname); 
mmm.put("lxr",plxr); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/shhouse/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/shhouse/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('zxgsxg.jsp?id='+no,'信息修改',550,324) 
}
</script> 
<script language=javascript> 
function add(){ 
pop('zxgstj.jsp','信息添加',550,324) 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
