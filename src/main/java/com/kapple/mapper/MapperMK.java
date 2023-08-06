package com.kapple.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kapple.domain.ComponentVO;
import com.kapple.domain.ContractVO;
import com.kapple.domain.ModelVO;
import com.kapple.domain.OrderReturnVO;
import com.kapple.domain.OrdersVO;
import com.kapple.domain.ProductVO;
import com.kapple.domain.RetailerVO;
import com.kapple.domain.SalePredictVO;
import com.kapple.domain.SaleReturnVO;
import com.kapple.domain.SaleVO;
import com.kapple.domain.SupplierVO;
import com.kapple.domain.TestTblVO;
import com.kapple.domain.TransportationVO;

public interface MapperMK {

	void insert(TestTblVO test);

	public Long getTotalOrderQtyByPeriod(
			@Param(value = "startDate") Date startDate, @Param(value = "endDate") Date endDate);
	
	public List<SaleVO> getSaleListByPeriod(
			@Param(value = "startDate") Date startDate, @Param(value = "endDate") Date endDate);
	public Long getSalesAmountByPeriod(
			@Param(value = "startDate") Date startDate, @Param(value = "endDate") Date endDate);	
	public List<SaleVO> getSaleList();
	//===================================
	
	public List<ProductVO> getProductList();
	public List<ModelVO> getModelList();
	public List<RetailerVO> getRetailerList();
	
	public List<SalePredictVO> getSalePredictList();
	public List<SaleReturnVO> getSaleReturnList();
	public List<TransportationVO> getTransportationList(); // 필요 있나..? 고객사 중에 null인 건 이용안하는 거고..
	
	public List<OrdersVO> getOrderList();
	public List<ComponentVO> getComponentList();
	public List<SupplierVO> getSupplierList();
	public List<ContractVO> getContractList();
	public List<OrderReturnVO> getOrderReturnList();

}
