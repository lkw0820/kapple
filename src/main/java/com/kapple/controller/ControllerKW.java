package com.kapple.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kapple.domain.SupplierDetailVO;
import com.kapple.service.ServiceKW;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
//@RequestMapping("")
public class ControllerKW {

	@Autowired
	private ServiceKW service;
	
	@PostMapping("/comparsionSupplier") 
	public void comparsionSupplier(@RequestParam("compo_name") String compo_name, Model model) {
		log.info("supplierList...........");
		model.addAttribute("sList",service.supplierListService(compo_name));
	}
	
	@GetMapping("/modal/{suppl_no}")
	public ResponseEntity<SupplierDetailVO> supplierDetail(@PathVariable("suppl_no") String suppl_no) {
		log.info("supplier detail..........");
		return new ResponseEntity<SupplierDetailVO>(service.supplierDetail(suppl_no),HttpStatus.OK);
	}
}
