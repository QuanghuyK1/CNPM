/**
 * 
 */
package ptit.entity;
import java.sql.Time;
import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;


/**
 * @author Kiritsugu
 *
 */
@Entity
@Table(name = "CHUYENXE")
public class ChuyenXe {
	@Id
	@Column(name = "MaChuyen")
	private String maChuyen;
	@ManyToOne
	@JoinColumn(name = "Tuyen")
	private TuyenXe tuyen;
	@ManyToOne
	@JoinColumn(name = "Manv")
	private NhanVien nv;
	@Column(name = "TG_kh")
	private Time tgKh;
	@Column(name = "TG_den")
	private Time tgDen;
	@Column(name = "TrangThai")
	private boolean trangthai;
	@ManyToOne
	@JoinColumn(name = "Bienxe")
	private XeKhach xekhach;
	@Column(name = "ngaykh")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	private Date ngKH;
	@Column(name = "ngayden")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	private Date ngayDen;
	@Column(name = "gia")
	private float gia;
	@OneToMany(mappedBy = "chuyen", fetch = FetchType.EAGER)
	private Collection<PhieuDat> phieu;
	public ChuyenXe() {
		super();
	}
	
	

	public ChuyenXe(String maChuyen, TuyenXe tuyen, NhanVien nv, Time tgKh, Time tgDen, boolean trangthai,
			XeKhach xekhach, Date ngKH, Date ngayDen, float gia, Collection<PhieuDat> phieu) {
		super();
		this.maChuyen = maChuyen;
		this.tuyen = tuyen;
		this.nv = nv;
		this.tgKh = tgKh;
		this.tgDen = tgDen;
		this.trangthai = trangthai;
		this.xekhach = xekhach;
		this.ngKH = ngKH;
		this.ngayDen = ngayDen;
		this.gia = gia;
		this.phieu = phieu;
	}



	public Collection<PhieuDat> getPhieu() {
		return phieu;
	}



	public void setPhieu(Collection<PhieuDat> phieu) {
		this.phieu = phieu;
	}



	public String getMaChuyen() {
		return maChuyen;
	}
	public void setMaChuyen(String maChuyen) {
		this.maChuyen = maChuyen;
	}
	public TuyenXe getTuyen() {
		return tuyen;
	}
	public void setTuyen(TuyenXe tuyen) {
		this.tuyen = tuyen;
	}
	public NhanVien getNv() {
		return nv;
	}
	public void setNv(NhanVien nv) {
		this.nv = nv;
	}
	public Time getTgKh() {
		return tgKh;
	}
	public void setTgKh(Time tgKh) {
		this.tgKh = tgKh;
	}
	public Time getTgDen() {
		return tgDen;
	}
	public void setTgDen(Time tgDen) {
		this.tgDen = tgDen;
	}
	public boolean getTrangthai() {
		return trangthai;
	}
	public void setTrangthai(boolean trangthai) {
		this.trangthai = trangthai;
	}
	public XeKhach getXekhach() {
		return xekhach;
	}
	public void setXekhach(XeKhach xekhach) {
		this.xekhach = xekhach;
	}
	public Date getNgKH() {
		return ngKH;
	}
	public void setNgKH(Date ngKH) {
		this.ngKH = ngKH;
	}
	public Date getNgayDen() {
		return ngayDen;
	}
	public void setNgayDen(Date ngayDen) {
		this.ngayDen = ngayDen;
	}
	public float getGia() {
		return gia;
	}
	public void setGia(float gia) {
		this.gia = gia;
	}
}
