package ptit.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name = "KHACHHANG")
public class KhachHang {
	@Id
	@Column(name = "MaKH")
	private String maKH;
	@Column(name = "SDT")
	private String sdt;
	@Column(name = "Email")
	private String email;
	@Column(name = "HoKH")
	private String hoKH;
	@Column(name = "TenKH")
	private String tenKH;
	@Column(name = "Phai")
	private String phai;
	@ManyToOne
	@JoinColumn(name = "username")
	private TaiKhoan tk1;
	@OneToMany(mappedBy = "KH",fetch = FetchType.EAGER)
	private Collection<PhieuDat> phieu;
	@Column(name = "Ngsinh")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	private Date ngSinh;
	public KhachHang() {
		super();
	}
	public KhachHang(String maKH, String sdt, String email, String hoKH, String tenKH, String phai, TaiKhoan tk,
			Collection<PhieuDat> phieu, Date ngSinh) {
		super();
		this.maKH = maKH;
		this.sdt = sdt;
		this.email = email;
		this.hoKH = hoKH;
		this.tenKH = tenKH;
		this.phai = phai;
		this.tk1 = tk;
		this.phieu = phieu;
		this.ngSinh = ngSinh;
	}



	public String getMaKH() {
		return maKH;
	}
	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHoKH() {
		return hoKH;
	}
	public void setHoKH(String hoKH) {
		this.hoKH = hoKH;
	}
	public String getTenKH() {
		return tenKH;
	}
	public void setTenKH(String tenKH) {
		this.tenKH = tenKH;
	}
	public String getPhai() {
		return phai;
	}
	public void setPhai(String phai) {
		this.phai = phai;
	}
	public TaiKhoan getTk() {
		return tk1;
	}
	public void setTk(TaiKhoan tk) {
		this.tk1 = tk;
	}



	public Collection<PhieuDat> getPhieu() {
		return phieu;
	}



	public void setPhieu(Collection<PhieuDat> phieu) {
		this.phieu = phieu;
	}



	public Date getNgSinh() {
		return ngSinh;
	}



	public void setNgSinh(Date ngSinh) {
		this.ngSinh = ngSinh;
	}
	
}
