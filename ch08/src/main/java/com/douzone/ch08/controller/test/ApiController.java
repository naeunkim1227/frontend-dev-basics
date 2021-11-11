package com.douzone.ch08.controller.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller("apiTestController")
@RequestMapping("/test")
public class ApiController {

	@RequestMapping("/text")
	public String text() {
		return "text";
	}

	@RequestMapping("/html")
	public String html() {
		return "html";
	}

	@RequestMapping("/xml")
	public String xml() {
		return "xml";
	}

	
}
