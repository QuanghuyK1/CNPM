package ptit.entity;


import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TAIKHOAN")
public class TaiKhoan {
	@Id
	@Column(name = "Username")
	private String userName;
	@Column(name = "Matkhau")
	private String matKhau;
	@OneToMany(mappedBy = "tk",fetch = FetchType.EAGER)
	private Collection<NhanVien> nhanvien;
	@OneToMany(mappedBy = "tk1",fetch = FetchType.EAGER)
	private Collection<KhachHang> khachhang;
	@ManyToOne
	@JoinColumn(name = "Chucvu")
	private ChucVu chucVu;
	@Column(name = "Trangthai")
	private boolean trangThai;
	public String getUserName() {
		return userName;
	}
	public Collection<NhanVien> getNhanvien() {
		return nhanvien;
	}
	public void setNhanvien(Collection<NhanVien> nhanvien) {
		this.nhanvien = nhanvien;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getMatKhau() {
		return matKhau;
	}
	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}
	public ChucVu getChucVu() {
		return chucVu;
	}
	public void setChucVu(ChucVu chucVu) {
		this.chucVu = chucVu;
	}
	public boolean getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(boolean trangThai) {
		this.trangThai = trangThai;
	}
	public TaiKhoan(String userName, String matKhau, ChucVu chucVu, boolean trangThai) {
		super();
		this.userName = userName;
		this.matKhau = matKhau;
		this.chucVu = chucVu;
		this.trangThai = trangThai;
	}
	public TaiKhoan() {
		super();
	}
	public Collection<KhachHang> getKhachhang() {
		return khachhang;
	}
	public void setKhachhang(Collection<KhachHang> khachhang) {
		this.khachhang = khachhang;
	}
	
}