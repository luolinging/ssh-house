package pojobean;

/**
 * Mixinfo entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Mixinfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private String filename;
	private String content;
	private String author;
	private String source;
	private String docname;
	private String infob;
	private String infotype;
	private String savetime;

	// Constructors

	/** default constructor */
	public Mixinfo() {
	}

	/** full constructor */
	public Mixinfo(String title, String filename, String content,
			String author, String source, String docname, String infob,
			String infotype, String savetime) {
		this.title = title;
		this.filename = filename;
		this.content = content;
		this.author = author;
		this.source = source;
		this.docname = docname;
		this.infob = infob;
		this.infotype = infotype;
		this.savetime = savetime;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFilename() {
		return this.filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getSource() {
		return this.source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDocname() {
		return this.docname;
	}

	public void setDocname(String docname) {
		this.docname = docname;
	}

	public String getInfob() {
		return this.infob;
	}

	public void setInfob(String infob) {
		this.infob = infob;
	}

	public String getInfotype() {
		return this.infotype;
	}

	public void setInfotype(String infotype) {
		this.infotype = infotype;
	}

	public String getSavetime() {
		return this.savetime;
	}

	public void setSavetime(String savetime) {
		this.savetime = savetime;
	}

}