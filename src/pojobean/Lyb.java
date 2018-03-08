package pojobean;

/**
 * Lyb entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Lyb implements java.io.Serializable {

	// Fields

	private Integer id;
	private String uname;
	private String mcontent;
	private String savetime;
	private String recontent;
	private String resavetime;

	// Constructors

	/** default constructor */
	public Lyb() {
	}

	/** full constructor */
	public Lyb(String uname, String mcontent, String savetime,
			String recontent, String resavetime) {
		this.uname = uname;
		this.mcontent = mcontent;
		this.savetime = savetime;
		this.recontent = recontent;
		this.resavetime = resavetime;
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

	public String getMcontent() {
		return this.mcontent;
	}

	public void setMcontent(String mcontent) {
		this.mcontent = mcontent;
	}

	public String getSavetime() {
		return this.savetime;
	}

	public void setSavetime(String savetime) {
		this.savetime = savetime;
	}

	public String getRecontent() {
		return this.recontent;
	}

	public void setRecontent(String recontent) {
		this.recontent = recontent;
	}

	public String getResavetime() {
		return this.resavetime;
	}

	public void setResavetime(String resavetime) {
		this.resavetime = resavetime;
	}

}