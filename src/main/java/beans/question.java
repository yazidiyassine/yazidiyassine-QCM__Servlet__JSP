package beans;

public class question {
 	private int id_question;
 	private int id_form ;
 	private String lib_quest;
 	
 	
 	
	public question() {
		super();
	}
	public question(int id_question, int id_form, String lib_quest) {
		super();
		this.id_question = id_question;
		this.id_form = id_form;
		this.lib_quest = lib_quest;
	}
	public question(int id_form, String lib_quest) {
		super();
		this.id_form = id_form;
		this.lib_quest = lib_quest;
	}
	public int getId_question() {
		return id_question;
	}
	public void setId_question(int id_question) {
		this.id_question = id_question;
	}
	public int getId_form() {
		return id_form;
	}
	public void setId_form(int id_form) {
		this.id_form = id_form;
	}
	public String getLib_quest() {
		return lib_quest;
	}
	public void setLib_quest(String lib_quest) {
		this.lib_quest = lib_quest;
	}
}
