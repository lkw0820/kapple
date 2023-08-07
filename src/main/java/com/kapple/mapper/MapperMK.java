package com.kapple.mapper;

import java.sql.Date;
import java.util.HashMap;
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

	// 부품 공급 의존도
	public List<HashMap<String, Object>> getSupplyDependence(
			@Param(value = "startDate") Date startDate, @Param(value = "endDate") Date endDate);
	
	// 제품별 판매량 리스트
	public List<HashMap<String, Object>> getSaleQtyListByPeriodWithLank(
			@Param(value = "startDate") Date startDate, @Param(value = "endDate") Date endDate);
	
	//제품 반품
	public Long getTotalReturnQtyByPeriod(
			@Param(value = "startDate") Date startDate, @Param(value = "endDate") Date endDate);

	//제품 생산
	public Long getTotalProduceQtyByPeriod(
			@Param(value = "startDate") Date startDate, @Param(value = "endDate") Date endDate);
	
	//부품 구매
	public Long getTotalOrderQtyByPeriod(
			@Param(value = "startDate") Date startDate, @Param(value = "endDate") Date endDate);
	
	//제품 판매
	public Long getTotalSalesQtyByPeriod(
			@Param(value = "startDate") Date startDate, @Param(value = "endDate") Date endDate);
	public Long getTotalSalesAmountByPeriod(
			@Param(value = "startDate") Date startDate, @Param(value = "endDate") Date endDate);	
	public List<SaleVO> getSaleListByPeriod(
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
