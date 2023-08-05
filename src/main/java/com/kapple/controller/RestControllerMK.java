//package com.kapple.controller;
//
//import java.util.HashMap;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.kapple.domain.SaleVO;
//import com.kapple.dto.PeriodRequestDTO;
//import com.kapple.request.addSupplierRequest;
//import com.kapple.service.ServiceMK;
//
//import lombok.extern.log4j.Log4j;
//
//@Log4j
//@RestController
//public class RestControllerMK {
//
//	@Autowired
//	private ServiceMK  statisticsService;
//	
//
//	
//	@PostMapping("/statistics-overview")
//	public ResponseEntity<List<SaleVO>> requestByDate(@RequestBody PeriodRequestDTO period) { //나중에 리퀘바디지우기
//        try {
//        	 List<SaleVO> saleList = statisticsService.getTotalSalesByPeriod(period);
//        	
//        	// 이부분 작성해줘
//        	
//            return new ResponseEntity<>(saleList, HttpStatus.OK);
//        } catch (Exception e) {
//            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
//        }
//    }
//	
//}
