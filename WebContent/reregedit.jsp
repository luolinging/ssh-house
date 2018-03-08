<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<%@page import="util.PageManager"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0028)http://csir461.com/index.jsp -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>房产信息网</TITLE>
<LINK rel=stylesheet type=text/css 
href="shhouse_files/css.css">


<STYLE type=text/css>
.STYLE1 {
	COLOR: #d77745
}
</STYLE>

<META name=GENERATOR content="MSHTML 8.00.6001.19222"></HEAD>
<% 
new CommDAO().delete(request,"sysuser"); 
String id = request.getParameter("id"); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
ext.put("utype","会员"); 
new CommDAO().update(request,response,"sysuser",ext,true,true); 
HashMap mmm = new CommDAO().getmap(id,"sysuser"); 
%>
<BODY>


<LINK rel=stylesheet type=text/css href="shhouse_files/css.css">
<STYLE type=text/css>BODY {
	MARGIN: 0px
}
BODY {
	FONT-FAMILY: 宋体
}
TD {
	FONT-FAMILY: 宋体
}
TH {
	FONT-FAMILY: 宋体
}
</STYLE>



<TABLE class=bk border=0 cellSpacing=0 cellPadding=0 width=950 align=center>
  <TBODY>
  <TR>
    <TD vAlign=top>
     
      <LINK rel=stylesheet type=text/css href="shhouse_files/css.css">
     
      
      
      <jsp:include page="top.jsp"></jsp:include>
                  
                  
                  <%
                  CommDAO dao = new CommDAO();
                   %>
                  
                  
                  
                  
                  
                  
                  
               
      
      
      
      
     
      
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=925 align=center>
        <TBODY>
        <TR>
          <TD vAlign=top>
            <TABLE class=mt border=0 cellSpacing=0 cellPadding=0 width=925>
              <TBODY>
              <TR>
                <TD vAlign=top width=693>
                  <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" 
                  align=left>
                    <TBODY>
                    <TR>
                      <TD vAlign=top align=middle>
                      
                       <form  action="reregedit.jsp?f=f&id=<%=mmm.get("id")%>"  name="f1" method="post"  onsubmit="return checkform()" >
                      <TABLE border=0 cellSpacing=0 cellPadding=0 
                          width="96%"><TBODY>
                          <TR>
                            <TD>
                              <TABLE border=0 cellSpacing=0 cellPadding=0 
                              width="100%" align=left>
                                <TBODY>
                                <TR>
                                <TD height=24 background=shhouse_files/112bg.gif 
                                width=320 align=left>
                                <TABLE border=0 cellSpacing=0 cellPadding=0 
                                width=200 align=left>
                                <TBODY>
                                <TR>
                                <TD width=8 align=left>&nbsp;</TD>
                                <TD class=ls height=24 vAlign=bottom width=174 
                                align=left><STRONG>会员注册</STRONG></TD>
                                </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD>
                              <TABLE class=mt border=0 cellSpacing=0 
                              cellPadding=0 width="100%">
                                <TBODY>
                                <TR>
                                <TD align=left vAlign=top>
                                  <TABLE border=0 cellSpacing=0 cellPadding=0 
                                width="100%">
                                    <TBODY>
                                 
                                  <TR>
                                <TD width="26%" height=30 
                                align=center vAlign=center class=xh>用户名                                </TD>
                                <TD width="74%" height=30 
                                align=left vAlign=center class=xh><input type=text  class='' id='uname' name='uname' size=35 /><label id='clabeluname' /></TD>
                                 </TR>
<TR>
                                <TD width="26%" height=30 
                                align=center vAlign=center class=xh>密码                                </TD>
                                <TD width="74%" height=30 
                                align=left vAlign=center class=xh><input type=text  class='' id='upass' name='upass' size=35 /><label id='clabelupass' /></TD>
                                 </TR>
<TR>
                                <TD width="26%" height=30 
                                align=center vAlign=center class=xh>姓名                                </TD>
                                <TD width="74%" height=30 
                                align=left vAlign=center class=xh><input type=text  class='' id='tname' name='tname' size=35 /><label id='clabeltname' /></TD>
                                 </TR>
<TR>
                                <TD width="26%" height=30 
                                align=center vAlign=center class=xh>性别                                </TD>
                                <TD width="74%" height=30 
                                align=left vAlign=center class=xh><span id="sexdanx"><label><input type=radio name='sex' value='男' />&nbsp;男 </label>
<label><input type=radio name='sex' value='女' />&nbsp;女 </label>
</span></TD>
                                 </TR>
<TR>
                                <TD width="26%" height=30 
                                align=center vAlign=center class=xh>生日                                </TD>
                                <TD width="74%" height=30 
                                align=left vAlign=center class=xh><input type=text size='12'   class=''   name='birth' onclick='WdatePicker();'  /></TD>
                                 </TR>
