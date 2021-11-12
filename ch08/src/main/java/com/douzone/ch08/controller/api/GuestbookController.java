package com.douzone.ch08.controller.api;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.douzone.ch08.controller.dto.JsonResult;
import com.douzone.ch08.controller.vo.GuestbookVo;

@Controller
@RequestMapping("/api/guestbook")
public class GuestbookController {
	
	@ResponseBody
	@RequestMapping("/add")
	public JsonResult ex1(@RequestBody GuestbookVo vo) {
		//guestbookservice.addMessage(vo)를 사용해서 등록작업
		vo.setNo(1L);
		vo.setPassword("");
		System.out.println("출력하나 oo 출력하");
		
		
		return JsonResult.success(vo);
	}

	
	//read
	@ResponseBody
	@RequestMapping("/list")
	public JsonResult ex2(@RequestParam(value = "sn", required=true, defaultValue = "-1") Long no) {
		//result = guestbookservice.findall(no)를 사용해서 리스트 가져오기
		List<GuestbookVo> list = new ArrayList<>();
		GuestbookVo vo = new GuestbookVo();
		vo.setNo(1L);
		vo.setMessage("메세지1");
		vo.setName("둘리1");
		list.add(vo);
		
		vo = new GuestbookVo();
		vo.setNo(2L);
		vo.setMessage("메세지2");
		vo.setName("둘리2");
		list.add(vo);
		
		vo = new GuestbookVo();
		vo.setNo(3L);
		vo.setMessage("메세지3");
		vo.setName("둘리3");
		list.add(vo);
		
		vo = new GuestbookVo();
		vo.setNo(4L);
		vo.setMessage("메세지4");
		vo.setName("둘리4");
		list.add(vo);
		
		vo = new GuestbookVo();
		vo.setNo(5L);
		vo.setMessage("메세지5");
		vo.setName("둘리5");
		list.add(vo);
		
		return JsonResult.success(list);
	}

	
	
	@ResponseBody
	@RequestMapping("/delete/{no}")
	public JsonResult ex3(@PathVariable("no") Long no, String password) {
		//result = guestbookservice.deleteMessage(no,password)를 사용해서 등록작업
		
		Long data = 0L;
		//1. 삭제가 안 된 경우
		data = -1L;
		
		//2.삭제가 된경우
		data = no;
		
		return JsonResult.success(data);
	}
	
}
