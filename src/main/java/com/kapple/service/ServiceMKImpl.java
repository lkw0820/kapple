package com.kapple.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kapple.domain.ModelVO;
import com.kapple.domain.SaleVO;
import com.kapple.mapper.MapperMK;

@Service
public class ServiceMKImpl implements ServiceMK {

	@Autowired
	private MapperMK statisticsMapper;

	@Override
	public List<SaleVO> overviewSale() {
		List<SaleVO> saleList = statisticsMapper.getSaleList();
		return saleList;
	}

//	@Override
//	public void overviewOrder() {
//		// TODO Auto-generated method stub
//		
//	}

	@Override
	public List<ModelVO> overviewModel() {
		List<ModelVO> modelList = statisticsMapper.getModelList();
		return modelList;
	}
	
	
	
	
}
