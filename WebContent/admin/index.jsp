<%@ page language="java" pageEncoding="utf-8"%>
<jsp:directive.page import="java.util.ArrayList"/>
<jsp:directive.page import="java.util.List"/>
<%
session.removeAttribute("admin");
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0051)http://www.sqjia.com.cn/orderOnline/admin/login.jsp -->
<HTML><HEAD><TITLE>房产信息网后台</TITLE>
<META content="MSHTML 6.00.6000.16809" name=GENERATOR></HEAD>
<BODY onLoad="loginform.username.focus();" background="/shhouse/admin/images/bj.gif">


<script type="text/javascript" src="/shhouse/js/popup.js"></script>
<script type="text/javascript">
function register()
{
var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:280});
pop.setContent("contentUrl","regedit.jsp");
pop.setContent("title","用户注册");
pop.build();
pop.show();
}
</script>

<P>&nbsp;</P>
<P>&nbsp;</P>
<FORM name=loginform action="/shhouse/shhouse?ac=login"
method=post>
  <table width=380 height="261" align=center cellpadding=0 
cellspacing=0 id=Table1 
style="BORDER-RIGHT: 1px outset; BORDER-TOP: 1px outset; BORDER-LEFT: 1px outset; BORDER-BOTTOM: 1px outset">
    <tbody>
      <tr>
        <td 
    style="PADDING-RIGHT: 3px; PADDING-LEFT: 3px; FONT-SIZE: 13px; PADDING-BOTTOM: 3px; COLOR: white; PADDING-TOP: 3px; BACKGROUND-COLOR: blue"><span style="font-size: 10.5pt; font-family: 宋体;">管理系统后台</span><span lang="EN-US" style='font-size: 10.5pt; font-family: "Times New Roman";'></span>　　　　</td>
      </tr>
      <tr valign=top>
        <td><img height=60 src="/shhouse/admin/images/admin_title.gif" width=378></td>
      </tr>
      <tr>
        <td 
    style="PADDING-RIGHT: 15px; PADDING-LEFT: 15px; PADDING-BOTTOM: -5px; PADDING-TOP: 5px"><script language=Javascript>
<!--
function VF_loginform(){
    var theForm = document.loginform;
    var numRE = /^\d+$/;
    var errMsg = "";
    var setfocus = "";

    
    if (theForm['password'].value == ""){
        errMsg = "请填写登录密码！";
        setfocus = "['password']";
    }
    if (theForm['username'].value == ""){
        errMsg = "请填写登录用户名！";
        setfocus = "['username']";
    }
    if (errMsg != ""){
        alert(errMsg);
        eval("theForm" + setfocus + ".focus()");
    }
  
}//-->
  </script>
            <table border=0>
              <tbody>
                <tr id="tr1">
                  <td height="35"><span style="WIDTH: 80px">用户名：</span></td>
                  <td height="35"><input id=a style="WIDTH: 200px" tabindex=1 maxlength=20 
            name=username></td>
                </tr>
                <tr id="tr2">
                  <td height="35"><span style="WIDTH: 80px">密　码：</span></td>
                  <td height="35"><input id=b style="WIDTH: 200px;height: 16px" type=password maxlength=20 
            name=password></td>
                </tr>
                
                
                
                <tr>
                  <td height="35" colspan="2" align="right"><span style="cursor: hand; font-size: 12px" onClick="register();"></span>
                      <label></label>
                    
                    
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <input  id=Submit1 style="FONT: menu; WIDTH: 80px" type=submit onMouseDown="VF_loginform();" value="登 录" name=btnSubmit></td>
                  <%
			String err = (String)request.getAttribute("error");
			if(err!=null)
			{
			 %>
                  <script language=javascript>
       alert("帐号或密码不正确");
        </script>
                  <%
}
 %>
                  <%
			String suc = (String)session.getAttribute("suc");
			if(suc!=null)
			{
			 %>
                  <script language=javascript>
       alert("交卷成功");
        </script>
                  <%
session.removeAttribute("suc");
}
 %>
                </tr>
              </tbody>
        </table></td>
      </tr>
      <tr>
        <td height="35" 
    align=right 
    style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-SIZE: 13px; PADDING-BOTTOM: 5px; PADDING-TOP: 2px">房产信息网后台 </td>
      </tr>
    </tbody>
  </table>
</FORM><BR><BR></BODY></HTML>

