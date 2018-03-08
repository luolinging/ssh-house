
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.PageManager"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>

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



//-->
</script>

</head>

<body>
  <form  action="proscx.jsp"  name="f1" method="post"  >
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
                 
                  <td colspan=13   align="left" class="main_matter_td" height='30'>&nbsp;&nbsp;&nbsp;
<% 
String phname = request.getParameter("hname")==null?"":request.getParameter("hname"); 
String starthname = request.getParameter("starthname")==null?"":request.getParameter("starthname"); 
String endhname = request.getParameter("endhname")==null?"":request.getParameter("endhname"); 
String parea = request.getParameter("area")==null?"":request.getParameter("area"); 
String startarea = request.getParameter("startarea")==null?"":request.getParameter("startarea"); 
String endarea = request.getParameter("endarea")==null?"":request.getParameter("endarea"); 
String phstype = request.getParameter("hstype")==null?"":request.getParameter("hstype"); 
String starthstype = request.getParameter("starthstype")==null?"":request.getParameter("starthstype"); 
String endhstype = request.getParameter("endhstype")==null?"":request.getParameter("endhstype"); 
String patype = request.getParameter("atype")==null?"":request.getParameter("atype"); 
String startatype = request.getParameter("startatype")==null?"":request.getParameter("startatype"); 
String endatype = request.getParameter("endatype")==null?"":request.getParameter("endatype"); 
String pftype = request.getParameter("ftype")==null?"":request.getParameter("ftype"); 
String startftype = request.getParameter("startftype")==null?"":request.getParameter("startftype"); 
String endftype = request.getParameter("endftype")==null?"":request.getParameter("endftype"); 
String pptype = request.getParameter("ptype")==null?"":request.getParameter("ptype"); 
String startptype = request.getParameter("startptype")==null?"":request.getParameter("startptype"); 
String endptype = request.getParameter("endptype")==null?"":request.getParameter("endptype"); 
   %>

<%
 HashMap mmm = new HashMap();%>&nbsp;  
 
楼房名称  
:  
<input type=text class='textBox'  size=20 name='hname' /> 
&nbsp;&nbsp; 
地区  
:  
<%=Info.getselect("area","idatadic","icontent","itype='楼房地区'")%>&nbsp;&nbsp; 楼房类型 :  
<%=Info.getselect("hstype","idatadic","icontent","itype='楼房类型'")%>&nbsp;&nbsp;  
面积范围 :  
<%=Info.getselect("atype","idatadic","icontent","itype='楼房面积'")%>&nbsp;&nbsp;  
楼房房型 :  
<%=Info.getselect("ftype","idatadic","icontent","itype='楼房房型'")%>&nbsp;&nbsp;  
价格范围  
:  
<%=Info.getselect("ptype","idatadic","icontent","itype='楼房价格'")%>&nbsp;&nbsp;  
 
<input type=submit class='' value='查询信息' /> 
 &nbsp; 
<input type=button   class='' value='添加信息' onclick="window.location.replace('prostj.jsp')" /> 
&nbsp;&nbsp;</td>
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
            <td align="center" class="main_title_td_center2">楼房名称</td>
<td align="center" class="main_title_td_center2">装修状况</td>
<td align="center" class="main_title_td_center2">环线位置</td>
<td align="center" class="main_title_td_center2">开发商</td>
<td align="center" class="main_title_td_center2">地区</td>
<td align="center" class="main_title_td_center2">楼房类型</td>
<td align="center" class="main_title_td_center2">面积范围</td>
<td align="center" class="main_title_td_center2">实际面积</td>
<td align="center" class="main_title_td_center2">楼房房型</td>
<td align="center" class="main_title_td_center2">价格范围</td>
<td align="center" class="main_title_td_center2">实际价格</td>
<td align="center" class="main_title_td_center2">操作</td>
          </tr>
        
        
    
           <% 
