package pojobean;

/**
 * Idatadic entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Idatadic implements java.io.Serializable {

	// Fields

	private Integer id;
	private String itype;
	private String icontent;

	// Constructors

	/** default constructor */
	public Idatadic() {
	}

	/** full constructor */
	public Idatadic(String itype, String icontent) {
		this.itype = itype;
		this.icontent = icontent;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getItype() {
		return this.itype;
	}

	public void setItype(String itype) {
		this.itype = itype;
	}

	public String getIcontent() {
		return this.icontent;
	}

	public void setIcontent(String icontent) {
		this.icontent = icontent;
	}

}