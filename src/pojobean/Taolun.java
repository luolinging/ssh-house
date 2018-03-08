package pojobean;

/**
 * Taolun entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Taolun implements java.io.Serializable {

	// Fields

	private Integer id;
	private String message;
	private String saver;
	private String savetime;
	private String pid;

	// Constructors

	/** default constructor */
	public Taolun() {
	}

	/** full constructor */
	public Taolun(String message, String saver, String savetime, String pid) {
		this.message = message;
		this.saver = saver;
		this.savetime = savetime;
		this.pid = pid;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getSaver() {
		return this.saver;
	}

	public void setSaver(String saver) {
		this.saver = saver;
	}

	public String getSavetime() {
		return this.savetime;
	}

	public void setSavetime(String savetime) {
		this.savetime = savetime;
	}

	public String getPid() {
		return this.pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

}