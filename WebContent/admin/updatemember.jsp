
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="dao.CommDAO"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>房产信息网后台</title>
<style type="text/css">
<!--
body {
	margin: 0px;
}
-->
</style>
<link href="/shhouse/admin/global.css" rel="stylesheet" type="text/css" />
<SCRIPT language=javascript>
/* 
<!--
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
 window.parent.location.replace("/shhouse/admin/member.jsp");
 </script>
 <%
 }
  %>
  
  <%
String error = (String)request.getAttribute("error");
if(error!=null)
{
 %>
 <script language=javascript>
 alert("用户名已存在");
 </script>
 <%
 }
  %>
</head>

<body>
<%
 String type = request.getParameter("type");
 %>
    <%

CommDAO dao = new CommDAO();
String id = request.getParameter("id");
HashMap m = dao.select("select * from members where id="+id).get(0);
 %>
  <form action="/shhouse/shhouse?ac=updatemember&id=<%=id %>" name="f1"  method="post">
 

<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="main_table_frame">
  <tr>
    <td height="60"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F7F7F7" class="main_desk_table">
      <tr>
        <td width="8%" height="6"></td>
      </tr>
      <tr>
        <td><table width="100%" border="0" 
            cellspacing="0" rules="all" style="WIDTH: 100%; BORDER-COLLAPSE: collapse">
                <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                  <td width="577" align="center" class="main_matter_td">用户名</td>
                  <td width="670" align="left" class="main_matter_td">
                  <input name="uname" type="text" readonly="readonly" value="<%=m.get("uname") %>"  class="textBox" size="30" /></td>
                </tr>
                <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                  <td align="center" class="main_matter_td">密码</td>
                  <td width="670" align="left" class="main_matter_td"><input  value="<%=m.get("upass") %>" name="upass" type="text"  class="textBox" size="30" /></td>
                </tr>
                <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                  <td align="center" class="main_matter_td">性别</td>
                  <td width="670" align="left" class="main_matter_td"><label>
                    <input name="sex" type="radio" value="男" <%if(m.get("sex").equals("男"))out.print("checked=checked"); %> />
                  男
                  <input type="radio" name="sex" value="女"  <%if(m.get("sex").equals("女"))out.print("checked=checked"); %> />
                  女
                  </label></td>
                </tr>
                <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                  <td align="center" class="main_matter_td">联系方式</td>
                  <td width="670" align="left" class="main_matter_td"><input  value="<%=m.get("linkphone") %>" name="linkphone" type="text"  class="textBox" size="60" />                  </td>
                </tr>
                <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                  <td align="center" class="main_matter_td">身份证号</td>
                  <td width="670" align="left" class="main_matter_td"><input value="<%=m.get("sfid") %>"  name="sfid" type="text"  class="textBox" size="60" /></td>
                </tr>
                <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                  <td align="center" class="main_matter_td">地址</td>
                  <td width="670" align="left" class="main_matter_td"><input name="addrs"  value="<%=m.get("addrs") %>" type="text"  class="textBox" size="60" /></td>
                </tr>
              
				
				 <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                  <td height="33" colspan="4" align="center" class="main_matter_td">
                     
					 
					 
					 
			       <input type="button" onclick="f1.submit();" name="Submit" value="提交信息" /> 
			       &nbsp;&nbsp;&nbsp;
			       <input type="reset"  name="Submit2" onclick="popclose();" value="关闭窗口" />
			       
			       <script language=javascript>
			       function addcl()
			       {
			       pop("/shhouse/admin/addcl.jsp","添加车辆",400,300);
			       }
			       </script>			       </td>
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
<script language="javascript" src="/shhouse/js/popup.js"></script>
<%dao.close(); %>
