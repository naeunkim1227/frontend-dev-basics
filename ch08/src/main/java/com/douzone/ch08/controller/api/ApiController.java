package com.douzone.ch08.controller.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.douzone.ch08.controller.dto.JsonResult;
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
		vo.setMessage("여기서 가져옵니다");
		
		return XmlResult.success(vo);
	}

	@ResponseBody
	@RequestMapping(value = "/json", method = RequestMethod.GET)
	public Object json() {
		
		GuestbookVo vo = new GuestbookVo();
		vo.setName("나는 나은");
		vo.setNo(1L);
		vo.setMessage("우하하 나는 나은이다 우하하하하하하하");
		
		return JsonResult.success(vo);
	}

	@ResponseBody
	@RequestMapping(value = "/post01", method = RequestMethod.POST)
	public Object post01(GuestbookVo vo) {
		
		//service > repository : db insert 성공한 후
		vo.setNo(1L);
		vo.setPassword("");
		
		
		return JsonResult.success(vo);
	}
	
	@ResponseBody
	@RequestMapping(value = "/post02", method = RequestMethod.POST)
	public Object post02(@RequestBody GuestbookVo vo) {
		//json포맷으로 오는 것을 데이터로 바꾼다. 
		System.out.println(vo.getName());
		vo.setNo(1L);
		vo.setPassword("");
		
		return JsonResult.success(vo);
	}

}
