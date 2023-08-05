package com.kapple.service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.kapple.domain.ModelVO;
import com.kapple.domain.SaleVO;
import com.kapple.dto.PeriodRequestDTO;

public interface ServiceMK {

	public List<SaleVO> getTotalSalesByPeriod(PeriodRequestDTO period);
	public List<SaleVO> getTotalSalesByPeriod(LocalDate startDate, LocalDate endDate);
	
	
//	public List<SaleVO> overviewSale();
//	public List<ModelVO> overviewModel();
//	public void overviewOrder();
//	public HashMap<String, String> getTotalSales();



}
