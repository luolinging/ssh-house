package pojobean;

/**
 * Zxgs entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Zxgs implements java.io.Serializable {

	// Fields

	private Integer id;
	private String gsname;
	private String filename;
	private String jj;
	private String addrs;
	private String tel;
	private String lxr;
	private String kb;
	private String savetime;

	// Constructors

	/** default constructor */
	public Zxgs() {
	}

	/** full constructor */
	public Zxgs(String gsname, String filename, String jj, String addrs,
			String tel, String lxr, String kb, String savetime) {
		this.gsname = gsname;
		this.filename = filename;
		this.jj = jj;
		this.addrs = addrs;
		this.tel = tel;
		this.lxr = lxr;
		this.kb = kb;
		this.savetime = savetime;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getGsname() {
		return this.gsname;
	}

	public void setGsname(String gsname) {
		this.gsname = gsname;
	}

	public String getFilename() {
		return this.filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getJj() {
		return this.jj;
	}

	public void setJj(String jj) {
		this.jj = jj;
	}

	public String getAddrs() {
		return this.addrs;
	}

	public void setAddrs(String addrs) {
		this.addrs = addrs;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getLxr() {
		return this.lxr;
	}

	public void setLxr(String lxr) {
		this.lxr = lxr;
	}

	public String getKb() {
		return this.kb;
	}

	public void setKb(String kb) {
		this.kb = kb;
	}

	public String getSavetime() {
		return this.savetime;
	}

	public void setSavetime(String savetime) {
		this.savetime = savetime;
	}

}