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
<BODY>

<%
if(Info.getUser(request)==null){
 %>
 <script type="text/javascript">
 alert("请先登录");
 window.location.replace("index.jsp");
 </script>
 <%} %>

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
                  HashMap umap = Info.getUser(request);
                  if(request.getParameter("f")!=null)
                  {
                  dao.commOper("insert into taolun values(null,'"+request.getParameter("message")+"','"+umap.get("uname")+"','"+Info.getDateStr()+"','-1')");
                  }
                  
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
                      
                       <form action="/shhouse/message.jsp?me=me" name="f1" method="post">
                      
                                
                                
                                
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
                                align=left><STRONG>留言板</STRONG></TD>
                                
                                
                                <%
                                if(request.getParameter("me")!=null)
                                {
                                String message = request.getParameter("message");
                                dao.commOper("insert into lyb values(null,'"+umap.get("uname")+"','"+message+"','"+Info.getDateStr()+"','','')");
                                }
                                 %>
                                
                                </TR></TBODY></TABLE>
                                
                            
                                </TD></TR></TBODY></TABLE></TD></TR>
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
                                      
                                 <%
                                 for(HashMap m:dao.select("select * from lyb where 1=1 order by id desc")){
                                  %>     
                                 <TR>
                                <TD  height=30 
                                align=left vAlign=center class=xh>
                                <%=m.get("uname")+" : "+m.get("mcontent")+" ("+m.get("savetime")+")" %>
                                </TD>
                                </TR>
                                
                                <TR>
                                <TD  height=30 
                                align=left vAlign=center class=xh><font color=gray>
                                <%="管理员回复"+" : "+m.get("recontent")+" ("+m.get("resavetime")+")" %></font>
                                </TD>
                                </TR>
                                
                                <%} %>
                                
                                <TR>
                                <TD height=98 colspan="2" 
                                align=center vAlign=center class=xh><label>
                                  <textarea name="message" id="message" cols="45" rows="3"></textarea>
                                  
                                  <br /><br />
                                  
                                  <input type="submit"  value="提交留言" />
                                  
                                  
                                  
                                </label></TD>
                                </TR>
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
alert("添加成功");
<%}%>
</script>
  <SCRIPT language=javascript src="/shhouse/js/popups.js"></SCRIPT>