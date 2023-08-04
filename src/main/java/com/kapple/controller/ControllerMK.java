package com.kapple.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kapple.domain.SaleVO;
import com.kapple.service.ServiceMK;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class ControllerMK {
	
	//	@Autowired
	private ServiceMK statisticsService;

	@GetMapping("/statistics")
	public String statistics() {
		return "statistics-overview";
	} // return 위에 주석 쓰면 왜인지 갑자기 에러남.
	
	@GetMapping("/statistics-overview")
	public void overview() {
		log.info("overview=================================");
		// 구매요약 
		// statisticsService.overviewOrder();
		// 판매요약
		List<SaleVO> saleList = statisticsService.overviewSale();
		log.info("saleList==============================\n"+saleList);
		
	}
	
	@GetMapping("/statistics-purchases")
	public void purchase() {
		log.info("purchase=================================");
	}
	
	@GetMapping("/statistics-sales")
	public void sales() {
		log.info("sales=================================");
	}
}
