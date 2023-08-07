package com.kapple.service;

import java.util.HashMap;
import java.util.List;

import com.kapple.domain.SaleVO;
import com.kapple.dto.RequestDTO;

public interface ServiceMK {
	
	public Long getTotalProduceQtyByPeriod(RequestDTO period);
	
	public List<HashMap<String, Object>> getSupplyDependence(RequestDTO period);

	public List<HashMap<String, Object>> getSaleQtyListByPeriodWithLank(RequestDTO period);

	public Long getTotaReturnQtyByPeriod(RequestDTO period);
	
	public Long getTotalOrderQtyByPeriod(RequestDTO period);
	
	public Long getTotalSalesQtyByPeriod(RequestDTO period);

	public List<Long> getTotalSalesAmountByPeriod(RequestDTO period);

	public List<SaleVO> getSaleListByPeriod(RequestDTO period);

	public List<SaleVO> getSaleList();
	
//	public List<SaleVO> overviewSale();
//	public List<ModelVO> overviewModel();
//	public void overviewOrder();
//	public HashMap<String, String> getTotalSales();



}