<TR>
                                <TD width="26%" height=30 
                                align=center vAlign=center class=xh>联系电话                                </TD>
                                <TD width="74%" height=30 
                                align=left vAlign=center class=xh><input type=text  class='' id='linkphone' name='linkphone' size=35 /><label id='clabellinkphone' /></TD>
                                 </TR>
<TR>
                                <TD width="26%" height=30 
                                align=center vAlign=center class=xh>身份证号码                                </TD>
                                <TD width="74%" height=30 
                                align=left vAlign=center class=xh><input type=text  class='' id='sfid' name='sfid' size=35 /><label id='clabelsfid' /></TD>
                                 </TR>
<TR>
                                <TD width="26%" height=30 
                                align=center vAlign=center class=xh>联系地址                                </TD>
                                <TD width="74%" height=30 
                                align=left vAlign=center class=xh><input type=text  class='' id='addrs' name='addrs' size=35 /><label id='clabeladdrs' /></TD>
                                 </TR>
<TR>
                                <TD width="26%"  height=69 
                                align=center vAlign=center class=xh>相片                                </TD>
                                <TD width="74%" height=30 
                                align=left vAlign=center class=xh><%=Info.getImgUpInfo(65)%></TD>
                                 </TR>

                                
                                 <TR>
                                <TD height=38 colspan="2" 
                                align=center vAlign=center class=xh><label>
                                  <input type="submit" name="button" id="button" value="注册">&nbsp;&nbsp;&nbsp;
                                  <input type="reset" name="button2" id="button2" value="重置">
                                </label></TD></TR>
                                      </TBODY>
                                  </TABLE></TD>
                                </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
                      
                      
                       </form>
                      </TD>
                    </TR></TBODY></TABLE></TD>
                
                
               
                
                
                 <jsp:include page="left.jsp"></jsp:include>
                
                
                
                
                
                
                </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=950>
        <TBODY>
        <TR>
          <TD>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>




 <jsp:include page="foot.jsp"></jsp:include>



</BODY></HTML>
<script language="javascript">
<%
if(request.getAttribute("error")!=null){
%>
alert("用户名已存在");
<%}%>
<%
if(request.getAttribute("suc")!=null){
%>
alert("注册成功");
<%}%>
</script><script language=javascript src='/shhouse/js/My97DatePicker/WdatePicker.js'></script> 
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
var unameobj = document.getElementById("uname");  
if(unameobj.value==""){  
document.getElementById("clabeluname").innerHTML="&nbsp;&nbsp;<font color=red>请输入用户名</font>";  
return false;  
}else{ 
document.getElementById("clabeluname").innerHTML="  ";  
}  
var unameobj = document.getElementById("uname");  
if(unameobj.value!=""){  
var ajax = new AJAX(); 
ajax.post("/shhouse/factory/checkno.jsp?table=sysuser&col=uname&value="+unameobj.value+"&checktype=update&id=<%=mmm.get("id")%>&ttime=<%=Info.getDateStr()%>"); 
var msg = ajax.getValue(); 
if(msg.indexOf('Y')>-1){ 
document.getElementById("clabeluname").innerHTML="&nbsp;&nbsp;<font color=red>用户名已存在</font>";  
return false; 
}else{ 
document.getElementById("clabeluname").innerHTML="  ";  
}  
}  
var upassobj = document.getElementById("upass");  
if(upassobj.value==""){  
document.getElementById("clabelupass").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";  
return false;  
}else{ 
document.getElementById("clabelupass").innerHTML="  ";  
}  
var tnameobj = document.getElementById("tname");  
if(tnameobj.value==""){  
document.getElementById("clabeltname").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";  
return false;  
}else{ 
document.getElementById("clabeltname").innerHTML="  ";  
}  
var linkphoneobj = document.getElementById("linkphone");  
if(linkphoneobj.value!=""){  
if(linkphoneobj.value.length>11||linkphoneobj.value.length<8||isNaN(linkphoneobj.value)){ 
document.getElementById("clabellinkphone").innerHTML="&nbsp;&nbsp;<font color=red>联系电话必须为8-11位数字</font>";  
return false;
}else{  
document.getElementById("clabellinkphone").innerHTML="";  
}  
}  
var sfidobj = document.getElementById("sfid");  
if(sfidobj.value!=""){  
var c = new RegExp();   
c = /^[A-Za-z0-9]+$/;   
if(!((sfidobj.value.length==15||sfidobj.value.length==18)&&c.test(sfidobj.value))){ 
document.getElementById("clabelsfid").innerHTML="&nbsp;&nbsp;<font color=red>身份证号码为15或18位数字与字母组合</font>";  
return false;
}else{  
document.getElementById("clabelsfid").innerHTML="";  
}  
}  
return true;   
}   
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript >  
 popheight=480;
</script>  
<%=Info.tform(mmm)%> 
