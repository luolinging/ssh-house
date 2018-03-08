package pojobean;

/**
 * Buyinfo entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Buyinfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String uname;
	private String title;
	private String tcontent;
	private String tel;
	private String linkmen;
	private String savetime;

	// Constructors

	/** default constructor */
	public Buyinfo() {
	}

	/** full constructor */
	public Buyinfo(String uname, String title, String tcontent, String tel,
			String linkmen, String savetime) {
		this.uname = uname;
		this.title = title;
		this.tcontent = tcontent;
		this.tel = tel;
		this.linkmen = linkmen;
		this.savetime = savetime;
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

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTcontent() {
		return this.tcontent;
	}

	public void setTcontent(String tcontent) {
		this.tcontent = tcontent;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getLinkmen() {
		return this.linkmen;
	}

	public void setLinkmen(String linkmen) {
		this.linkmen = linkmen;
	}

	public String getSavetime() {
		return this.savetime;
	}

	public void setSavetime(String savetime) {
		this.savetime = savetime;
	}

}