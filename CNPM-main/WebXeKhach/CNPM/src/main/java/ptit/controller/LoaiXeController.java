package ptit.controller;

import java.util.List;

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

import ptit.entity.ChuyenXe;
import ptit.entity.LoaiXe;
import ptit.entity.XeKhach;

@Controller
@RequestMapping("/admin/")
public class LoaiXeController {
	@Autowired
	SessionFactory factory;
	
	@Transactional
	@RequestMapping("loaixe")
	public String showLx(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from LoaiXe";
		Query query = session.createQuery(hql);
		List<LoaiXe> arrays = query.list();
		model.addAttribute("list", arrays);
		return "LoaiXe/danhsach";
	}
	
	@Transactional
	@RequestMapping(value = "loaixe/{maLX}")
	public String xkCungLoai(@PathVariable("maLX") String loaixe, ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "select xk.bienXe, xk.lx.maLX , xk.seat, xk.trangThai from XeKhach xk where xk.lx.maLX = '" + loaixe + "'";
		Query query = session.createQuery(hql);
		List<Object[]> arrays = query.list();
		model.addAttribute("list", arrays);
		return "LoaiXe/xekhach";
	}
//	@RequestMapping(value = "loaixe/{maLX}", params = "delLX", method = RequestMethod.POST)
//	public String XoaLoaiXe(@PathVariable("maLX") String loaixe) {
//		
//	}
	@RequestMapping(value = "loaixe", params = "Insert", method = RequestMethod.GET)
	public String ThemLoaiXe() {
		return "LoaiXe/addlx";
	}
	@RequestMapping(value = {"back1","loaixe/back1"})
	public String back(ModelMap model) {
		return "redirect: /CNPM/admin/loaixe.htm";
	}
	@RequestMapping(value = "loaixe", params = "Insert", method = RequestMethod.POST)
	public String ThemLoaiXe(HttpServletRequest request) {
		Session session = factory.openSession();
		Transaction  transaction = session.beginTransaction();
		try {
			LoaiXe lx = new LoaiXe();
			lx.setMaLX(request.getParameter("malx"));
			lx.setTenLX(request.getParameter("tenlx"));
			lx.setTrangthai(true);
			session.save(lx);
			transaction.commit();
		}catch(Exception e) {
			transaction.rollback();
		}finally {
			session.close();
		}
		return "redirect: /CNPM/admin/loaixe.htm";
	}
	@RequestMapping(value = "loaixe/{malx}", params= "update", method = RequestMethod.GET)
	public String info(@PathVariable("malx") String malx, ModelMap model) {
		Session session = factory.openSession();
		LoaiXe lx = (LoaiXe) session.load(LoaiXe.class, malx);
		model.addAttribute("loai", lx);
		return "LoaiXe/info";
	}
	@RequestMapping(value = "loaixe/{malx}", params= "update", method = RequestMethod.POST)
	public String Updateinfo(@PathVariable("malx") String malx, HttpServletRequest request) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			LoaiXe lx = (LoaiXe) session.load(LoaiXe.class, malx);
			lx.setTenLX(request.getParameter("tenlx"));
			session.update(lx);
			transaction.commit();
			System.out.println("tha??nh c??ng");
		}catch(Exception e) {
			transaction.rollback();
		}
		return "redirect: /CNPM/admin/loaixe.htm";
	}
	@RequestMapping(value = "loaixe/{maLX}", params = "Insert", method = RequestMethod.GET)
	public String AddXeTheoLoai(ModelMap model, @PathVariable("maLX") String malx) {
		Session session = factory.openSession();
		LoaiXe lx = (LoaiXe) session.load(LoaiXe.class,malx);
		String hql = "From ChuyenXe";
		Query query = session.createQuery(hql);
		List<ChuyenXe> list = query.list();
		XeKhach xk = new XeKhach();
		xk.setLx(lx);
		model.addAttribute("xe", new XeKhach());
		model.addAttribute("lx", lx);
		model.addAttribute("list", list);
		return "LoaiXe/insertxkcungloai";
	}
	@RequestMapping(value = "loaixe/{maLX}", params = "Insert", method = RequestMethod.POST)
	public String AddXeTheoLoai(@PathVariable("maLX") String malx, @ModelAttribute("xe") XeKhach xe, HttpServletRequest request) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			LoaiXe lx = (LoaiXe) session.load(LoaiXe.class, malx);
			xe.setTrangThai(true);
			xe.setLx(lx);
			session.save(xe);
			transaction.commit();
		}catch(Exception e) {
			transaction.rollback();
		}
		
		return "redirect: /CNPM/admin/loaixe/{maLX}.htm";
	}
}
