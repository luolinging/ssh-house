<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="util.Info"%>

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
<BODY>
      
      
      
      
      
      <%
      String t = request.getParameter("t");
      if(t!=null)session.removeAttribute("user");
       %>
      
      
      
      
      
      
      <form name="form1" method="post" action="/shhouse/shhouse?ac=mlogin">

      <TABLE class=mt border=0 cellSpacing=0 cellPadding=0 width=925 
      align=center>
        <TBODY>
        <TR>
          <TD>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width=925>
              <TBODY>
              <TR>
                <TD width="135" height=55 align=left vAlign=top><label>
                  <img  src="shhouse_files/logosy.gif" width="130"  onclick="window.location.replace('index.jsp')">
                </label></TD>
                <TD width="242" align=left vAlign=middle>
                 
                 <marquee scrollamount="2.5">
                 
                 欢迎来到房产信息网，本站能为您提供最新的楼盘信息及优惠活动，有疑问请留言
                 
                 </marquee>
                 
                 </TD>
                <TD width="22" align=left vAlign=middle>&nbsp;</TD>
              
              
              <%
              if(Info.getUser(request)==null){
               %>
                <TD width="39" align=center vAlign=middle>
                  用户名:                  </TD>
                <TD width="75" align=center vAlign=middle><input type="text" name="uname" style="height:12px" id="textfield2" size="10"></TD>
                <TD width="39" align=center vAlign=middle>密码:</TD>
                <TD width="75" align=center vAlign=middle><input type="text" name="upass" style="height:12px"  id="textfield" size="10"></TD>
                <TD width="83" align=right vAlign=middle><input name="input" value="登录" style="border:1px" type="submit">
                  <input name="input" value="注册" onClick="window.location.replace('regedit.jsp')" style="border:1px" type="button"></TD>
                  <%}else{ %>
                  <TD width="215" align=center vAlign=middle>
                  欢迎你回来 : <%=Info.getUser(request).get("uname") %>  
                  &nbsp;&nbsp;
                  <a target="_blank" href="/shhouse/admin/default.jsp?zyuname=<%=Info.getUser(request).get("uname") %>">去信息中心</a>
                    &nbsp;&nbsp;
                     
                     <SCRIPT language=javascript src="/shhouse/js/popup.js"></SCRIPT>
                  <a href="index.jsp?t=t">退出</a>                  </TD>
                  <%} %>
              </TR>
              <TR style="DISPLAY: none">
                <TD colspan="8" align=left vAlign=top></TD></TR>
              <TR>
                <TD colspan="9" align=middle vAlign=top background=shhouse_files/cd.gif>
              <DIV class=menu style="width:100%" align="center"><A 
                  href="index.jsp"><strong>首页</strong></A><A 
                  href="wzjj.jsp"><strong>网站简介</strong></A><A 
                  href="ylzx.jsp"><strong>新闻信息</strong></A><A 
                  href="zlfa.jsp"><strong>房屋信息</strong></A><A 
                  href="wzgg.jsp"><strong>出售信息</strong></A>
                  
                  <A 
                  href="zxgs.jsp"><strong>求购信息</strong></A>
                  
          <A 
                  href="zxjl.jsp"><strong>在线交流</strong></A><A 
                  href="lxwm.jsp"><strong>联系我们</strong></A>        
                  
                  
                  <A 
                  href="message.jsp"><strong>留言板</strong></A>  
                  
                  
                        </DIV></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
                  
                  </form>
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  <!--<table width="925" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30" valign="top"><script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0','width','925','height','30','src','zi','quality','high','pluginspage','http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash','movie','zi' ); //end AC code
</script><noscript><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="925" height="30">
      <param name="movie" value="zi.swf" />
      <param name="quality" value="high" />
      <embed src="zi.swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="925" height="30"></embed>
    </object></noscript></td>
  </tr>
</table>-->
      <DIV style="TEXT-ALIGN: center; MARGIN-TOP: 5px" align="center">
      <IMG src="shhouse_files/back.bmp" width=97% height=170>
      </DIV>
      
      
      
      
      
      
      
      
      
      
      
      
      </BODY></HTML>
