package poly.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Majors")
public class Majors {
	@Id
	@Column(name = "Id")
	private int id;
	@Column(name = "Name")
	private String name;
	@OneToMany(mappedBy = "major",fetch = FetchType.EAGER)
	private Collection<student> list;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Collection<student> getList() {
		return list;
	}
	public void setList(Collection<student> list) {
		this.list = list;
	}
	public Majors(int id, String name, Collection<student> list) {
		super();
		this.id = id;
		this.name = name;
		this.list = list;
	}
	public Majors() {
		super();
	}
	
}
