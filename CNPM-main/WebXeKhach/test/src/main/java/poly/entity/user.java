package poly.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="Users")
public class user {
	@Id
	@Column(name = "Id")
	private String id;
	@Column(name = "Password")
	private String password;
	@Column(name = "Fullname")
	private String fullName;
	@Column(name = "Photo")
	private String photo;
	@Column(name = "Email")
	private String Email;
	public user() {
		super();
	}
	public user(String id, String password, String fullName, String photo, String email) {
		super();
		this.id = id;
		this.password = password;
		this.fullName = fullName;
		this.photo = photo;
		Email = email;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
}