new CommDAO().delete(request,"pros"); 
if(request.getParameter("hnameid1")!=null){ 
 new CommDAO().commOper("update pros set hname ='' where id="+request.getParameter("hnameid1"));  
} 
if(request.getParameter("hnameid2")!=null){ 
 new CommDAO().commOper("update pros set hname ='' where id="+request.getParameter("hnameid2"));  
} 
String sql = "select * from pros where 1=1 " ;
 if(!phname.equals("")){ 
 sql+= " and hname like'%"+phname+"%' " ;
 }  
 if(!starthname.equals("")){  
 mmm.put("starthname",starthname) ;
 sql+= " and hname >'"+starthname+"' " ;
 }  
 if(!endhname.equals("")){  
 mmm.put("endhname",endhname) ;
 sql+= " and hname <'"+Info.getDay(endhname,1)+"' " ;
 }  
 if(!parea.equals("")){ 
 sql+= " and area like'%"+parea+"%' " ;
 }  
 if(!startarea.equals("")){  
 mmm.put("startarea",startarea) ;
 sql+= " and area >'"+startarea+"' " ;
 }  
 if(!endarea.equals("")){  
 mmm.put("endarea",endarea) ;
 sql+= " and area <'"+Info.getDay(endarea,1)+"' " ;
 }  
 if(!phstype.equals("")){ 
 sql+= " and hstype like'%"+phstype+"%' " ;
 }  
 if(!starthstype.equals("")){  
 mmm.put("starthstype",starthstype) ;
 sql+= " and hstype >'"+starthstype+"' " ;
 }  
 if(!endhstype.equals("")){  
 mmm.put("endhstype",endhstype) ;
 sql+= " and hstype <'"+Info.getDay(endhstype,1)+"' " ;
 }  
 if(!patype.equals("")){ 
 sql+= " and atype like'%"+patype+"%' " ;
 }  
 if(!startatype.equals("")){  
 mmm.put("startatype",startatype) ;
 sql+= " and atype >'"+startatype+"' " ;
 }  
 if(!endatype.equals("")){  
 mmm.put("endatype",endatype) ;
 sql+= " and atype <'"+Info.getDay(endatype,1)+"' " ;
 }  
 if(!pftype.equals("")){ 
 sql+= " and ftype like'%"+pftype+"%' " ;
 }  
 if(!startftype.equals("")){  
 mmm.put("startftype",startftype) ;
 sql+= " and ftype >'"+startftype+"' " ;
 }  
 if(!endftype.equals("")){  
 mmm.put("endftype",endftype) ;
 sql+= " and ftype <'"+Info.getDay(endftype,1)+"' " ;
 }  
 if(!pptype.equals("")){ 
 sql+= " and ptype like'%"+pptype+"%' " ;
 }  
 if(!startptype.equals("")){  
 mmm.put("startptype",startptype) ;
 sql+= " and ptype >'"+startptype+"' " ;
 }  
 if(!endptype.equals("")){  
 mmm.put("endptype",endptype) ;
 sql+= " and ptype <'"+Info.getDay(endptype,1)+"' " ;
 }  
  sql +=" order by id desc ";
String url = "proscx.jsp?1=1&hname="+phname+"&area="+parea+"&hstype="+phstype+"&atype="+patype+"&ftype="+pftype+"&ptype="+pptype+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">

            <td align="center" valign="middle" class="main_matter_td"><%=map.get("hname")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("fishing")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("hxaddr")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("developer")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("area")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("hstype")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("atype")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("mjs")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("ftype")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("ptype")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("price")%></td>
            <td align="center" valign="middle" class="main_matter_td">
<a href="prosxg.jsp?id=<%=map.get("id")%>">修改</a>
&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;

<a onclick="return confirm('确定要删除这条记录吗?')" href="proscx.jsp?scid=<%=map.get("id")%>">删除</a>
</td>
</tr>
<%}%>
         
         
              
          
          
          <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
            <td colspan=13 height="15"  align="center" valign="middle" class="main_matter_td">${page.info}</td>
          </tr>
      </table></td>
  </tr>
</table>
</form>
</body>
</html>
 <script language=javascript src='/shhouse/js/ajax.js'></script>
<% 
mmm.put("hname",phname); 
mmm.put("area",parea); 
mmm.put("hstype",phstype); 
mmm.put("atype",patype); 
mmm.put("ftype",pftype); 
mmm.put("ptype",pptype); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/shhouse/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/shhouse/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('prosxg.jsp?id='+no,'信息修改',550,'100%') 
}
</script> 
<script language=javascript> 
function add(){ 
pop('prostj.jsp','信息添加',550,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
