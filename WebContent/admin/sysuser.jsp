<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="util.PageManager"%>
<%@page import="dao.CommDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style type="text/css">
<!--
body {
	margin: 0px;
}
-->
</style>
<link href="/shhouse/admin/global.css" rel="stylesheet" type="text/css" />
<SCRIPT language=javascript>
/* <!--
function window.onload() { 

if(top.location != self.location){ 

var a = window.parent.document.getElementsByTagName('iframe'); 

for (var i=0; i<a.length; i++){ 

if (a[i].name == self.name) {a[i].height = document.body.scrollHeight+400; return;}}} 

}

//--> */
</script>
<%
String suc = (String)request.getAttribute("suc");
if(suc!=null)
{
 %>
 <script language=javascript>
 alert("操作成功");
 </script>
 <%
 }
  %>
</head>

<BODY>
<form action="/shhouse/admin/sysuser.jsp?f=f" name="f1" method="post">

<%
String url="/shhouse/admin/sysuser.jsp?1=1";
String key = request.getParameter("key")==null?"":request.getParameter("key");
String sql = "select * from sysuser where 1=1 ";
if(!key.equals(""))
{
url+="&key="+key;
sql+=" and (uname like'%"+key+"%' or utype like'%"+key+"%' ) ";
}
sql+=" order by id desc ";
 %>
<script type="text/javascript">
  function add()
  {
  pop("adduser.jsp","添加系统用户",370,55);
  }
  
  function update(no)
  {
  pop("updateuser.jsp?id="+no,"修改系统用户",370,55);
  }
  </script>
  
  
  <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="main_table_frame">
  <tr>
    <td height="97">
	
	
	
	
	<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F7F7F7" class="main_desk_table">
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
                  <td width="235" align="center" class="main_matter_td">关键字</td>
                  <td width="1012" align="left" class="main_matter_td">
                  <input name="key" type="text"  class="textBox" size="35" />
                  </td>
                </tr>
              
				
				 <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                  <td height="33" colspan="4" align="center" class="main_matter_td">
                     
					 
					 
					 
			       <input type="button" onClick="f1.submit();" name="Submit" value="查询信息" />
                   &nbsp;&nbsp;&nbsp;
                   <input type="button" onClick="add();" name="Submit" value="添加管理员" />
			       
			       <script language=javascript>
			       function addcl()
			       {
			       pop("/shhouse/admin/addcl.jsp","添加管理员",500,287);
			       }
			       </script>
			       
			       
			       
			       </td>
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
            <td width="" align="center" class="main_title_td_center2">用户名</td>
            <td width="" align="center" class="main_title_td_center2">密码</td>
            
            <td width="" align="center" class="main_title_td_center2">修改</td>
            <td width="" align="center" class="main_title_td_center2">删除</td>
          </tr>
        
        
    <%
  CommDAO dao = new CommDAO();
  String did = request.getParameter("did");
  if(did!=null)
  {
  dao.commOper("delete from sysuser where id="+did);
  }
  PageManager pageManager = PageManager.getPage(url,10, request);
	    pageManager.doList(sql);
	    
	    PageManager bean= (PageManager)request.getAttribute("page");
	    ArrayList<HashMap> nlist=(ArrayList)bean.getCollection();
	    for(HashMap m:nlist)
	    {
   %>
        
          <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
            <td width="" align="center" valign="middle" class="main_matter_td"><%=m.get("uname") %><br></td>
            <td width="" align="center" valign="middle" class="main_matter_td"><%=m.get("upass") %><br></td>
            
            <td align="center" valign="middle" class="main_matter_td"><a href="javascript:update('<%=m.get("id") %>')">修改</a></td>
            <td width="" align="center" class="main_matter_td"><a href="/shhouse/admin/sysuser.jsp?did=<%=m.get("id") %>">删除</a></td>
          </tr>
          <%
          }
           %>
          
             <script language=javascript>
                 function add() 
                 {
                  pop("/shhouse/admin/addmember.jsp","添加管理员",300,112);
                 }
                 
                 function update(no) 
                 {
                  pop("/shhouse/admin/updatemember.jsp?id="+no,"修改管理员",300,112);
                 }
                 </script>
          
          
          <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
            <td height="30" colspan="10" align="center" valign="middle" class="main_matter_td"><label></label>${page.info }</td>
          </tr>
      </table>
      </td>
  </tr>
</table>
  
</form>
</BODY></HTML>
<script type="text/javascript">
function check()
{
if(f1.olduserpass.value=="")
{
alert("请输入原密码");
return;
}
if(f1.userpass.value=="")
{
alert("请输入新密码");
return;
}
if(f1.copyuserpass.value!=f1.userpass.value)
{
alert("两次密码输入不一致");
return;
}
}
</script>

  
  <script type="text/javascript">
  function add()
  {
  pop("adduser.jsp","添加系统用户",340,130);
  }
  
  function update(no)
  {
  pop("updateuser.jsp?id="+no,"修改系统用户",340,130);
  }
  </script>
  <SCRIPT language=javascript src="/shhouse/js/popup.js"></SCRIPT>
