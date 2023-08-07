package com.kapple.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kapple.domain.SaleVO;
import com.kapple.dto.RequestDTO;
import com.kapple.mapper.MapperMK;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ServiceMKImpl implements ServiceMK {

	@Autowired
	private MapperMK statisticsMapper;

	
	@Override
	public List<HashMap<String, Object>> getSupplyDependence(RequestDTO period) {
		List<HashMap<String, Object>> resultHashMap = 
				statisticsMapper.getSupplyDependence(period.getStartDate(), period.getEndDate());
		return resultHashMap;
	}
	
	@Override
	public Long getTotaReturnQtyByPeriod(RequestDTO period) {
		Long result = 
				statisticsMapper.getTotalReturnQtyByPeriod(period.getStartDate(), period.getEndDate());
		return result;
	}
	
	@Override
	public List<HashMap<String, Object>> getSaleQtyListByPeriodWithLank(RequestDTO period) {
		List<HashMap<String, Object>> resultHashMap = 
				statisticsMapper.getSaleQtyListByPeriodWithLank(period.getStartDate(), period.getEndDate());
		return resultHashMap;
	}

	@Override // 제품 총 생산량 (기간별)
	public Long getTotalProduceQtyByPeriod(RequestDTO period) {
		Long result = statisticsMapper.getTotalProduceQtyByPeriod(period.getStartDate(), period.getEndDate());
		return result;
	}
	
	@Override // 부품 구매 총 수량 (기간별)
	public Long getTotalOrderQtyByPeriod(RequestDTO period) {
		Long result = statisticsMapper.getTotalOrderQtyByPeriod(period.getStartDate(), period.getEndDate());
		return result;
	}

	@Override // 제품 총 판매량 (기간별)
	public Long getTotalSalesQtyByPeriod(RequestDTO period) {
		Long result = statisticsMapper.getTotalSalesQtyByPeriod(period.getStartDate(), period.getEndDate());
		return result;
	}

	@Override // 제품 총 판매금액 (직전 기간과 비교)
	public List<Long> getTotalSalesAmountByPeriod(RequestDTO period) {
		log.info("getTotalSalesAmountByPeriod===");
		List<Long> result = new ArrayList<Long>();
		result.add(statisticsMapper.getTotalSalesAmountByPeriod(period.getStartDate(), period.getEndDate()));
//		log.info(getPrecendingPeriod(period).getStartDate()+"///"+getPrecendingPeriod(period).getEndDate());
//		result.add(statisticsMapper.getTotalSalesAmountByPeriod(
//				getPrecendingPeriod(period).getStartDate(), getPrecendingPeriod(period).getEndDate()));
//		log.info(getPrecendingPeriod(period).getStartDate()+"///"+getPrecendingPeriod(period).getEndDate());
		return result;
	}

	@Override // 제품 판매 리스트 (기간별)
	public List<SaleVO> getSaleListByPeriod(RequestDTO period) {
		log.info("getSaleListByPeriod===");
		List<SaleVO> saleList = statisticsMapper.getSaleListByPeriod(period.getStartDate(), period.getEndDate());
		return saleList;
	}

	@Override // 제품 판매 리스트 (전체)
	public List<SaleVO> getSaleList() {
		List<SaleVO> saleList = statisticsMapper.getSaleList();
		return saleList;
	}
	
	// 직전 단위기간 구하는 메소드
	public RequestDTO getPrecendingPeriod(RequestDTO period) {
		log.info("getPrecendingPeriod===");
		log.info(period);
		
		Calendar startCal = Calendar.getInstance();
		Calendar endCal = Calendar.getInstance();
		startCal.setTime(period.getStartDate());
		endCal.setTime(period.getEndDate());

		String on = period.getOn();
		log.info("on==="+on);
		
		switch (on) {
		case "YoY": //YoY
			log.info("YoY");
			startCal.add(Calendar.YEAR, -1);
			endCal.add(Calendar.YEAR, -1);
			break;
		case "HoH"://HoH
			log.info("HoH");
			startCal.add(Calendar.MONTH, -6);
			endCal.add(Calendar.MONTH, -6);
			break;
		case "QoQ": //QoQ
			log.info("QoQ");
			startCal.add(Calendar.MONTH, -3);
			endCal.add(Calendar.MONTH, -3);
			break;
		case "MoM": //MoM
			log.info("MoM");
			startCal.add(Calendar.MONTH, -1);
			endCal.add(Calendar.MONTH, -1);
			break;
		default:
			log.info("default===");
			startCal.add(Calendar.YEAR, -1);
			endCal.add(Calendar.YEAR, -1);
			break;
		}
		period.setStartDate(new Date(startCal.getTimeInMillis()));
		period.setEndDate(new Date(endCal.getTimeInMillis()));
		log.info("getPrecendingPeriod===");
		log.info(period);
		return period;
	}




}
