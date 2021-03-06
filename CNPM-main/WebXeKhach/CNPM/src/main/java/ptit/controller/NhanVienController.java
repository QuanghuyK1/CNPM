package ptit.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ptit.entity.*;

@Controller
public class NhanVienController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("admin")
	public String AdminForm() {
		return "admin/form";
	}

	@RequestMapping("admin/danhsach")
	public String ShowDS(ModelMap model) {
		Session session = factory.openSession();
		String hql = "select maNV, hoNV, tenNV, tk.userName, tk.chucVu.tenCV, tk.trangThai from NhanVien";
		Query query = session.createQuery(hql);
		List<Object[]> arrays = query.list();
		model.addAttribute("list", arrays);
		return "admin/dsnv";
	}

	@RequestMapping(value = "admin/danhsach/{manv}", params = "delNV", method = RequestMethod.GET)
	public String btnDel() {
		return "admin/xacnhan";
	}

	@RequestMapping(value = "admin/danhsach/{manv}", params = "delNV", method = RequestMethod.POST)
	public String btnDel(@PathVariable("manv") String manv) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			NhanVien nv = (NhanVien) session.load(NhanVien.class, manv);
			nv.getTk().setTrangThai(false);
			session.update(nv);
			transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
		} finally {
			session.close();
		}
		return "redirect: /CNPM/admin/danhsach.htm";
	}

	@Transactional
	@RequestMapping(value = "admin/danhsach/{manv}", method = RequestMethod.GET)
	public String infonv(@PathVariable("manv") String manv, ModelMap model) {
		Session session = factory.getCurrentSession();
		NhanVien nv = (NhanVien) session.load(NhanVien.class, manv);
		model.addAttribute("nv", nv);
		String date = null;
		if (nv.getNgaySinh() != null) {
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
			date = formatter.format(nv.getNgaySinh());
		} else {
			date = "";
		}
		model.addAttribute("date", date);
		return "admin/info";
	}

	@RequestMapping(value = "admin/danhsach", params = "searchNv", method = RequestMethod.GET)
	public String searchNV(ModelMap model, HttpServletRequest request) {
		Session session = factory.openSession();
		String hql = "select maNV, hoNV, tenNV, tk.userName, tk.chucVu.tenCV, tk.trangThai from NhanVien where maNV = '"
				+ request.getParameter("search") + "'";
		Query query = session.createQuery(hql);
		List<Object[]> arrays = query.list();
		model.addAttribute("list", arrays);
		return "admin/dsnv";
	}

	@Transactional
	@RequestMapping(value = "admin/danhsach", params = "addNV", method = RequestMethod.GET)
	public String addNV(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from VaiTro";
		Query query = session.createQuery(hql);
		List<VaiTro> arrays = query.list();
		arrays.remove(0);
		model.addAttribute("list", arrays);
		return "admin/formAdd";
	}

	@RequestMapping(value = "admin/success", method = RequestMethod.POST)
	public String addNV(ModelMap model, HttpServletRequest request) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		String hql = "from VaiTro where tenCV = '" + request.getParameter("droplistcv") + "'";
		Query query = session.createQuery(hql);
		List<VaiTro> arrays = query.list();
		System.out.println(arrays.get(0));
		try {
			TaiKhoan tk = new TaiKhoan();
			tk.setUserName(request.getParameter("us"));
			tk.setMatKhau(request.getParameter("pw"));
			tk.setTrangThai(true);
			tk.setChucVu(arrays.get(0));
			NhanVien nv = new NhanVien();
			nv.setMaNV(request.getParameter("ma"));
			nv.setHoNV(request.getParameter("honv"));
			nv.setTenNV(request.getParameter("tennv"));
			nv.setCccd(request.getParameter("cccd"));
			nv.setSdt(request.getParameter("sdt"));
			nv.setTk(tk);
			session.save(tk);
			session.save(nv);
			System.out.println("thanh cong");
			transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
			System.out.println("failed");
		} finally {
			session.close();
		}
		return "redirect: /CNPM/admin/danhsach.htm";
	}

	@RequestMapping(value = { "admin/back" })
	public String back() {
		return "redirect: /CNPM/admin/danhsach.htm";
	}

	@RequestMapping(value = "admin/danhsach/{manv}", params = "update", method = RequestMethod.POST)
	public String update(@PathVariable("manv") String manv, HttpServletRequest request) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			NhanVien oldnv = (NhanVien) session.load(NhanVien.class, manv);
			oldnv.setHoNV(request.getParameter("honv"));
			oldnv.setTenNV(request.getParameter("tennv"));
			oldnv.setCccd(request.getParameter("cccd"));
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
			Date date = formatter.parse(request.getParameter("ngaysinh"));
			oldnv.setNgaySinh(date);
			oldnv.setPhai(request.getParameter("phai"));
			oldnv.setSdt(request.getParameter("sdt"));
			session.update(oldnv);
			System.out.println("thanhcong");
			transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
		}
		return "redirect: /CNPM/admin/danhsach.htm";
	}
}
