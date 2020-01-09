package jsp;

public class Register {
	private String id;
	private String pwd;
	private String email;
	private String phone_select;
	private String phone;
	private String agree;
	private String[] interest;
	private String introduce;
	
	public Register() {}
	
	public String getid() {
		return id;
	}
	public void setid(String id) {
		this.id=id;
	}
	
	public String getpwd() {
		return pwd;
	}
	public void setpwd(String pwd) {
		this.pwd=pwd;
	}
	
	public String getemail() {
		return email;
	}
	public void setemail(String email) {
		this.email=email;
	}
	
	public String getphone_select() {
		return phone_select;
	}
	public void setphone_select(String phone_select) {
		this.phone_select=phone_select;
	}
	
	public String getphone() {
		return phone;
	}
	public void setphone(String phone) {
		this.phone=phone;
	}
	
	public String getagree() {
		return agree;
	}
	public void setagree(String agree) {
		this.agree=agree;
	}
	
	public String[] getinterest() {
		return interest;
	}
	public void setinterest(String[] interest) {
		this.interest=interest;
	}
	
	public String getintroduce() {
		return introduce;
	}
	public void setintroduce(String introduce) {
		this.introduce=introduce;
	}
}
