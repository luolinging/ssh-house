package control;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.fileupload.RequestContext;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;


import util.Info;

import dao.CommDAO;

public class MainCtrl extends HttpServlet {

	public MainCtrl() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
	this.doPost(request, response);
	}

		public void go(String url,HttpServletRequest request, HttpServletResponse response)
		{
		try {
			request.getRequestDispatcher(url).forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		}
		
		public void gor(String url,HttpServletRequest request, HttpServletResponse response)
		{
			try {
				response.sendRedirect(url);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		HashMap user = (HashMap)session.getAttribute("admin");
		HashMap member = (HashMap)session.getAttribute("user");
		String ac = request.getParameter("ac");
		if(ac==null)ac="";
		CommDAO dao = new CommDAO();
		String date = Info.getDateStr();
		String today = date.substring(0,10);
		String tomonth = date.substring(0,7);
		

		//dao.commOper("update fangyd set states='已超时' where etime<'"+date.substring(0,date.length()-3)+"' and states='已受理'");
		
		
		
		
		//检查用户名唯一性
		if(ac.equals("checkuname"))
		{
			    String id = request.getParameter("id");
			    String checkuname = request.getParameter("checkuname");
			    String sql = "select * from sysuser where uname='"+checkuname+"'";
				 List list = dao.select(sql);
				 if(list.size()>0)out.print("N");
				 if(list.size()==0)out.print("Y");
		}
		
		
		
		
		
		//登录
		if(ac.equals("login"))
		{
			String username = request.getParameter("username");
			String password = request.getParameter("password");

				String sql1 = "select * from sysuser where uname='"+username+"' and upass='"+password+"' ";
			
				
			List<HashMap> userlist = dao.select(sql1);
			if(userlist.size()!=1)
			{
				request.setAttribute("error", "");
				go("/admin/index.jsp", request, response);
			}else{
				request.getSession(). setAttribute("admin", userlist.get(0));
				gor("/shhouse/admin/default.jsp", request, response);
			}
				
			
		}
		
		//修改密码
		if(ac.equals("uppass"))
		{
			String uname = request.getParameter("uname");
			String upass = request.getParameter("upass"); 
			String id = user.get("id").toString();
			
			String sql="update sysuser set uname='"+uname+"',upass='"+upass+"' where id="+id;
			System.out.println(sql);
			dao.commOper(sql);
			gor("/shhouse/admin/uppass.jsp", request, response);
		}
		
		//修改密码
		if(ac.equals("upmpass"))
		{
			String uname = request.getParameter("uname");
			String upass = request.getParameter("upass"); 
			String id = user.get("id").toString();
			
			String sql="update members set uname='"+uname+"',upass='"+upass+"' where id="+id;
			System.out.println(sql);
			dao.commOper(sql);
			gor("/shhouse/admin/upmpass.jsp", request, response);
		}
		
		
		if(ac.equals("addmember"))
		{
			String uname = request.getParameter("uname");
			
			String checksql = "select * from members where uname='"+uname+"'";
			if(dao.select(checksql).size()>0)
			{
				request.setAttribute("error", "");
				go("/admin/addmember.jsp", request, response);
			}else{
			
			String upass = request.getParameter("upass"); 
			String sex = request.getParameter("sex"); 
			String linkphone = request.getParameter("linkphone"); 
			String sfid = request.getParameter("sfid"); 
			String addrs = request.getParameter("addrs"); 
			String sql="insert into members values(null,'"+uname+"','"+upass+"','"+sex+"','"+linkphone+"','"+sfid+"','"+addrs+"')";
	         request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/addmember.jsp", request, response);
		}}

		
		
		if(ac.equals("updatemember"))
		{
			String id = request.getParameter("id"); 
			String upass = request.getParameter("upass"); 
			String sex = request.getParameter("sex"); 
			String linkphone = request.getParameter("linkphone"); 
			String sfid = request.getParameter("sfid"); 
			String addrs = request.getParameter("addrs"); 
			String sql="update members set  upass='"+upass+"',sex='"+sex+"',linkphone='"+linkphone+"',sfid='"+sfid+"',addrs='"+addrs+"' where id="+id;
	         request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/addmember.jsp", request, response);
		}
		
	
		if(ac.equals("updatemmember"))
		{
			String id = request.getParameter("id"); 
			String upass = request.getParameter("upass"); 
			String sex = request.getParameter("sex"); 
			String linkphone = request.getParameter("linkphone"); 
			String sfid = request.getParameter("sfid"); 
			String addrs = request.getParameter("addrs"); 
			String sql="update members set  upass='"+upass+"',sex='"+sex+"',linkphone='"+linkphone+"',sfid='"+sfid+"',addrs='"+addrs+"' where id="+id;
	         request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/updatemmember.jsp", request, response);
		}
		
		
		if(ac.equals("addmembers"))
		{
			String uname = request.getParameter("uname");
			
			String upass = request.getParameter("upass"); 
			String sex = request.getParameter("sex"); 
			String linkphone = request.getParameter("linkphone"); 
			String sfid = request.getParameter("sfid"); 
			String addrs = request.getParameter("addrs"); 
			String sql="insert into members values(null,'"+uname+"','xxxxxxxx','"+sex+"','"+linkphone+"','"+sfid+"','"+addrs+"')";
	         request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/addmembers.jsp", request, response);
		}
		
		
		
		if(ac.equals("updatemembers"))
		{
			String id = request.getParameter("id"); 
			String uname = request.getParameter("uname"); 
			String upass = request.getParameter("upass"); 
			String sex = request.getParameter("sex"); 
			String linkphone = request.getParameter("linkphone"); 
			String sfid = request.getParameter("sfid"); 
			String addrs = request.getParameter("addrs"); 
			String sql="update members set  uname='"+uname+"',sex='"+sex+"',linkphone='"+linkphone+"',sfid='"+sfid+"',addrs='"+addrs+"' where id="+id;
	         request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/addmembers.jsp", request, response);
		}
		
		
		if(ac.equals("updatemmember"))
		{
			String id = request.getParameter("id"); 
			String upass = request.getParameter("upass"); 
			String sex = request.getParameter("sex"); 
			String linkphone = request.getParameter("linkphone"); 
			String sfid = request.getParameter("sfid"); 
			String addrs = request.getParameter("addrs"); 
			String sql="update members set  upass='"+upass+"',sex='"+sex+"',linkphone='"+linkphone+"',sfid='"+sfid+"',addrs='"+addrs+"'";
	         request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/updatemmember.jsp", request, response);
		}
		
		
		
		if(ac.equals("addfang"))
		{
			String fangno = request.getParameter("fangno"); 
			String fangtype = request.getParameter("fangtype"); 
			String fangdj = request.getParameter("fangdj"); 
			String fangbig = request.getParameter("fangbig"); 
			String addrs = request.getParameter("addrs"); 
			String filename = request.getParameter("filename"); 
			String sql = "insert into fang values(null,'"+fangno+"','"+fangtype+"','"+fangdj+"','"+fangbig+"','"+addrs+"','"+filename+"')";
			request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/addfang.jsp", request, response);
		}
		
		
		if(ac.equals("updatefang"))
		{
			String id = request.getParameter("id"); 
			 HashMap m = dao.select("select * from fang where id="+id).get(0);
			 String filename = m.get("filename").toString();
			String fangno = request.getParameter("fangno"); 
			String fangtype = request.getParameter("fangtype"); 
			String fangdj = request.getParameter("fangdj"); 
			String fangbig = request.getParameter("fangbig"); 
			String addrs = request.getParameter("addrs"); 
			
			String sql = "update fang set fangno='"+fangno+"',fangtype='"+fangtype+"',fangdj='"+fangdj+"',fangbig='"+fangbig+"',addrs='"+addrs+"',filename='"+filename+"' where id="+id;
			request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/addfang.jsp", request, response);
		}
		
		
		if(ac.equals("yd"))
		{
			
			String fid = request.getParameter("fid"); 
			String memid = request.getParameter("mem"+fid);
			String uid = user.get("id").toString();
			String stime = request.getParameter("stime"+fid);
			String etime = request.getParameter("etime"+fid);
			String sql = "insert into fangyd values(null,'"+memid+"','"+fid+"','"+stime+"','"+etime+"','已受理','')";
			request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/fangyd.jsp", request, response);
		}
		
		
		if(ac.equals("pyd"))
		{
			
			String fid = request.getParameter("fid"); 
			String memid = request.getParameter("mem"+fid);
			String uid = user.get("id").toString();
			String stime = request.getParameter("stime"+fid);
			String etime = request.getParameter("etime"+fid);
			String sql = "insert into fangyd values(null,'"+user.get("id")+"','"+fid+"','"+stime+"','"+etime+"','受理中','')";
			request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/pfangyd.jsp", request, response);
		}
		
		
		if(ac.equals("hf"))
		{
			String id = request.getParameter("id"); 
			String fang = request.getParameter("fang"); 
			String sql = "update fangyd set fid='"+fang+"' where id='"+id+"'";
			request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/hf.jsp", request, response);
		}
		
		
		if(ac.equals("xs"))
		{
			String id = request.getParameter("id"); 
			String etime = request.getParameter("etime"+id); 
			String sql = "update fangyd set etime='"+etime+"' where id='"+id+"'";
			request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/ckfangyd.jsp", request, response);
		}
		
		
		if(ac.equals("updateuser"))
		{
			String uname = request.getParameter("uname");
			String upass = request.getParameter("upass");
			String utype = request.getParameter("utype");
			String id = request.getParameter("id");
			
			String sql = "update sysuser set uname='"+uname+"',upass='"+upass+"',utype='"+utype+"' where id="+id;
			dao.commOper(sql);
			request.setAttribute("suc", "");
			go("/admin/adduser.jsp", request, response);
		}
		
		
		if(ac.equals("adduser"))
		{
			String uname = request.getParameter("uname");
			String upass = request.getParameter("upass");
			String utype = request.getParameter("utype");
			String sql = "insert into sysuser values(null,'"+uname+"','"+upass+"','"+utype+"')";
			dao.commOper(sql);
			request.setAttribute("suc", "");
			go("/admin/adduser.jsp", request, response);
		}
		
		
		if(ac.equals("jz"))
		{
			String id = request.getParameter("id"); 
			String fangdj = request.getParameter("fangdj"); 
			String hours = request.getParameter("hours"); 
			String zhe = request.getParameter("big")+"."+request.getParameter("small"); 
			String sql = "insert into jddans values(null,'"+id+"','客房',"+fangdj+","+hours+")";
			dao.commOper(sql);
			for(int i=0;i<13;i++)
			{
				String wuname = request.getParameter("wuname"+i);  if(wuname==null)wuname="";
				String wunum = request.getParameter("wunum"+i);  if(wunum==null)wunum="";
				String danj = request.getParameter("danj"+i);  if(danj==null)danj="";
				if(wuname.equals("")||wunum.equals("")||danj.equals(""))continue;
				String msql = "insert into jddans values(null,'"+id+"','"+wuname+"',"+danj+","+wunum+")";
				dao.commOper(msql);
			}
			String jsql="update fangyd set states='已结账',zhe='"+zhe+"' where id="+id;
			dao.commOper(jsql);
			request.setAttribute("suc", "");
			go("/admin/jz.jsp", request, response);
		}
		
		
		if(ac.equals("fyd"))
		{
			String uname = request.getParameter("uname"); 
			String linkphone = request.getParameter("linkphone"); 
			String fang = request.getParameter("fang"); 
			String stime = request.getParameter("stime"); 
			String etime = request.getParameter("etime"); 
			dao.commOper("insert into members(uname,linkphone) values('"+uname+"','"+linkphone+"') ");
			HashMap m = dao.select("select * from members where upass is null and uname='"+uname+"' and linkphone='"+linkphone+"'").get(0);
			String id = m.get("id").toString();
			dao.commOper("insert into fangyd values(null,'"+id+"','"+fang+"','"+stime+"','"+etime+"','已受理','')");
			request.setAttribute("suc", "");
			go("/admin/fyd.jsp", request, response);
		}
		
		
		if(ac.equals("fyds"))
		{
			String uname = request.getParameter("uname"); 
			String linkphone = request.getParameter("linkphone"); 
			String fang = request.getParameter("fang"); 
			String stime = request.getParameter("stime"); 
			String etime = request.getParameter("etime"); 
			dao.commOper("insert into members(uname,linkphone) values('"+uname+"','"+linkphone+"') ");
			HashMap m = dao.select("select * from members where upass is null and uname='"+uname+"' and linkphone='"+linkphone+"'").get(0);
			String id = m.get("id").toString();
			dao.commOper("insert into fangyd values(null,'"+id+"','"+fang+"','"+stime+"','"+etime+"','已入住','')");
			request.setAttribute("suc", "");
			go("/admin/fyds.jsp", request, response);
		}
		
		

		if(ac.equals("uploaddoc"))
		{
			try {
				String filename="";
			request.setCharacterEncoding("utf-8");
			RequestContext  requestContext = new ServletRequestContext(request);
			if(FileUpload.isMultipartContent(requestContext)){

			   DiskFileItemFactory factory = new DiskFileItemFactory();
			   factory.setRepository(new File(request.getRealPath("/upfile/")+"/"));
			   ServletFileUpload upload = new ServletFileUpload(factory);
			   upload.setSizeMax(100*1024*1024);
			   List items = new ArrayList();
			    
			     items = upload.parseRequest(request);
			     
			    FileItem fileItem = (FileItem) items.get(0);
			   if(fileItem.getName()!=null && fileItem.getSize()!=0)
			    {
			    if(fileItem.getName()!=null && fileItem.getSize()!=0){
			      File fullFile = new File(fileItem.getName());
			      filename = Info.generalFileName(fullFile.getName());
			      File newFile = new File(request.getRealPath("/upfile/")+"/" + filename);
			      try {
			       fileItem.write(newFile);
			      } catch (Exception e) {
			       e.printStackTrace();
			      }
			     }else{
			     }
			    }
			}
			
			go("/js/uploaddoc.jsp?docname="+filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			    }
		}
		
		
		if(ac.equals("uploaddoc2"))
		{
			try {
				String filename="";
			request.setCharacterEncoding("utf-8");
			RequestContext  requestContext = new ServletRequestContext(request);
			if(FileUpload.isMultipartContent(requestContext)){

			   DiskFileItemFactory factory = new DiskFileItemFactory();
			   factory.setRepository(new File(request.getRealPath("/upfile/")+"/"));
			   ServletFileUpload upload = new ServletFileUpload(factory);
			   upload.setSizeMax(100*1024*1024);
			   List items = new ArrayList();
			    
			     items = upload.parseRequest(request);
			     
			    FileItem fileItem = (FileItem) items.get(0);
			   if(fileItem.getName()!=null && fileItem.getSize()!=0)
			    {
			    if(fileItem.getName()!=null && fileItem.getSize()!=0){
			      File fullFile = new File(fileItem.getName());
			      filename = Info.generalFileName(fullFile.getName());
			      File newFile = new File(request.getRealPath("/upfile/")+"/" + filename);
			      try {
			       fileItem.write(newFile);
			      } catch (Exception e) {
			       e.printStackTrace();
			      }
			     }else{
			     }
			    }
			}
			
			go("/js/uploaddoc2.jsp?docname="+filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			    }
		}
		
		
		if(ac.equals("uploaddoc3"))
		{
			try {
				String filename="";
			request.setCharacterEncoding("utf-8");
			RequestContext  requestContext = new ServletRequestContext(request);
			if(FileUpload.isMultipartContent(requestContext)){

			   DiskFileItemFactory factory = new DiskFileItemFactory();
			   factory.setRepository(new File(request.getRealPath("/upfile/")+"/"));
			   ServletFileUpload upload = new ServletFileUpload(factory);
			   upload.setSizeMax(100*1024*1024);
			   List items = new ArrayList();
			    
			     items = upload.parseRequest(request);
			     
			    FileItem fileItem = (FileItem) items.get(0);
			   if(fileItem.getName()!=null && fileItem.getSize()!=0)
			    {
			    if(fileItem.getName()!=null && fileItem.getSize()!=0){
			      File fullFile = new File(fileItem.getName());
			      filename = Info.generalFileName(fullFile.getName());
			      File newFile = new File(request.getRealPath("/upfile/")+"/" + filename);
			      try {
			       fileItem.write(newFile);
			      } catch (Exception e) {
			       e.printStackTrace();
			      }
			     }else{
			     }
			    }
			}
			
			go("/js/uploaddoc3.jsp?docname="+filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			    }
		}
		
		//导excel
		if(ac.equals("importexcel"))
		{
			String page = request.getParameter("page");
			String whzdstr = request.getParameter("whzdstr");
			String tablename = request.getParameter("tablename");
			try {
				String filename="";
			request.setCharacterEncoding("utf-8");
			RequestContext  requestContext = new ServletRequestContext(request);
			if(FileUpload.isMultipartContent(requestContext)){

			   DiskFileItemFactory factory = new DiskFileItemFactory();
			   factory.setRepository(new File(request.getRealPath("/upfile/")+"/"));
			   ServletFileUpload upload = new ServletFileUpload(factory);
			   upload.setSizeMax(100*1024*1024);
			   List items = new ArrayList();
			    
			     items = upload.parseRequest(request);
			     
			    FileItem fileItem = (FileItem) items.get(0);
			   if(fileItem.getName()!=null && fileItem.getSize()!=0)
			    {
			    if(fileItem.getName()!=null && fileItem.getSize()!=0){
			      File fullFile = new File(fileItem.getName());
			      filename = Info.generalFileName(fullFile.getName());
			      File newFile = new File(request.getRealPath("/upfile/")+"/" + filename);
			      try {
			       fileItem.write(newFile);
			      } catch (Exception e) {
			       e.printStackTrace();
			      }
			     }else{
			     }
			    }
			    
			   if(filename.indexOf(".xls")>-1)
				{
					Workbook workbook;
					try {
						workbook = Workbook.getWorkbook(new File(request.getRealPath("/upfile/")+"/"+filename));
		               //通过Workbook的getSheet方法选择第一个工作簿（从0开始）
						Sheet sheet = workbook.getSheet(0); 
		               //通过Sheet方法的getCell方法选择位置为C2的单元格（两个参数都从0开始）
						//int empty = 0;
						for(int i=1;i<1000;i++)
						{
							Cell cell = null;
							try{
								String isql = "insert into "+tablename+"(";
								
								for(String str:whzdstr.split("-"))
								{ 
									isql+=str+",";
								}
								isql = isql.substring(0,isql.length()-1);
								isql+=")values(";
								
								int j=0;
								int empty = 1;
								for(String str:whzdstr.split("-"))
								{
								cell = sheet.getCell(j,i); 
								isql+="'"+cell.getContents()+"',";
								String content = cell.getContents()==null?"":cell.getContents();
								if(!"".equals(content.trim()))
								{
									empty = 0;
								}
								j++;
								}
								if(empty==1)continue;
								isql = isql.substring(0,isql.length()-1);
								isql+=")";
								dao.commOper(isql);
							}catch (Exception e) {
							continue;
							}
						    
						 } 
						 workbook.close(); 
		            } catch (Exception e) {
						e.printStackTrace();
					} 
                  }
			}
			go("/admin/"+page+"?docname="+filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}
	  

		if(ac.equals("uploadimg"))
		{
			try {
				String filename="";
			request.setCharacterEncoding("utf-8");
			RequestContext  requestContext = new ServletRequestContext(request);
			if(FileUpload.isMultipartContent(requestContext)){

			   DiskFileItemFactory factory = new DiskFileItemFactory();
			   factory.setRepository(new File(request.getRealPath("/upfile/")+"/"));
			   ServletFileUpload upload = new ServletFileUpload(factory);
			   upload.setSizeMax(100*1024*1024);
			   List items = new ArrayList();
			    
			     items = upload.parseRequest(request);
			     
			    FileItem fileItem = (FileItem) items.get(0);
			   if(fileItem.getName()!=null && fileItem.getSize()!=0)
			    {
			    if(fileItem.getName()!=null && fileItem.getSize()!=0){
			      File fullFile = new File(fileItem.getName());
			      filename = Info.generalFileName(fullFile.getName());
			      File newFile = new File(request.getRealPath("/upfile/")+"/" + filename);
			      try {
			       fileItem.write(newFile);
			      } catch (Exception e) {
			       e.printStackTrace();
			      }
			     }else{
			     }
			    }
			}
			
			go("/js/uploadimg.jsp?filename="+filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			    }
		}
		
		
		if(ac.equals("uploadimg2"))
		{
			try {
				String filename="";
			request.setCharacterEncoding("utf-8");
			RequestContext  requestContext = new ServletRequestContext(request);
			if(FileUpload.isMultipartContent(requestContext)){

			   DiskFileItemFactory factory = new DiskFileItemFactory();
			   factory.setRepository(new File(request.getRealPath("/upfile/")+"/"));
			   ServletFileUpload upload = new ServletFileUpload(factory);
			   upload.setSizeMax(100*1024*1024);
			   List items = new ArrayList();
			    
			     items = upload.parseRequest(request);
			     
			    FileItem fileItem = (FileItem) items.get(0);
			   if(fileItem.getName()!=null && fileItem.getSize()!=0)
			    {
			    if(fileItem.getName()!=null && fileItem.getSize()!=0){
			      File fullFile = new File(fileItem.getName());
			      filename = Info.generalFileName(fullFile.getName());
			      File newFile = new File(request.getRealPath("/upfile/")+"/" + filename);
			      try {
			       fileItem.write(newFile);
			      } catch (Exception e) {
			       e.printStackTrace();
			      }
			     }else{
			     }
			    }
			}
			
			go("/js/uploadimg2.jsp?filename="+filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			    }
		}
		
		if(ac.equals("uploadimg3"))
		{
			try {
				String filename="";
			request.setCharacterEncoding("utf-8");
			RequestContext  requestContext = new ServletRequestContext(request);
			if(FileUpload.isMultipartContent(requestContext)){

			   DiskFileItemFactory factory = new DiskFileItemFactory();
			   factory.setRepository(new File(request.getRealPath("/upfile/")+"/"));
			   ServletFileUpload upload = new ServletFileUpload(factory);
			   upload.setSizeMax(100*1024*1024);
			   List items = new ArrayList();
			    
			     items = upload.parseRequest(request);
			     
			    FileItem fileItem = (FileItem) items.get(0);
			   if(fileItem.getName()!=null && fileItem.getSize()!=0)
			    {
			    if(fileItem.getName()!=null && fileItem.getSize()!=0){
			      File fullFile = new File(fileItem.getName());
			      filename = Info.generalFileName(fullFile.getName());
			      File newFile = new File(request.getRealPath("/upfile/")+"/" + filename);
			      try {
			       fileItem.write(newFile);
			      } catch (Exception e) {
			       e.printStackTrace();
			      }
			     }else{
			     }
			    }
			}
			
			go("/js/uploadimg3.jsp?filename="+filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			    }
		}
		
		if(ac.equals("uploadimg4"))
		{
			try {
				String filename="";
			request.setCharacterEncoding("utf-8");
			RequestContext  requestContext = new ServletRequestContext(request);
			if(FileUpload.isMultipartContent(requestContext)){

			   DiskFileItemFactory factory = new DiskFileItemFactory();
			   factory.setRepository(new File(request.getRealPath("/upfile/")+"/"));
			   ServletFileUpload upload = new ServletFileUpload(factory);
			   upload.setSizeMax(100*1024*1024);
			   List items = new ArrayList();
			    
			     items = upload.parseRequest(request);
			     
			    FileItem fileItem = (FileItem) items.get(0);
			   if(fileItem.getName()!=null && fileItem.getSize()!=0)
			    {
			    if(fileItem.getName()!=null && fileItem.getSize()!=0){
			      File fullFile = new File(fileItem.getName());
			      filename = Info.generalFileName(fullFile.getName());
			      File newFile = new File(request.getRealPath("/upfile/")+"/" + filename);
			      try {
			       fileItem.write(newFile);
			      } catch (Exception e) {
			       e.printStackTrace();
			      }
			     }else{
			     }
			    }
			}
			
			go("/js/uploadimg4.jsp?filename="+filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			    }
		}
		
		if(ac.equals("uploadimg5"))
		{
			try {
				String filename="";
			request.setCharacterEncoding("utf-8");
			RequestContext  requestContext = new ServletRequestContext(request);
			if(FileUpload.isMultipartContent(requestContext)){

			   DiskFileItemFactory factory = new DiskFileItemFactory();
			   factory.setRepository(new File(request.getRealPath("/upfile/")+"/"));
			   ServletFileUpload upload = new ServletFileUpload(factory);
			   upload.setSizeMax(100*1024*1024);
			   List items = new ArrayList();
			    
			     items = upload.parseRequest(request);
			     
			    FileItem fileItem = (FileItem) items.get(0);
			   if(fileItem.getName()!=null && fileItem.getSize()!=0)
			    {
			    if(fileItem.getName()!=null && fileItem.getSize()!=0){
			      File fullFile = new File(fileItem.getName());
			      filename = Info.generalFileName(fullFile.getName());
			      File newFile = new File(request.getRealPath("/upfile/")+"/" + filename);
			      try {
			       fileItem.write(newFile);
			      } catch (Exception e) {
			       e.printStackTrace();
			      }
			     }else{
			     }
			    }
			}
			
			go("/js/uploadimg5.jsp?filename="+filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			    }
		}
		
		if(ac.equals("addgggl"))
		{
			String title = request.getParameter("title");
			String content = request.getParameter("content"); 
			String sql="insert into mixinfo values(null,'"+title+"','','"+content+"','','','','','通知','"+date+"')";
	         request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/addgggl.jsp", request, response);
		}
		
		if(ac.equals("updategggl"))
		{
			String id = request.getParameter("id");
			String title = request.getParameter("title");
			String content = request.getParameter("content"); 
			String sql="update mixinfo set title='"+title+"',content='"+content+"' where id="+id;
	         request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/addgggl.jsp", request, response);
		}
		
		if(ac.equals("addylzx"))
		{
			String title = request.getParameter("title"); 
			String source = request.getParameter("source"); 
			String author = request.getParameter("author"); 
			String filename = request.getParameter("filename"); 
			String content = request.getParameter("content"); 
			String sql = "insert into mixinfo values(null,'"+title+"','"+filename+"','"+content+"','"+author+"','"+source+"','','','新闻信息','"+date+"')";
			request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/addylzx.jsp", request, response);
		}
		
		if(ac.equals("updateylzx"))
		{
			String id = request.getParameter("id"); 
			String title = request.getParameter("title"); 
			String source = request.getParameter("source"); 
			String author = request.getParameter("author"); 
			String filename = request.getParameter("filename"); 
			String content = request.getParameter("content"); 
			String sql = "update mixinfo set title='"+title+"',filename='"+filename+"',content='"+content+"',author='"+author+"',source='"+source+"' where id="+id;
			request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/addylzx.jsp", request, response);
		}
		

		if(ac.equals("addzlfa"))
		{
			String title = request.getParameter("title"); 
			String source = request.getParameter("source"); 
			String author = request.getParameter("author"); 
			String filename = request.getParameter("filename"); 
			String content = request.getParameter("content"); 
			String sql = "insert into mixinfo values(null,'"+title+"','"+filename+"','"+content+"','"+author+"','"+source+"','','','用户文章','"+date+"')";
			request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/addzlfa.jsp", request, response);
		}
		
		if(ac.equals("updatezlfa"))
		{
			String id = request.getParameter("id"); 
			String title = request.getParameter("title"); 
			String source = request.getParameter("source"); 
			String author = request.getParameter("author"); 
			String filename = request.getParameter("filename"); 
			String content = request.getParameter("content"); 
			String sql = "update mixinfo set title='"+title+"',filename='"+filename+"',content='"+content+"',author='"+author+"',source='"+source+"' where id="+id;
			request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/admin/addzlfa.jsp", request, response);
		}
		
		
		
		if(ac.equals("regedit"))
		{
			String uname = request.getParameter("uname");
			
			String checksql = "select * from members where uname='"+uname+"'";
			if(dao.select(checksql).size()>0)
			{
				request.setAttribute("error", "");
				go("/regedit.jsp", request, response);
			}else{
			
			String upass = request.getParameter("upass"); 
			String sex = request.getParameter("sex"); 
			String linkphone = request.getParameter("linkphone"); 
			String sfid = request.getParameter("sfid"); 
			String addrs = request.getParameter("addrs"); 
			String filename = request.getParameter("filename"); 
			String ispub = request.getParameter("ispub"); 
			String tname = request.getParameter("tname"); 
			String sql="insert into members(uname,upass,sex,linkphone,sfid,addrs,filename,tname,ispub) values('"+uname+"','"+upass+"','"+sex+"','"+linkphone+"','"+sfid+"','"+addrs+"','"+filename+"','"+tname+"','"+ispub+"')";
	        System.out.println(sql);
			request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/regedit.jsp", request, response);
		}}
		
		
		if(ac.equals("reregedit"))
		{
			String uname = request.getParameter("uname");
			String upass = request.getParameter("upass"); 
			String sex = request.getParameter("sex"); 
			String linkphone = request.getParameter("linkphone"); 
			String sfid = request.getParameter("sfid"); 
			String addrs = request.getParameter("addrs"); 
			String filename = request.getParameter("filename"); 
			String ispub = request.getParameter("ispub"); 
			String tname = request.getParameter("tname"); 
			String gxqm = request.getParameter("gxqm"); 
			String sql="update members set upass='"+upass+"',sex='"+sex+"',linkphone='"+linkphone+"',sfid='"+sfid+"',addrs='"+addrs+"',filename='"+filename+"',tname='"+tname+"',ispub='"+ispub+"',gxqm='"+gxqm+"' where id="+member.get("id");
	        System.out.println(sql);
			request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/reregedit.jsp", request, response);
		}
		

		if(ac.equals("reregedit2"))
		{
			String age = request.getParameter("age");
			String tiz = request.getParameter("tiz"); 
			String sheg = request.getParameter("sheg"); 
			String jbs = request.getParameter("jbs"); 
			String zlff = request.getParameter("zlff"); 
			String zlxg = request.getParameter("zlxg"); 
			String sql="update members set age='"+age+"',tiz='"+tiz+"',sheg='"+sheg+"',jbs='"+jbs+"',zlff='"+zlff+"',zlxg='"+zlxg+"' where id="+member.get("id");
	        System.out.println(sql);
			request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/reregedit.jsp", request, response);
		}
		
		if(ac.equals("friends"))
		{
			String uname = request.getParameter("uname");
			String funame = request.getParameter("funame"); 
			String sql="insert into friends values(null,'"+uname+"','"+funame+"')";
	        System.out.println(sql);
			request.setAttribute("suc", "");
			dao.commOper(sql);
			go("/grzy.jsp?zyuname="+funame, request, response);
		}
		

		
		//登录
		if(ac.equals("mlogin"))
		{
			String username = request.getParameter("uname");
			String password = request.getParameter("upass");

				String sql1 = "select * from sysuser where uname='"+username+"' and upass='"+password+"' ";
			
				
			List<HashMap> userlist = dao.select(sql1);
			if(userlist.size()!=1)
			{
				request.setAttribute("error", "");
				go("/index.jsp", request, response);
			}else{
				request.getSession(). setAttribute("user", userlist.get(0));
				gor("/shhouse/index.jsp", request, response);
			}
				
			
		}
		

		
		
		dao.close();
		out.flush();
		out.close();
	}


	public void init() throws ServletException {
		// Put your code here
	}
	
	public static void main(String[] args) {
		System.out.println("2010-11-11 00:".substring(11,13)+"-");
	}

}
