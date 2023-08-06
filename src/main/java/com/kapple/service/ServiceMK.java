package com.kapple.service;

import java.time.LocalDate;
import java.util.List;

import com.kapple.domain.SaleVO;
import com.kapple.dto.PeriodRequestDTO;

public interface ServiceMK {
	
	public Long getTotalOrderQtyByPeriod(PeriodRequestDTO period);
	

	public Long getTotalSalesAmountByPeriod(PeriodRequestDTO period);
	public Long getTotalSalesAmountByPeriod(LocalDate startDate, LocalDate endDate);

	public List<SaleVO> getSaleList();
	public List<SaleVO> getSaleListByPeriod(PeriodRequestDTO period);
	public List<SaleVO> getSaleListByPeriod(LocalDate startLocalDate, LocalDate endLocalDate);
	
//	public List<SaleVO> overviewSale();
//	public List<ModelVO> overviewModel();
//	public void overviewOrder();
//	public HashMap<String, String> getTotalSales();



}
