package ptit.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "TUYENXE")
public class TuyenXe {
	@Id
	@Column(name = "MaTuyen")
	private String maTuyen;
	@ManyToOne
	@JoinColumn(name = "Diemdi")
	private DiaDiem diemDi;
	@ManyToOne
	@JoinColumn(name = "Diemden")
	private DiaDiem diemDen;
	@Column(name = "Trangthai")
	private int trangThai;
	@OneToMany(mappedBy = "tuyen", fetch = FetchType.EAGER)
	private Collection<ChuyenXe> chuyen;
	
	public String getMaTuyen() {
		return maTuyen;
	}
	
	public void setMaTuyen(String maTuyen) {
		this.maTuyen = maTuyen;
	}
	
	public int getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}
	public Collection<ChuyenXe> getChuyen() {
		return chuyen;
	}

	public void setChuyen(Collection<ChuyenXe> chuyen) {
		this.chuyen = chuyen;
	}
	
	public TuyenXe(String maTuyen, DiaDiem diemDi, DiaDiem diemDen, int trangThai, Collection<ChuyenXe> chuyen) {
		super();
		this.maTuyen = maTuyen;
		this.diemDi = diemDi;
		this.diemDen = diemDen;
		this.trangThai = trangThai;
		this.chuyen = chuyen;
	}

	public DiaDiem getDiemDi() {
		return diemDi;
	}

	public void setDiemDi(DiaDiem diemDi) {
		this.diemDi = diemDi;
	}

	public DiaDiem getDiemDen() {
		return diemDen;
	}

	public void setDiemDen(DiaDiem diemDen) {
		this.diemDen = diemDen;
	}

	public TuyenXe() {
		super();
	}
	
}
