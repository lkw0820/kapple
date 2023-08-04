package com.kapple.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kapple.domain.ModelVO;
import com.kapple.domain.SaleVO;

public interface ServiceMK {

	public List<SaleVO> overviewSale();
	public List<ModelVO> overviewModel();

//	public void overviewOrder();


}
