package com.kapple.service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kapple.domain.ModelVO;
import com.kapple.domain.SaleVO;
import com.kapple.dto.PeriodRequestDTO;
import com.kapple.mapper.MapperMK;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ServiceMKImpl implements ServiceMK {

	@Autowired
	private MapperMK statisticsMapper;

	@Override
	public List<SaleVO> getTotalSalesByPeriod(PeriodRequestDTO period) {
		log.info("서비스1=====================================");
		List<SaleVO> saleList  = statisticsMapper.getSaleListByPeriod(period.getStartDate(), period.getEndDate());
    	log.info(saleList);
		return saleList;
	}

	@Override
	public List<SaleVO> getTotalSalesByPeriod(LocalDate start, LocalDate end) {
		log.info("서비스2=====================================");
		List<SaleVO> saleList  = statisticsMapper.getSaleListByPeriod(start, end);
    	log.info(saleList);
		return saleList;
	}
	
	
//	totalSales.put("TOTAL_SALES_AMOUNT", "테스트");
//	totalSales.put("TOTAL_SALES_VARIANCE_RATE", "");
//	totalSales.put("TOTAL_SALES_START_DATE", period.getStartDate());
//	totalSales.put("TOTAL_SALES_END_DATE",  period.getStartDate());
//	totalSales.put("TOTAL_SALES_PERIOD", "");
	
	
//	@Override
//	public HashMap<String, String> getTotalSales() { 
//		log.info("1=================================");
//		List<SaleVO> saleList = statisticsMapper.getSaleList();
//		log.info("2=================================");
//		
//		// total_sale_amount 계산
////        Long totalSaleAmount = 0L;
////        for (SaleVO sale : saleList) {
////            totalSaleAmount += sale.getPrice() * sale.getQuantity();
////        }
//		
//		HashMap<String, String> totalSales = new HashMap<String, String>();
//		log.info("3=================================");
//		totalSales.put("TOTAL_SALES_AMOUNT", "테스트");
//		log.info("4=================================");
////		totalSales.put("TOTAL_SALES_VARIANCE_RATE", "");
//		totalSales.put("TOTAL_SALES_START_DATE", "");
//		totalSales.put("TOTAL_SALES_END_DATE", "");
////		totalSales.put("TOTAL_SALES_PERIOD", "");
//		
//		return totalSales;
//	}
//	
//	@Override
//	public List<SaleVO> getTotalSalesByPeriod(PeriodRequestDTO period) {
//    	log.info("왜 안나와=====================================");
//		/* List<SaleVO> saleList  = statisticsMapper.getSaleListByPeriod(period.getStartDate(), period.getEndDate()); */
//    	Long amount = getTotalSalesAmountByPeriod(period);
////    	log.info(saleList);
//		return saleList;
//	}
//	
//	@Override
//	public List<SaleVO> overviewSale() {
//		List<SaleVO> saleList = statisticsMapper.getSaleList();
//		return saleList;
//	}
//
//	@Override
//	public List<ModelVO> overviewModel() {
//		List<ModelVO> modelList = statisticsMapper.getModelList();
//		return modelList;
//	}
}
