package pojobean;

/**
 * Sysuser entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Sysuser implements java.io.Serializable {

	// Fields

	private Integer id;
	private String uname;
	private String upass;
	private String utype;
	private String tname;
	private String sex;
	private String birth;
	private String linkphone;
	private String sfid;
	private String addrs;
	private String filename;

	// Constructors

	/** default constructor */
	public Sysuser() {
	}

	/** full constructor */
	public Sysuser(String uname, String upass, String utype, String tname,
			String sex, String birth, String linkphone, String sfid,
			String addrs, String filename) {
		this.uname = uname;
		this.upass = upass;
		this.utype = utype;
		this.tname = tname;
		this.sex = sex;
		this.birth = birth;
		this.linkphone = linkphone;
		this.sfid = sfid;
		this.addrs = addrs;
		this.filename = filename;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpass() {
		return this.upass;
	}

	public void setUpass(String upass) {
		this.upass = upass;
	}

	public String getUtype() {
		return this.utype;
	}

	public void setUtype(String utype) {
		this.utype = utype;
	}

	public String getTname() {
		return this.tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirth() {
		return this.birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getLinkphone() {
		return this.linkphone;
	}

	public void setLinkphone(String linkphone) {
		this.linkphone = linkphone;
	}

	public String getSfid() {
		return this.sfid;
	}

	public void setSfid(String sfid) {
		this.sfid = sfid;
	}

	public String getAddrs() {
		return this.addrs;
	}

	public void setAddrs(String addrs) {
		this.addrs = addrs;
	}

	public String getFilename() {
		return this.filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

}