package pojobean;

/**
 * Scinfo entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Scinfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String uname;
	private String sctype;
	private String scid;

	// Constructors

	/** default constructor */
	public Scinfo() {
	}

	/** full constructor */
	public Scinfo(String uname, String sctype, String scid) {
		this.uname = uname;
		this.sctype = sctype;
		this.scid = scid;
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

	public String getSctype() {
		return this.sctype;
	}

	public void setSctype(String sctype) {
		this.sctype = sctype;
	}

	public String getScid() {
		return this.scid;
	}

	public void setScid(String scid) {
		this.scid = scid;
	}

}