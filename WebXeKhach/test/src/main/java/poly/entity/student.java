package poly.entity;



import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Entity
@Table(name="Students")
public class student {
	@Id
	@Column(name = "Id")
	private int id;
	@Column(name = "Fullname")
	private String fullName;
	@Column(name = "Mark")
	private float mark;
	@Column(name = "Gender")
	private String gender;
	@Column(name = "Birthday")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	private Date birthDay;
	/*
	 * @Column(name = "MajorId") private String majorId;
	 */
	@ManyToOne
	@JoinColumn(name = "MajorId")
	public Majors major;
	public student() {
		super();
	}
	public student(int id, String fullName, float mark, String gender, Date birthDay, Majors major) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.mark = mark;
		this.gender = gender;
		this.birthDay = birthDay;
		/* this.majorId = majorId; */
		this.major = major;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public float getMark() {
		return mark;
	}
	public void setMark(float mark) {
		this.mark = mark;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}
	/*
	 * public String getMajorId() { return majorId; }
	 */

	/*
	 * public void setMajorId(String majorId) { this.majorId = majorId; }
	 */
	public Majors getMajors() {
		return major;
	}
	public void setMajors(Majors majors) {
		this.major = majors;
	}
}
