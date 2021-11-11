package com.douzone.ch08.controller.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.douzone.ch08.controller.dto.XmlResult;
import com.douzone.ch08.controller.vo.GuestbookVo;


@Controller
@RequestMapping("/api")
public class ApiController {
	
	@ResponseBody
	@RequestMapping("/text")
	public String text() { 
		return "Text 데이터입니당";
	}

	@ResponseBody
	@RequestMapping("/html")
	public String html() {
		return "<h1>AJAX 연습</h1><p>HTML 데이터</p>";
	}

	@ResponseBody
	@RequestMapping("/xml")
	public Object xml() {
		
		XmlResult.GuestbookVo vo = new XmlResult.GuestbookVo();
		vo.setName("루피");
		vo.setNo(1L);
		vo.setMessage("군침이..싹...도노..");
		
		return XmlResult.success(vo);
	}

}
