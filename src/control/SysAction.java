package control;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import pojobean.Pros;
import pojobean.Sysuser;

import util.Info;

import net.sf.json.JSONObject;
 
import com.opensymphony.xwork2.ActionSupport; 

import dao.CommDAO;
import dao.HibernateDAO;
import dao.SysuserDAO;

public class SysAction extends ActionSupport {
	 

	public String login() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		SysuserDAO dao = (SysuserDAO)Info.getDao(request,"SysuserDAO");;
		String username = request.getParameter("uname");
		String password = request.getParameter("upass");
		String utype = request.getParameter("utype");
		String hql = "from Sysuser where uname='"+username+"' and upass='"+password+"' ";
		List<Sysuser> userlist = new ArrayList();
		if(userlist.size()!=1)
		{
		    request.setAttribute("error", "");
			return "login"; 
		}else{
			HashMap umap = new HashMap();
			umap.put("id",userlist.get(0).getId());
			umap.put("uname",userlist.get(0).getUname());
			umap.put("upass",userlist.get(0).getUpass());
			umap.put("utype",userlist.get(0).getUtype());
			umap.put("tname",userlist.get(0).getTname());
			umap.put("sex",userlist.get(0).getSex());
//			umap.put("age",userlist.get(0).getAge());
//			umap.put("tel",userlist.get(0).getTel());
//			umap.put("addrs",userlist.get(0).getAddrs());
//			umap.put("filename",userlist.get(0).getFilename());
//			umap.put("qq",userlist.get(0).getQq());
//			umap.put("bei",userlist.get(0).getBei());
//			umap.put("savetime",userlist.get(0).getSavetime());
			request.getSession(). setAttribute("user", umap);
			return "index";
		}
		   
	}
	
	
	
	
	public String add() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String tname = request.getParameter("tname");
		String sex = request.getParameter("sex");
		String mtel = request.getParameter("mtel");
		String bumen = request.getParameter("bumenn");
		String bei = request.getParameter("bei");
		HibernateDAO dao = (HibernateDAO) Info.getDao(request, "CommonDAO");
		String hql = "from Txl where mtel='" + mtel + "'";
		List<Object> clist = dao.findByHql(hql);
		if (clist.size() == 0) { 
			return SUCCESS;
		} else {
			request.setAttribute("error", "");
			return "add";
		}

	}

	public String update() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HibernateDAO dao = (HibernateDAO) Info.getDao(request, "CommonDAO");
		String id = request.getParameter("id");
		Object txl = (Object) dao.findById(id, "Txl");
		String tname = request.getParameter("tname");
		String sex = request.getParameter("sex");
		String mtel = request.getParameter("mtel");
		String bumen = request.getParameter("bumenn");
		String bei = request.getParameter("bei");
		request.setAttribute("id", id);
		String hql = "from Txl where mtel='" + mtel + "' and mtel!='"
				+ bumen + "'";
		List<Object> clist = dao.findByHql(hql);
		if (clist.size() == 0) {
		 
			request.setAttribute("suc", "");
			return SUCCESS;
		} else {
			request.setAttribute("error", "");
			return "modify";
		}

	}
	
	
	 
	
	public String addpros() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HibernateDAO dao = (HibernateDAO) Info.getDao(request, "CommonDAO");
		Pros data = new Pros();
		String type = request.getParameter("type"); 
	//	data.setProname(request.getParameter("proname"));
	//	data.setBei(type);
		dao.save(data);
		request.setAttribute("suc", "");
		return "addpros";
	}
	
	 
	
	public String addsreader() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HibernateDAO dao = (HibernateDAO) Info.getDao(request, "CommonDAO");
		/*Sreader data = new Sreader();
		data.setEmail(request.getParameter("email") );
		data.setKjnum(request.getParameter("kjnum") );
		data.setTel(request.getParameter("tel") );
		data.setTname(request.getParameter("tname") );
		data.setUname(request.getParameter("uname") );
		data.setUpass(request.getParameter("upass") );
		data.setXueli(request.getParameter("xueli") );
		data.setZiye(request.getParameter("ziye") );
		dao.save(data);*/
		request.setAttribute("suc", "");
		return "addsreader";
	}
	
	public String updatesreader() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HibernateDAO dao = (HibernateDAO) Info.getDao(request, "CommonDAO");
		/*Sreader data = (Sreader)dao.load(request.getParameter("id"), "Sreader");
		data.setEmail(request.getParameter("email") );
		data.setKjnum(request.getParameter("kjnum") );
		data.setTel(request.getParameter("tel") );
		data.setTname(request.getParameter("tname") );
		data.setUname(request.getParameter("uname") );
		data.setUpass(request.getParameter("upass") );
		data.setXueli(request.getParameter("xueli") );
		data.setZiye(request.getParameter("ziye") );
		dao.update(data);*/
		request.setAttribute("suc", "");
		return "addsreader";
	}
	
	public String rupdatesreader() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HibernateDAO dao = (HibernateDAO) Info.getDao(request, "CommonDAO");
	/*	Sreader data = (Sreader)dao.load(request.getParameter("id"), "Sreader");
		data.setEmail(request.getParameter("email") );
		data.setTel(request.getParameter("tel") );
		data.setTname(request.getParameter("tname") );
		data.setUpass(request.getParameter("upass") );
		data.setXueli(request.getParameter("xueli") );
		data.setZiye(request.getParameter("ziye") );
		dao.update(data);*/
		request.setAttribute("suc", "");
		return "rupdatesreader";
	}
	
	 
	public String updatepros() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HibernateDAO dao = (HibernateDAO) Info.getDao(request, "CommonDAO");
		String id = request.getParameter("id");
		/*Syspros data = (Syspros)dao.load(id, "Syspros");
		data.setProname(request.getParameter("proname"));
		dao.update(data);*/
		request.setAttribute("suc", "");
		return "addpros";
	}
	
	 
	public String uppass() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HibernateDAO dao = (HibernateDAO) Info.getDao(request, "CommonDAO");
		Sysuser user = (Sysuser)request.getSession().getAttribute("admin");
		String newpwd = request.getParameter("newpwd");
		int id =  user.getId();
		Sysuser u = (Sysuser)dao.findById(id, "Sysuser");
		u.setUpass(newpwd);
		dao.update(u);
		request.setAttribute("suc", "");
		return "uppass";
	}
	
 
	
	private static final int BUFFER_SIZE = 16 * 1024;
	private File fujian;
	private String fujianFileName;
	
	
	public String upload()
	{
		fujianFileName="a.jpg";
		String newFujianName=Info.generalFileName(fujianFileName);
		String dstPath = ServletActionContext.getServletContext().getRealPath("upfile")+ "\\" + newFujianName;
		File dstFile = new File(dstPath);
		copy(this.getFujian(),dstFile);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("newFujianName", newFujianName);
		request.put("oldFujianName", fujianFileName);
		request.put("fujianPath", "/upload"+ "/" + newFujianName);
		fujianFileName = newFujianName;
		return "uploadimg";
	}
	
	
	private static void copy(File src, File dst) 
    {
        InputStream in = null;
        OutputStream out = null;
        try 
        {
            in = new BufferedInputStream(new FileInputStream(src), BUFFER_SIZE);
            out = new BufferedOutputStream(new FileOutputStream(dst),BUFFER_SIZE);
            byte[] buffer = new byte[BUFFER_SIZE];
            int len = 0;
            while ((len = in.read(buffer)) > 0) 
            {
                out.write(buffer, 0, len);
            }
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        } 
        finally
        {
            if (null != in) 
            {
                try 
                {
                    in.close();
                } 
                catch (IOException e) 
                {
                    e.printStackTrace();
                }
            }
            if (null != out) 
            {
                try 
                {
                    out.close();
                } 
                catch (IOException e) 
                {
                    e.printStackTrace();
                }
            }
        }
    }


	public File getFujian()
	{
		return fujian;
	}


	public void setFujian(File fujian)
	{
		this.fujian = fujian;
	}


	
	public String getFujianFileName()
	{
		return fujianFileName;
	}


	public void setFujianFileName(String fujianFileName)
	{
		this.fujianFileName = fujianFileName;
	}
	
	
	
	public String addsysusers() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HibernateDAO dao = (HibernateDAO) Info.getDao(request, "CommonDAO");
		Sysuser u = new Sysuser(); 
		//u.setTel(request.getParameter("tel"));
		u.setTname(request.getParameter("tname"));
		u.setUname(request.getParameter("uname"));
		u.setUpass(request.getParameter("upass"));
		dao.save(u);
		request.setAttribute("suc", "");
		return "adduser";
	}
	
	
	
	  
	
	
	public String updatesysusers() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HibernateDAO dao = (HibernateDAO) Info.getDao(request, "CommonDAO");
		 id = request.getParameter("id");
		Sysuser u = (Sysuser)dao.load(id, "Sysuser"); 
		//u.setTel(request.getParameter("tel"));
		u.setTname(request.getParameter("tname"));
		u.setUpass(request.getParameter("upass"));
		dao.update(u);
		request.setAttribute("id", id);
		request.setAttribute("suc", "");
		return "updatesysusers";
	}
	
	public String pupdatesysusers() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HibernateDAO dao = (HibernateDAO) Info.getDao(request, "CommonDAO");
		 id = request.getParameter("id");
		Sysuser u = (Sysuser)dao.load(id, "Sysuser"); 
		//u.setTel(request.getParameter("tel"));
		u.setTname(request.getParameter("tname"));
		u.setUpass(request.getParameter("upass"));
		dao.update(u);
		request.setAttribute("id", id);
		request.setAttribute("suc", "");
		return "pupdatesysusers";
	}
	
	public String setcj() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HibernateDAO dao = (HibernateDAO) Info.getDao(request, "HibernateDAO");
		String id = request.getParameter("id").replaceAll("cj", "");
		String user = request.getParameter("user").replaceAll("cj", "");
		String value = request.getParameter("value");
		List list = dao.findByHql("from Stucj where kid='"+id+"' and userid='"+user+"'");
		if(list.size()==0)
		{
//			Splb s = new Splb();
//			s.setLbname(value); 
//			dao.save(s);
		} 
		
		return null;
	}
	
	
	String id ;


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
