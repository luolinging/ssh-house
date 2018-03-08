
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
 <%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
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


//-->
</script>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 18px;
	font-weight: bold;
}
-->
</style>
</head>

<% 
new CommDAO().delete(request,"sjs"); 
String id = request.getParameter("id"); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"sjs",ext,true,false); 
HashMap mmm = new CommDAO().getmap(id,"sjs"); 
%>
<body>
  <form  action="memsjsxg.jsp?f=f&id=<%=mmm.get("id")%>"     name="f1" method="post"  onsubmit="return checkform()" >
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="main_table_frame">
  <tr>
    <td height="48"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F7F7F7" class="main_desk_table">
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
                 
                  <td height="35" align="center" class="main_matter_td"><span class="STYLE1"><%=mmm.get("sjname") %></span>                    
                  <label id='clabelsjname' />                 </td>
                </tr>
                
                
                <%
                int i=0;
                for(String str:mmm.get("shitisjh").toString().split(" ~ ")){
                i++;
                 %>
              <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                  <td align="left" class="main_matter_td">&nbsp;&nbsp;<%=i %> . 
                 <%=str %>                            
                  </td>
                </tr>
                
                
                
                 <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                  <td align="left" class="main_matter_td">&nbsp;&nbsp;
                  
                  <%
                  HashMap tmap = new CommDAO().select("select * from shitis where title='"+str+"'").get(0);
                  String[] xxs = {"A","B","C","D","E"};
                  for(int ii=1;ii<=5;ii++){
                  if(!tmap.get("xx"+ii).equals("")){
                   %>
                  <label><input type=radio  id='xx-<%=str%>' name='shitisjh-<%=str %>' value="<%=xxs[ii-1] %>"  /> &nbsp;<%=xxs[ii-1] %> &nbsp;<%=tmap.get("xx"+ii) %></label>
                  &nbsp;&nbsp;
                 
                  <%}} %>
                   <span style="display: none"><font color=red>答案 : <span id="answer-<%=str%>"><%=tmap.get("answer") %></span></font></span>
                       </td>
                </tr>
                

				<%} %>
				 <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td height="35" colspan="3" align="center" class="main_matter_td"><label>
                  <input type="button" onclick="sub()" id="msub" name="Submit" value="提交试卷" />&nbsp;&nbsp;&nbsp;
                  
                  <script language="javascript">
                  function sub()
                  {
                  var tots = 0;
                  var spans = document.getElementsByTagName("span");
                  for(var i=0;i<spans.length;i++)
                  {
                  spans[i].style.display="";
                  } 
                  var radios = document.getElementsByTagName("input");
                   
                  for(var j=0;j<radios.length;j++)
                  {
                 
                  if(radios[j].type=='radio')
                  {
                  
                  if(radios[j].checked)
                  {
                  
                  var aid = "answer-"+radios[j].id.split("-")[1];
                  var uanswer = radios[j].value;
                  var answer = document.getElementById(aid).innerHTML; 
                  if(uanswer==answer)
                  {
                  tots++;
                  }
                  
                  }
                  }
                  }
                  document.getElementById("msub").disabled="disabled";
                  alert("您的得分为 : "+tots);
                  window.location="memsjscx.jsp?f=f&tj=tj&fen="+tots+"&sjname=<%=mmm.get("sjname") %>";
                  }
                  </script>
                  
                    <input type=button value='返回上页' onclick='window.location.replace("memsjscx.jsp")' />
                  </label></td> 
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
 
<script language=javascript src='/shhouse/js/My97DatePicker/WdatePicker.js'></script> 
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
return true;   
}   
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
