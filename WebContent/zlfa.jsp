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
                          width="99%">
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
                                <TD class=ls height=24 vAlign=bottom width=174 
                                align=left><STRONG>房屋信息</STRONG></TD>
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
                                <TD class=xh height=116 vAlign=center 
                                align=left> 
                                
                                <font color=orange>
                             &nbsp;   
                                地区 : 
                               
                               <% 
                               for(HashMap m:new CommDAO().select("select * from idatadic where itype='楼房地区' order by id"))
                               {
                               %>
                              
                               <a href="zlfa.jsp?lkey=<%=m.get("icontent") %> "><%=m.get("icontent") %></a>
                               
                               &nbsp;
                               <%} %>
                               
                               
                                <table><tr><td height="2"></td></tr></table>
                               
                                &nbsp;   
                                类型 : 
                               
                               <% 
                               for(HashMap m:new CommDAO().select("select * from idatadic where itype='楼房类型' order by id"))
                               {
                               %>
                                <a href="zlfa.jsp?lkey=<%=m.get("icontent") %> "><%=m.get("icontent") %></a>
                               
                               &nbsp;
                               <%} %>
                               
                               
                                <table><tr><td height="2"></td></tr></table>
                               
                                &nbsp;   
                                面积 : 
                               
                               <% 
                               for(HashMap m:new CommDAO().select("select * from idatadic where itype='楼房面积' order by id"))
                               {
                               %>
                              <a href="zlfa.jsp?lkey=<%=m.get("icontent") %> "><%=m.get("icontent") %></a>
                               
                               &nbsp;
                               <%} %>
                               
                               
                               <table><tr><td height="2"></td></tr></table>
                               
                                &nbsp;   
                                房型 : 
                               
                               <% 
                               for(HashMap m:new CommDAO().select("select * from idatadic where itype='楼房房型' order by id"))
                               {
                               %>
                                <a href="zlfa.jsp?lkey=<%=m.get("icontent") %> "><%=m.get("icontent") %></a>
                               
                               &nbsp;
                               <%} %>
                               
                               
                               
                               <table><tr><td height="2"></td></tr></table>
                               
                                &nbsp;   
                                房型 : 
                               
                               <% 
                               for(HashMap m:new CommDAO().select("select * from idatadic where itype='楼房价格' order by id"))
                               {
                               %>
                               <a href="zlfa.jsp?lkey=<%=m.get("icontent") %> "><%=m.get("icontent") %></a>
                               
                               &nbsp;
                               <%} %>
                               
                               
                               
                               
                               </font>
                               
                               
                               
                               
                               
                               
                                </TD></TR>
                                      
                                      
                                         <%
                                         String key = request.getParameter("key")==null?"":request.getParameter("key");
                                         String lkey = request.getParameter("lkey")==null?"":request.getParameter("lkey");
                                PageManager pageManager = PageManager.getPage("zlfa.jsp?1=1",16, request);
                                System.out.println("----");
							    pageManager.doList("select * from pros where 1=1 and (hname like'%"+key+"%' ) and ( area like'%"+lkey+"%'  or hstype like'%"+lkey+"%'  or atype like'%"+lkey+"%'  or ftype like'%"+lkey+"%'  or ptype like'%"+lkey+"%') order by id desc");
							    
							    PageManager bean= (PageManager)request.getAttribute("page");
							    ArrayList<HashMap> nlist=(ArrayList)bean.getCollection();
							    for( HashMap m :nlist)
							    {
                                 %>
                                <TR>
                                <TD class=xh height=24 vAlign=center 
                                align=left>·
                                <A href="xiang.jsp?id=<%=m.get("id") %>" target=_self>
                                    <%=Info.subStr(m.get("hname").toString(),90)  %></A> 
                                    
                                    <%=m.get("savetime") %>
                                </TD></TR>
                                <%} %>
                                
                                      <TR>
                                <TD class=xh height=40 vAlign=center 
                                align=center>
                                ${page.info }
                                </TD></TR>
                                      
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