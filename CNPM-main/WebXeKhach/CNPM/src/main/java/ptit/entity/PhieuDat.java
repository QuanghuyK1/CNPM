package ptit.entity;

import java.math.BigDecimal;
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
@Table(name = "PHIEUDAT")
public class PhieuDat {
	@Id
	@Column(name = "MaPD")
	private String maPD;
	@ManyToOne
	@JoinColumn(name = "MaChuyen")
	private ChuyenXe chuyen;
	@Column(name = "TrangThai")
	private int trangThai;
	@OneToMany(mappedBy = "pd", fetch = FetchType.EAGER)
	private Collection<VeXe> vexe;
	@ManyToOne
	@JoinColumn(name = "MaKH")
	private KhachHang KH;
	@ManyToOne
	@JoinColumn(name = "MaNV")
	private NhanVien NV;
	@Column(name="TongTien")
	private BigDecimal tongtien;
	public String getMaPD() {
		return maPD;
	}
	public void setMaPD(String maPD) {
		this.maPD = maPD;
	}
	public ChuyenXe getChuyen() {
		return chuyen;
	}
	public void setChuyen(ChuyenXe chuyen) {
		this.chuyen = chuyen;
	}
	public int isTrangThai() {
		return trangThai;
	}
	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}
	public Collection<VeXe> getVexe() {
		return vexe;
	}
	public void setVexe(Collection<VeXe> vexe) {
		this.vexe = vexe;
	}
	public KhachHang getKH() {
		return KH;
	}
	public void setKH(KhachHang kH) {
		KH = kH;
	}
	public NhanVien getNV() {
		return NV;
	}
	public void setNV(NhanVien nV) {
		NV = nV;
	}
	public BigDecimal getTongtien() {
		return tongtien;
	}
	public void setTongtien(BigDecimal tongtien) {
		this.tongtien = tongtien;
	}
	
}
