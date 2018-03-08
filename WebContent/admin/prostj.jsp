
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
 <%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
String userid = user.get("id").toString();
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

</head>

<% 
HashMap ext = new HashMap(); 
String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
ext.put("tglparentid",tglparentid); 
new CommDAO().insert(request,response,"pros",ext,true,false); 
%>
<body>
  <form  action="prostj.jsp?f=f&tglparentid=<%=tglparentid%>"     name="f1" method="post"  onsubmit="return checkform()" >
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
                 
                  <td width="16%" align="center" class="main_matter_td">楼房名称</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text   class='textBox' id='hname' name='hname' size=35 /><label id='clabelhname' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">项目特色</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text   class='textBox' id='hitem' name='hitem' size=35 /><label id='clabelhitem' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">装修状况</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text   class='textBox' id='fishing' name='fishing' size=35 /><label id='clabelfishing' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">环线位置</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text   class='textBox' id='hxaddr' name='hxaddr' size=35 /><label id='clabelhxaddr' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">物业地址</td>
                  <td width="84%" align="left" class="main_matter_td"><textarea  cols='35'  style='margin-top: 1px;margin-bottom: 1px'  class='textArea'  name='addrs'  ></textarea></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">开盘时间</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text size='12' class='textBox'   name='dpdate' onclick='WdatePicker();'  /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">入住时间</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text   class='textBox' id='rzdate' name='rzdate' size=35 /><label id='clabelrzdate' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">容积率</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text   class='textBox' id='inrate' name='inrate' size=35 /><label id='clabelinrate' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">绿化率</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text   class='textBox' id='greensate' name='greensate' size=35 /><label id='clabelgreensate' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">户数</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text   class='textBox' id='hnums' name='hnums' size=35 /><label id='clabelhnums' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">物业费</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text   class='textBox' id='hcharge' name='hcharge' size=35 /><label id='clabelhcharge' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">预售许可证号</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text   class='textBox' id='allno' name='allno' size=35 /><label id='clabelallno' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">开发商</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text   class='textBox' id='developer' name='developer' size=35 /><label id='clabeldeveloper' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">详细介绍</td>
                  <td width="84%" align="left" class="main_matter_td"><textarea  cols='35'  style='margin-top: 1px;margin-bottom: 1px'  class='textArea'  name='tcontent'  ></textarea></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">地区</td>
                  <td width="84%" align="left" class="main_matter_td"><span id="areadanx"><%=Info.getradio("area","idatadic","icontent~无名","itype='楼房地区'")%></span></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">楼房类型</td>
                  <td width="84%" align="left" class="main_matter_td"><span id="hstypedanx"><%=Info.getradio("hstype","idatadic","icontent~无名","itype='楼房类型'")%></span></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">面积范围</td>
                  <td width="84%" align="left" class="main_matter_td"><span id="atypedanx"><%=Info.getradio("atype","idatadic","icontent~无名","itype='楼房面积'")%></span></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">实际面积</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text   class='textBox' id='mjs' name='mjs' size=35 /><label id='clabelmjs' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">楼房房型</td>
                  <td width="84%" align="left" class="main_matter_td"><span id="ftypedanx"><%=Info.getradio("ftype","idatadic","icontent~无名","itype='楼房房型'")%></span></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">价格范围</td>
                  <td width="84%" align="left" class="main_matter_td"><span id="ptypedanx"><%=Info.getradio("ptype","idatadic","icontent~无名","itype='楼房价格'")%></span></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">实际价格</td>
                  <td width="84%" align="left" class="main_matter_td"><input type=text   class='textBox' id='price' name='price' size=35 /><label id='clabelprice' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="16%" align="center" class="main_matter_td">相关图片</td>
                  <td width="84%" align="left" class="main_matter_td"><%=Info.getImgUpInfo(65)%></td>
                </tr>

				
				 <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td height="35" colspan="4" align="center" class="main_matter_td"><label>
                  <input type="submit" name="Submit" value="提交信息" />&nbsp;&nbsp;&nbsp;
                    <input type=button value='返回上页' onclick='window.location.replace("proscx.jsp")' />
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
<script language=javascript src='/shhouse/js/popup.js'></script>
<script language=javascript src='/shhouse/js/ajax.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
 function checkform(){  
var hnameobj = document.getElementById("hname");  
if(hnameobj.value==""){  
document.getElementById("clabelhname").innerHTML="&nbsp;&nbsp;<font color=red>请输入楼房名称</font>";  
return false;  
}else{
document.getElementById("clabelhname").innerHTML="  ";  
}  
  
var fishingobj = document.getElementById("fishing");  
if(fishingobj.value==""){  
document.getElementById("clabelfishing").innerHTML="&nbsp;&nbsp;<font color=red>请输入装修状况</font>";  
return false;  
}else{
document.getElementById("clabelfishing").innerHTML="  ";  
}  
  
var hxaddrobj = document.getElementById("hxaddr");  
if(hxaddrobj.value==""){  
document.getElementById("clabelhxaddr").innerHTML="&nbsp;&nbsp;<font color=red>请输入环线位置</font>";  
return false;  
}else{
document.getElementById("clabelhxaddr").innerHTML="  ";  
}  
  
var allnoobj = document.getElementById("allno");  
if(allnoobj.value==""){  
document.getElementById("clabelallno").innerHTML="&nbsp;&nbsp;<font color=red>请输入预售许可证号</font>";  
return false;  
}else{
document.getElementById("clabelallno").innerHTML="  ";  
}  
  
var developerobj = document.getElementById("developer");  
if(developerobj.value==""){  
document.getElementById("clabeldeveloper").innerHTML="&nbsp;&nbsp;<font color=red>请输入开发商</font>";  
return false;  
}else{
document.getElementById("clabeldeveloper").innerHTML="  ";  
}  
  
var mjsobj = document.getElementById("mjs");  
if(mjsobj.value==""){  
document.getElementById("clabelmjs").innerHTML="&nbsp;&nbsp;<font color=red>请输入实际面积</font>";  
return false;  
}else{
document.getElementById("clabelmjs").innerHTML="  ";  
}  
  
var priceobj = document.getElementById("price");  
if(priceobj.value==""){  
document.getElementById("clabelprice").innerHTML="&nbsp;&nbsp;<font color=red>请输入实际价格</font>";  
return false;  
}else{
document.getElementById("clabelprice").innerHTML="  ";  
}  
  
return true;   
}   
</script>  
