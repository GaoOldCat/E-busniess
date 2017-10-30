package com.atguigu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SpuController {

	@RequestMapping("goto_spu")
	public String goto_spu() {
		return "manager_spu";
	}

}
