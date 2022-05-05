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
	@Column(name = "Email")
	private String email;
	@OneToOne(mappedBy = "tk",fetch = FetchType.EAGER)
	private NhanVien nhanvien;
	@OneToOne(mappedBy = "tk1",fetch = FetchType.EAGER)
	private KhachHang khachhang;
	@ManyToOne
	@JoinColumn(name = "VaiTro")
	private VaiTro chucVu;
	@Column(name = "Trangthai")
	private boolean trangThai;
	public String getUserName() {
		return userName;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public NhanVien getNhanvien() {
		return nhanvien;
	}
	public void setNhanvien(NhanVien nhanvien) {
		this.nhanvien = nhanvien;
	}
	public KhachHang getKhachhang() {
		return khachhang;
	}
	public void setKhachhang(KhachHang khachhang) {
		this.khachhang = khachhang;
	}
	public VaiTro getChucVu() {
		return chucVu;
	}
	public void setChucVu(VaiTro chucVu) {
		this.chucVu = chucVu;
	}
	public boolean isTrangThai() {
		return trangThai;
	}
	public void setTrangThai(boolean trangThai) {
		this.trangThai = trangThai;
	}
	
}
