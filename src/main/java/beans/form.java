package beans;

public class form {
	private int id_form;
	private String 	lib_form;
	
	public form(int id_form, String lib_form) {
		super();
		this.id_form = id_form;
		this.lib_form = lib_form;
	}
	public form() {
		super();
	}
	public form(String lib_form) {
		super();
		this.lib_form = lib_form;
	}
	public int getId_form() {
		return id_form;
	}
	public void setId_form(int id_form) {
		this.id_form = id_form;
	}
	public String getLib_form() {
		return lib_form;
	}
	public void setLib_form(String lib_form) {
		this.lib_form = lib_form;
	}
	
	
}
