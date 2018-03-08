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
                  String id = request.getParameter("id");
                  HashMap map = dao.getmap(id,"sellinfo");
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
                      
                      
                      <TABLE border=0 cellSpacing=0 cellPadding=0 
                          width="100%">
                        <TBODY>
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
                                <TD class=ls height=24 vAlign=bottom width=100%
                                align=left><STRONG>信息详情</STRONG></TD>
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
                                <TD height=22 colspan="2" 
                                align=left vAlign=top class=xh>
                                <center>
                               <font size="3"> <strong><%=map.get("hname") %></strong></font>
                                <br /><br />
                                 
                                  <%=map.get("uname").equals("")?"":("发布人 : "+map.get("uname")) %> 
                                 &nbsp;
                             <%=map.get("savetime").equals("")?"":("发布时间 : "+map.get("savetime")) %> 
                                
                                <%
                                if(!map.get("filename").equals("")){
                                 %>
                                <br /><br />
                                 <img src="upfile/<%=map.get("filename") %>" height="160" />
                                 <br /><br />
                                <%} %>
                                </center>
                               
                                :</TD>
                                </TR>
                                <TR>
                                  <TD width="18%" height=28 
                                align=center vAlign=middle class=xh>环线位置 : </TD>
                                  <TD width="82%" 
                                align=left vAlign=middle class=xh><%=map.get("hxaddr") %></TD>
                                </TR>
                              
                                <TR>
                                  <TD height=28 
                                align=center vAlign=middle class=xh>物业地址 : </TD>
                                  <TD height=28 
                                align=left vAlign=middle class=xh><%=map.get("addrs") %></TD>
                                </TR>
                                <TR>
                                  <TD height=28 
                                align=center vAlign=middle class=xh>介绍 : </TD>
                                  <TD height=28 
                                align=left vAlign=middle class=xh><%=map.get("tcontent") %></TD>
                                </TR>
                                <TR>
                                  <TD height=28 
                                align=center vAlign=middle class=xh>地区 : </TD>
                                  <TD height=28 
                                align=left vAlign=middle class=xh><%=map.get("area") %></TD>
                                </TR>
                                <TR>
                                  <TD height=28 
                                align=center vAlign=middle class=xh>实际面积 : </TD>
                                  <TD height=28 
                                align=left vAlign=middle class=xh><%=map.get("mjs") %></TD>
                                </TR>
                                <TR>
                                  <TD height=28 
                                align=center vAlign=middle class=xh>楼房房型 : </TD>
                                  <TD height=28 
                                align=left vAlign=middle class=xh><%=map.get("ftype") %></TD>
                                </TR>
                                <TR>
                                  <TD height=28 
                                align=center vAlign=middle class=xh>实际价格 : </TD>
                                  <TD height=28 
                                align=left vAlign=middle class=xh><%=map.get("hxaddr") %></TD>
                                </TR>
                                <TR>
                                  <TD height=28 
                                align=center vAlign=middle class=xh>联系人 : </TD>
                                  <TD height=28 
                                align=left vAlign=middle class=xh><%=map.get("linkman") %></TD>
                                </TR>
                                 <TR>
                                  <TD height=28 
                                align=center vAlign=middle class=xh>联系电话 : </TD>
                                  <TD height=28 
                                align=left vAlign=middle class=xh><%=map.get("tel") %></TD>
                                </TR>
                                
                                
                                  <TR>
                                  <TD height=28 colspan="2" 
                                align=center vAlign=middle class=xh>
                                
                                <%
                                if(Info.getUser(request)!=null){
                                new CommDAO().insert(request,response,"scinfo",new HashMap(),true,false);
                                 %>
                                <a href="newxiang.jsp?f=f&id=<%=id %>&sctype=2&scid=<%=id %>&uname=<%=Info.getUser(request).get("uname") %>">
                                <font color=orange>
                                [收藏本信息]
                                </font>
                                </a>
                                <%} %>
                                </TD>
                                  </TR>
                                      </TBODY>
                                  </TABLE></TD>
                                </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
                      
                      
                      
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
