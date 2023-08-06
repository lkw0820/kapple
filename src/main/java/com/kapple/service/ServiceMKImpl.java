package com.kapple.service;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
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
	
	// 총 부품 구매 수량 ============================================
	@Override
	public Long getTotalOrderQtyByPeriod(PeriodRequestDTO period) {
		Long totalOrderQty = getTotalOrderQtyByPeriod(period);
		return null;
	}

	@Override
	public List<SaleVO> getSaleList() { // 제품 판매 리스트
		List<SaleVO> saleList = statisticsMapper.getSaleList();
		return saleList;
	}
	
	@Override
	public List<SaleVO> getSaleListByPeriod(PeriodRequestDTO period) {
		log.debug("서비스1=====================================");
    	log.debug("Before - START: "+period.getStartDate() + ", END: "+period.getEndDate());
//		LocalDate startLocalDate = period.getStartDate().toInstant()
//                .atZone(ZoneId.systemDefault())
//                .toLocalDate(); //
//		LocalDate endLocalDate = period.getEndDate().toInstant()
//                .atZone(ZoneId.systemDefault())
//                .toLocalDate();
//		
//		Date startDate = Date.valueOf(startLocalDate);
//	    Date endDate = Date.valueOf(endLocalDate);
		
		
	    //LocalDate startLocalDate = LocalDate.of(2022, 1, 1);
	    Date startDate = Date.valueOf(period.getStartDate().toLocalDate());
	    period.setStartDate(startDate);

	    //LocalDate endLocalDate = LocalDate.of(2023, 1, 1);
	    Date endDate = Date.valueOf(period.getEndDate().toLocalDate());
	    period.setEndDate(endDate);
	    
		List<SaleVO> saleList  = statisticsMapper.getSaleListByPeriod(period.getStartDate(), period.getEndDate());
    	//List<SaleVO> saleList  = null;
    	//log.debug(saleList);
		return saleList;
	}

	@Override
	public List<SaleVO> getSaleListByPeriod(LocalDate startLocalDate, LocalDate endLocalDate) {
		log.debug("서비스2=====================================");
		Date startDate = Date.valueOf(startLocalDate);
	    Date endDate = Date.valueOf(endLocalDate);
		List<SaleVO> saleList  = statisticsMapper.getSaleListByPeriod(startDate, endDate);
    	log.debug(saleList);
		return saleList;
	}

	@Override
	public Long getTotalSalesAmountByPeriod(PeriodRequestDTO period) {
		Long result;
    	log.info("getTotalSalesAmountByPeriod=====================================");
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String strStart = format.format(period.getStartDate());
        String strEnd = format.format(period.getEndDate());
        
        String[] stringsStart = strStart.split("-");
        String[] stringsEnd = strEnd.split("-");
        log.debug("start : "+stringsStart+", end : "+stringsEnd);
        
	    LocalDate startLocalDate = LocalDate.of(
	    		Integer.parseInt(stringsStart[0]), Integer.parseInt(stringsStart[1]), Integer.parseInt(stringsStart[2]));
	    Date startDate = Date.valueOf(startLocalDate);
	    period.setStartDate(startDate);

	    LocalDate endLocalDate = LocalDate.of(
	    		Integer.parseInt(stringsEnd[0]), Integer.parseInt(stringsEnd[1]), Integer.parseInt(stringsEnd[2]));
	    Date endDate = Date.valueOf(endLocalDate);
	    period.setEndDate(endDate);
//	    try {
	    	result = statisticsMapper.getSalesAmountByPeriod(period.getStartDate(), period.getEndDate());
//	    } catch (Exception e) {
//	    	e.printStackTrace();
//	    } finally {
//			
//		}
		return result;
	}

	@Override
	public Long getTotalSalesAmountByPeriod(LocalDate startDate, LocalDate endDate) {
		// TODO Auto-generated method stub
		return null;
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
