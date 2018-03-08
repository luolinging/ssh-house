package pojobean;

/**
 * Sellinfo entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Sellinfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String hname;
	private String hxaddr;
	private String addrs;
	private String tcontent;
	private String area;
	private String mjs;
	private String ftype;
	private String price;
	private String filename;
	private String linkman;
	private String tel;
	private String uname;
	private String savetime;

	// Constructors

	/** default constructor */
	public Sellinfo() {
	}

	/** full constructor */
	public Sellinfo(String hname, String hxaddr, String addrs, String tcontent,
			String area, String mjs, String ftype, String price,
			String filename, String linkman, String tel, String uname,
			String savetime) {
		this.hname = hname;
		this.hxaddr = hxaddr;
		this.addrs = addrs;
		this.tcontent = tcontent;
		this.area = area;
		this.mjs = mjs;
		this.ftype = ftype;
		this.price = price;
		this.filename = filename;
		this.linkman = linkman;
		this.tel = tel;
		this.uname = uname;
		this.savetime = savetime;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getHname() {
		return this.hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getHxaddr() {
		return this.hxaddr;
	}

	public void setHxaddr(String hxaddr) {
		this.hxaddr = hxaddr;
	}

	public String getAddrs() {
		return this.addrs;
	}

	public void setAddrs(String addrs) {
		this.addrs = addrs;
	}

	public String getTcontent() {
		return this.tcontent;
	}

	public void setTcontent(String tcontent) {
		this.tcontent = tcontent;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getMjs() {
		return this.mjs;
	}

	public void setMjs(String mjs) {
		this.mjs = mjs;
	}

	public String getFtype() {
		return this.ftype;
	}

	public void setFtype(String ftype) {
		this.ftype = ftype;
	}

	public String getPrice() {
		return this.price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getFilename() {
		return this.filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getLinkman() {
		return this.linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getSavetime() {
		return this.savetime;
	}

	public void setSavetime(String savetime) {
		this.savetime = savetime;
	}

}