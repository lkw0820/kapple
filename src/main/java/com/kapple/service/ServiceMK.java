package com.kapple.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.kapple.domain.ModelVO;
import com.kapple.domain.SaleVO;
import com.kapple.dto.PeriodRequestDTO;

public interface ServiceMK {

	public List<SaleVO> overviewSale();
	public List<ModelVO> overviewModel();
	public HashMap<String, String> getTotalSales();
	public List<SaleVO> getTotalSalesByPeriod(PeriodRequestDTO period);

//	public void overviewOrder();


}
