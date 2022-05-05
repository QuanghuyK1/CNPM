package ptit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class oo {
	@RequestMapping("welcome")
	public String wel() {
		return "welcome";
	}
}
