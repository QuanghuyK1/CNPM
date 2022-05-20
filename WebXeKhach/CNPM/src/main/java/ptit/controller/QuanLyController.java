package ptit.controller;

import java.util.List;
import ptit.entity.*;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QuanLyController {
	@Autowired
	SessionFactory factory;
	
	
	public List<ChuyenXe> dscx(){
		Session session = factory.getCurrentSession();
		String hql = "from ChuyenXe";
		Query query = session.createQuery(hql);
		List<ChuyenXe> list = query.list();
		return list;
	}
	@RequestMapping(value = "/QL_TrangChu", method = RequestMethod.GET)
	public String TrangChu() {
		return "QuanLy/trangchu";
	}
	@Transactional
	@RequestMapping("/QL_ChuyenXe")
	public String ChuyenXe(ModelMap model) {
		List<ChuyenXe> list = dscx();
		model.addAttribute("list", list);
		return "QuanLy/chuyenxe";
	}
	@RequestMapping(value = "/QL_ChuyenXe/info", method = RequestMethod.GET)
	public String ChuyenXeInsert(ModelMap model) {
		model.addAttribute("idModal", "modalShow");
		return "redirect:/QL_ChuyenXe.html";
	}
	@RequestMapping("/QL_TuyenXe")
	public String TuyenXe() {
		return "QuanLy/tuyenxe";
	}
	@RequestMapping("/QL_NhanVien")
	public String NhanVien() {
		return "QuanLy/nhanvien";
	}
}