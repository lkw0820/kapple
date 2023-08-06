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

import com.kapple.dto.PeriodDTO;
import com.kapple.dto.PeriodRequestDTO;
import com.kapple.service.ServiceMK;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class ControllerMK {
	
	@Autowired
	private ServiceMK statisticsService;

	@GetMapping("/statistics-overview")
	public String overview(Model model) {
		return "/statistics-overview";
	}
	
	@PostMapping("/statistics-overview")
	@ResponseBody 
	public ResponseEntity<Map<String, Object>>  requestByPeriod (@RequestBody PeriodRequestDTO period) {
		//@RequestParam("startDate") String startDate, @RequestParam("endDate") String endDate) {
    	log.info("requestByPeriod=====================================");
    	log.info("START: "+period.getStartDate() + ", END: "+period.getEndDate());  // 보내고 받기만.
    	
    	HashMap<String, Object> response = new HashMap<String, Object>();
        try {
 //       	PeriodRequestDTO prdto = new PeriodRequestDTO();
//        	prdto.setStartDate(new Date(2022,1,1));
//        	prdto.setEndDate(new Date(2023,1,1));

//        	LocalDate startLocalDate = LocalDate.of(2022, 1, 1);
//		    Date startDate = Date.valueOf(startLocalDate);
//		    prdto.setStartDate(startDate);
//	
//		    LocalDate endLocalDate = LocalDate.of(2023, 1, 1);
//		    Date endDate = Date.valueOf(endLocalDate);
//		    prdto.setEndDate(endDate);
        	
           	//response.put("saleList", "Hellow");
           	//response.put("saleList", statisticsService.getSaleList());
           	response.put("saleListByPeriod", statisticsService.getSaleListByPeriod(period));
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
