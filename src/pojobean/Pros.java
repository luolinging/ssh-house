package pojobean;

/**
 * Pros entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Pros implements java.io.Serializable {

	// Fields

	private Integer id;
	private String hname;
	private String hitem;
	private String fishing;
	private String hxaddr;
	private String addrs;
	private String dpdate;
	private String rzdate;
	private String inrate;
	private String greensate;
	private String hnums;
	private String hcharge;
	private String allno;
	private String developer;
	private String tcontent;
	private String area;
	private String hstype;
	private String atype;
	private String mjs;
	private String ftype;
	private String ptype;
	private String price;
	private String filename;
	private String savetime;

	// Constructors

	/** default constructor */
	public Pros() {
	}

	/** full constructor */
	public Pros(String hname, String hitem, String fishing, String hxaddr,
			String addrs, String dpdate, String rzdate, String inrate,
			String greensate, String hnums, String hcharge, String allno,
			String developer, String tcontent, String area, String hstype,
			String atype, String mjs, String ftype, String ptype, String price,
			String filename, String savetime) {
		this.hname = hname;
		this.hitem = hitem;
		this.fishing = fishing;
		this.hxaddr = hxaddr;
		this.addrs = addrs;
		this.dpdate = dpdate;
		this.rzdate = rzdate;
		this.inrate = inrate;
		this.greensate = greensate;
		this.hnums = hnums;
		this.hcharge = hcharge;
		this.allno = allno;
		this.developer = developer;
		this.tcontent = tcontent;
		this.area = area;
		this.hstype = hstype;
		this.atype = atype;
		this.mjs = mjs;
		this.ftype = ftype;
		this.ptype = ptype;
		this.price = price;
		this.filename = filename;
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

	public String getHitem() {
		return this.hitem;
	}

	public void setHitem(String hitem) {
		this.hitem = hitem;
	}

	public String getFishing() {
		return this.fishing;
	}

	public void setFishing(String fishing) {
		this.fishing = fishing;
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

	public String getDpdate() {
		return this.dpdate;
	}

	public void setDpdate(String dpdate) {
		this.dpdate = dpdate;
	}

	public String getRzdate() {
		return this.rzdate;
	}

	public void setRzdate(String rzdate) {
		this.rzdate = rzdate;
	}

	public String getInrate() {
		return this.inrate;
	}

	public void setInrate(String inrate) {
		this.inrate = inrate;
	}

	public String getGreensate() {
		return this.greensate;
	}

	public void setGreensate(String greensate) {
		this.greensate = greensate;
	}

	public String getHnums() {
		return this.hnums;
	}

	public void setHnums(String hnums) {
		this.hnums = hnums;
	}

	public String getHcharge() {
		return this.hcharge;
	}

	public void setHcharge(String hcharge) {
		this.hcharge = hcharge;
	}

	public String getAllno() {
		return this.allno;
	}

	public void setAllno(String allno) {
		this.allno = allno;
	}

	public String getDeveloper() {
		return this.developer;
	}

	public void setDeveloper(String developer) {
		this.developer = developer;
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

	public String getHstype() {
		return this.hstype;
	}

	public void setHstype(String hstype) {
		this.hstype = hstype;
	}

	public String getAtype() {
		return this.atype;
	}

	public void setAtype(String atype) {
		this.atype = atype;
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

	public String getPtype() {
		return this.ptype;
	}

	public void setPtype(String ptype) {
		this.ptype = ptype;
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

	public String getSavetime() {
		return this.savetime;
	}

	public void setSavetime(String savetime) {
		this.savetime = savetime;
	}

}