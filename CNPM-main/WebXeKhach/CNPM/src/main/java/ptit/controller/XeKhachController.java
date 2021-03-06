package ptit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

import ptit.entity.ChuyenXe;
import ptit.entity.LoaiXe;
import ptit.entity.XeKhach;

@Controller
@RequestMapping("/admin/")
public class XeKhachController {
	@Autowired
	SessionFactory factory;
	@Transactional
	@RequestMapping("xekhach")
	public String danhsach(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from XeKhach";
		Query query = session.createQuery(hql);
		List<XeKhach> list = query.list();
		model.addAttribute("list", list);
		return "xekhach/danhsach";
	}
	@RequestMapping("back2")
	public String back() {
		return "redirect: /CNPM/admin/xekhach.htm"; 
	}
	@Transactional
	@RequestMapping(value = "xekhach", params = "Insert", method = RequestMethod.GET)
	public String insert(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from LoaiXe";
		Query query = session.createQuery(hql);
		List<LoaiXe> list = query.list();
		model.addAttribute("xe", new XeKhach());
		model.addAttribute("list", list);
		return "xekhach/FormInsert";
	}
	@RequestMapping(value = "xekhach", params = "Insert", method = RequestMethod.POST)
	public String insert(@ModelAttribute("xe") XeKhach xe ,HttpServletRequest request) {
		Session session = factory.openSession();
		Transaction  transaction = session.beginTransaction();
		try {
			LoaiXe lx = (LoaiXe) session.load(LoaiXe.class, request.getParameter("listlx"));
			xe.setLx(lx);
			xe.setTrangThai(true);
			session.save(xe);
			transaction.commit();
		}catch(Exception e) {
			transaction.rollback();
		}
		return "redirect: /CNPM/admin/xekhach.htm";
	}
	@RequestMapping(value = "xekhach/{bienxe}", params = "delxe", method = RequestMethod.GET)
	public String del() {
		return "xekhach/xoa";
	}
	@RequestMapping(value = "xekhach{bienxe}", params = "delxe", method = RequestMethod.POST)
	public String del(@PathVariable("bienxe") String bienxe) {
		Session session = factory.openSession();
		Transaction  transaction = session.beginTransaction();
		try {
			XeKhach xe = (XeKhach) session.load(XeKhach.class, bienxe);
			xe.setTrangThai(false);
			session.update(xe);
			transaction.commit();
		}catch(Exception e) {
			transaction.rollback();
		} 
		return "redirect: /CNPM/admin/xekhach.htm";
	}
}
