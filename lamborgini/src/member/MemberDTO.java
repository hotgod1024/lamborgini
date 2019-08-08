package member;

import java.sql.Date;

public class MemberDTO {
	private String userid;
	private String passwd;
	private String name;
	private String email;
	private String hp;
	private String zipcode;
	private String address1;
    private String bir;
	private Date join_date;//java.sql.Date
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getBir() {
		return bir;
	}
	public void setBir(String bir) {
		this.bir = bir;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	@Override
	public String toString() {
		return "MemberDTO [userid=" + userid + ", passwd=" + passwd + ", name=" + name + ", email=" + email + ", hp="
				+ hp + ", zipcode=" + zipcode + ", address1=" + address1 + ", bir=" + bir + ", join_date=" + join_date
				+ "]";
	}
	public MemberDTO(String userid, String passwd, String name, String email, String hp, String zipcode,
			String address1, String bir, Date join_date) {
		super();
		this.userid = userid;
		this.passwd = passwd;
		this.name = name;
		this.email = email;
		this.hp = hp;
		this.zipcode = zipcode;
		this.address1 = address1;
		this.bir = bir;
		this.join_date = join_date;
	}
	public MemberDTO() {
		
		
	}

	
}
