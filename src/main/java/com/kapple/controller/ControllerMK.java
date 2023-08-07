package com.kapple.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonArray;
import com.kapple.dto.RequestDTO;
import com.kapple.service.ServiceMK;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class ControllerMK {
	
	@Autowired
	private ServiceMK statisticsService;

	@GetMapping("/statistics-overview")
	public void overview(Model model) throws JsonProcessingException {
		RequestDTO period = new RequestDTO();
		period.setStartDate(Date.valueOf(LocalDate.of(2022, 8, 7)));
		period.setEndDate(Date.valueOf(LocalDate.of(2023, 8, 7))); 
		log.info("START DATE: "+period.getStartDate() + ", END DATE: "+period.getEndDate());
		log.info(statisticsService.getTotalOrderQtyByPeriod(period));
		
		
		String json = new ObjectMapper().writeValueAsString(statisticsService.getSaleQtyGroupByDate(period));
		model.addAttribute(json);
		
//		model.addAttribute("orderQ", statisticsService.getTotalOrderQtyByPeriod(period));
//		model.addAttribute("produceQ", statisticsService.getTotalProduceQtyByPeriod(period));
//		model.addAttribute("saleQ", statisticsService.getTotalSalesQtyByPeriod(period));
//		model.addAttribute("returnQ", statisticsService.getTotaReturnQtyByPeriod(period));
//		//model.addAttribute("salesAmount", statisticsService.getTotalSalesAmountByPeriod(period));
//		model.addAttribute("saleListByProduct", statisticsService.getSaleQtyListByPeriodWithLank(period));
//		model.addAttribute("supplierListByCompoDep", statisticsService.getSupplyDependence(period));
//		model.addAttribute("saleQByDate", statisticsService.getSaleQtyGroupByDate(period));
		// 현재 판매 예측 정확도 기능 없음
		// 현재 부품 회전율 통계 기능 없음
	}
	
	@PostMapping("/statistics-overview")
	@ResponseBody 
	public ResponseEntity<Map<String, Object>>  requestByPeriod (@RequestBody RequestDTO period) {
		//@RequestParam("startDate") String startDate, @RequestParam("endDate") String endDate) {	
    	log.info("requestByPeriod===");
    	log.info("START DATE: "+period.getStartDate() + ", END DATE: "+period.getEndDate());
    	
    	HashMap<String, Object> response = new HashMap<String, Object>();
    	
        try {        	
           //response.put("saleListByPeriod", statisticsService.getSaleListByPeriod(period));
           	response.put("saleQtyByDates", statisticsService.getSaleQtyGroupByDate(period));
        	return ResponseEntity.ok(response);
        } catch (Exception e) {
        	log.error("requestByPeriod에서 에러: "+e.getMessage());
        	e.printStackTrace();
        	return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
        			.body(Collections.singletonMap("errer", "Error occured"));
        } finally {
        	log.info("response: "+response);
		}
        
    }
}
