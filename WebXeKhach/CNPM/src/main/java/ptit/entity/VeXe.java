package ptit.entity;



import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import javax.persistence.Table;


@Entity
@Table(name = "VEXE")
public class VeXe implements Serializable{ 
	@Id
	@Column(name = "SoGhe")
	private String soGhe;
	@Id
	@ManyToOne
	@JoinColumn(name = "MaPD")
	private PhieuDat pd;
	public String getSoGhe() {
		return soGhe;
	}
	public void setSoGhe(String soGhe) {
		this.soGhe = soGhe;
	}
	public PhieuDat getPd() {
		return pd;
	}
	public void setPd(PhieuDat pd) {
		this.pd = pd;
	}
}
