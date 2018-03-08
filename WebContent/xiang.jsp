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
                  HashMap map = dao.getmap(id,"pros");
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
                                <TD height=22 colspan="4" 
                                align=left vAlign=top class=xh>
                                <center>
                               <font size="3"> <strong><%=map.get("hname") %></strong></font>
                                <br /><br />
                                
                                 
                             <%=map.get("savetime").equals("")?"":("发布时间 : "+map.get("savetime")) %> 
                                
                                <%
                                if(!map.get("filename").equals("")){
                                 %>
                                <br /><br />
                                 <img src="upfile/<%=map.get("filename") %>" height="160" />
                                 <br /><br />
                                <%} %>
                                </center>
                               
                                <table><tr><td></td><tr></table>
                               <table><tr><td></td><tr></table>                                </TD></TR>
                                <TR>
                                  <TD width="14%" height=30 
                                align=center vAlign=middle class=xh>项目特色 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("hitem") %></TD>
                                  <TD width="14%" 
                                align=center vAlign=middle class=xh>装修状况 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("fishing") %></TD>
                                </TR>
                                
                                
                                   <TR>
                                  <TD width="14%" height=30 
                                align=center vAlign=middle class=xh>环线位置 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("hxaddr") %></TD>
                                  <TD width="14%" 
                                align=center vAlign=middle class=xh>物业地址 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("addrs") %></TD>
                                   </TR>
                                 
                                   <TR>
                                  <TD width="14%" height=30 
                                align=center vAlign=middle class=xh>开盘时间 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("dpdate") %></TD>
                                  <TD width="14%" 
                                align=center vAlign=middle class=xh>入住时间 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("rzdate") %></TD>
                                   </TR>
                                
                                
                                   <TR>
                                  <TD width="14%" height=30 
                                align=center vAlign=middle class=xh>容积率 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("inrate") %></TD>
                                  <TD width="14%" 
                                align=center vAlign=middle class=xh>绿化率 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("greensate") %></TD>
                                   </TR>
                                
                                
                                   <TR>
                                  <TD width="14%" height=30 
                                align=center vAlign=middle class=xh>户数 :</TD> 
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("hnums") %></TD>
                                  <TD width="14%" 
                                align=center vAlign=middle class=xh>物业费 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("hcharge") %></TD>
                                   </TR>
                                
                                
                                   <TR>
                                  <TD width="14%" height=30 
                                align=center vAlign=middle class=xh>预售许可证号 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("allno") %></TD>
                                  <TD width="14%" 
                                align=center vAlign=middle class=xh>开发商 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("developer") %></TD>
                                   </TR>
                                
                                   <TR>
                                  <TD width="14%" height=30 
                                align=center vAlign=middle class=xh>详细介绍 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("tcontent") %></TD>
                                  <TD width="14%" 
                                align=center vAlign=middle class=xh>地区 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("area") %></TD>
                                   </TR>
                                
                                   <TR>
                                  <TD width="14%" height=30 
                                align=center vAlign=middle class=xh>楼房类型 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("hstype") %></TD>
                                  <TD width="14%" 
                                align=center vAlign=middle class=xh>面积范围 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("atype") %></TD>
                                   </TR>
                                
                                   <TR>
                                  <TD width="14%" height=30 
                                align=center vAlign=middle class=xh>实际面积 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("mjs") %></TD>
                                  <TD width="14%" 
                                align=center vAlign=middle class=xh>楼房房型 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("ftype") %></TD>
                                   </TR>
                                
                                   <TR>
                                  <TD width="14%" height=30 
                                align=center vAlign=middle class=xh>价格范围 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("ptype") %></TD>
                                  <TD width="14%" 
                                align=center vAlign=middle class=xh>实际价格 :</TD>
                                  <TD width="36%" 
                                align=left vAlign=middle class=xh><%=map.get("price") %></TD>
                                   </TR>
                                
                                   <TR>
                                  <TD height=30 colspan="4" 
                                align=center vAlign=middle class=xh>
                                
                                
                                
                                   <%
                                if(Info.getUser(request)!=null){
                                new CommDAO().insert(request,response,"scinfo",new HashMap(),true,false);
                                 %>
                                <a href="xiang.jsp?f=f&id=<%=id %>&sctype=1&scid=<%=id %>&uname=<%=Info.getUser(request).get("uname") %>">
                                <font color=orange>
                                [收藏本信息]                                </font>                                </a>
                                <%} %>                                </TD>
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
