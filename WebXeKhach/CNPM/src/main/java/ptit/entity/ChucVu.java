package ptit.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "CHUCVU")
public class ChucVu {
	@Id
	@Column(name = "MaCV")
	private String maCV;
	@Column(name = "TenCV")
	private String tenCV;
	@OneToMany(mappedBy = "chucVu", fetch = FetchType.EAGER)
	private Collection<TaiKhoan> taiKhoan;
	
	public String getMaCV() {
		return maCV;
	}
	public void setMaCV(String maCV) {
		this.maCV = maCV;
	}
	public String getTenCV() {
		return tenCV;
	}
	public void setTenCV(String tenCV) {
		this.tenCV = tenCV;
	}
	public Collection<TaiKhoan> getTaiKhoan() {
		return taiKhoan;
	}
	public void setTaiKhoan(Collection<TaiKhoan> taiKhoan) {
		this.taiKhoan = taiKhoan;
	}
	public ChucVu(String MaCV, String TenCV, Collection<TaiKhoan> taiKhoan) {
		super();
		maCV = MaCV;
		tenCV = TenCV;
		this.taiKhoan = taiKhoan;
	}
	public ChucVu(String MaCV, String TenCV) {
		super();
		maCV = MaCV;
		tenCV = TenCV;
	}
	public ChucVu() {
		super();
	}
	
}
