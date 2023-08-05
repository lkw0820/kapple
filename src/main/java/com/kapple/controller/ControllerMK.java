package com.kapple.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kapple.domain.SaleVO;
import com.kapple.dto.PeriodRequestDTO;
import com.kapple.service.ServiceMK;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class ControllerMK {
	
	//	@Autowired
	private ServiceMK statisticsService;

//	@GetMapping("/statistics-overview")
//	public String overview(Model model) {
//		return "/statistics-overview";
//	}

	@GetMapping("/statistics-overview")
    public ResponseEntity<List<SaleVO>> getStatisticsByPeriod(
            @RequestParam("startDate") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate startDate,
            @RequestParam("endDate") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate endDate) {
        try {
            log.info("=====================================");
            log.info("START: " + startDate + ", END: " + endDate);

            List<SaleVO> saleList = statisticsService.getTotalSalesByPeriod(startDate, endDate);
            log.info("=====================================");
            log.info(saleList);

            return ResponseEntity.ok(saleList);
        } catch (Exception e) {
            log.error("에러가 발생했습니다.", e);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }
	
	@PostMapping("/statistics-overview")
	@ResponseBody 
	public ResponseEntity<Map<String, Object>>  requestByPeriod(@RequestBody PeriodRequestDTO period) {
        try {
        	log.info("=====================================");
        	log.info("Before - START: "+period.getStartDate() + ", END: "+period.getEndDate());
        	
//    	    LocalDate startLocalDate = LocalDate.of(2022, 1, 1);
//    	    Date startDate = Date.valueOf(startLocalDate);
//    	    period.setStartDate(startDate);

//    	    LocalDate endLocalDate = LocalDate.of(2023, 1, 1);
//    	    Date endDate = Date.valueOf(endLocalDate);
//    	    period.setEndDate(endDate);
    	    
//        	log.info("After - START: "+period.getStartDate() + ", END: "+period.getEndDate());
    	    
        	List<SaleVO> saleList = statisticsService.getTotalSalesByPeriod(period);
        	//log.info("=====================================");
        	//log.info(saleList);
        	
        	HashMap<String, Object> response = new HashMap<String, Object>();
        	response.put("saleList", saleList);
        	return ResponseEntity.ok(response);
        	
        } catch (Exception e) {
        	log.error("requestByPeriod에서 에러: "+e);
        	return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(Collections.singletonMap("errer", "Error occured"));
        }
    }
	
//	@PostMapping("/statistics-overview")
//	@ResponseBody 
//	public HashMap<String, Object> requestByPeriod(@RequestBody PeriodRequestDTO period) {
//        try {
//        	log.info("=====================================");
//        	log.info("START: "+period.getStartDate() + ", END: "+period.getEndDate());
//        	
//        	List<SaleVO> saleList = statisticsService.getTotalSalesByPeriod(period);
//        	log.info("=====================================");
//        	log.info(saleList);
//        	
//        	HashMap<String, Object> response = new HashMap<String, Object>();
//        		response.put("saleList", saleList);
//        		return response;
//        } catch (Exception e) {
//        	HashMap<String, Object> errorResponse = new HashMap<String, Object>();
//        	errorResponse.put("에러가 발생했습니다.", HttpStatus.INTERNAL_SERVER_ERROR);
//        	return errorResponse;
//        }
//    }

//	@PostMapping("/statistics-overview")
//	@ResponseBody 
//	public ResponseEntity<Map<String, Object>> getStatisticsOverview(@RequestBody PeriodRequestDTO period) {
//        try {
//            List<SaleVO> saleList = statisticsService.getTotalSaleListByPeriod(period);
//            Map<String, Object> response = new HashMap<>();
//            response.put("data", saleList);
//            return ResponseEntity.ok(response);
//        } catch (Exception e) {
//            e.printStackTrace();
//            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
//        }
//    }	
	
//	@PostMapping("/statistics-overview")
//	@ResponseBody 
//	public ResponseEntity<List<SaleVO>> requestByDate(@RequestBody PeriodRequestDTO period) {
//        try {
//        	 List<SaleVO> saleList = statisticsService.getTotalSalesByPeriod(period);
//            return new ResponseEntity<>(saleList, HttpStatus.OK);
//        } catch (Exception e) {
//            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
//        }
//    }
	
//	@GetMapping("/statistics-overview")
//	public String overview(Model model) {
//		log.info("overview=================================");
//		// 구매요약 
//		// statisticsService.overviewOrder();
//		// 판매요약
////		List<SaleVO> saleList = statisticsService.overviewSale();
////		log.info("saleList==============================\n"+saleList);
////		HashMap<String, String> totalSales = statisticsService.getTotalSales();
//
////		log.info("date : " +date);
////		model.addAttribute("data1",  2000);
//		return "/statistics-overview";
//	}
//	@GetMapping("/ex07")
//	public @ResponseBody SampleDTO ex07() { // @ResponseBody는 Jackson 라이브러리를 활용한 것
//		log.info("/ex07...........");
//		SampleDTO dto = new SampleDTO();
//		dto.setAge(10);
//		dto.setName("홍길동");
//
//		return dto;
//	}
//	
	
	
//	
////	@GetMapping("/statistics-purchases")
////	public void purchase() {
//////		List<SaleVO> saleList = statisticsService.overviewSale();
////		log.info("purchase=================================");
////	}
////	
////	@GetMapping("/statistics-sales")
////	public Model sales(Model model) {
//////		log.info("sales=================================");		
//////		HashMap<String, String> totalSales = statisticsService.getTotalSales();
//////		model.addAttribute(totalSales);
////		
////		return model;
////	}
}
