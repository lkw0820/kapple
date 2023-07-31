package com.kapple.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kapple.domain.SupplierDetailVO;
import com.kapple.domain.SupplierVO;
import com.kapple.mapper.MapperKW;

@Service
public class ServiceKWImpl implements ServiceKW {

	@Autowired
	private MapperKW mapper;
	@Override
	public List<SupplierVO> supplierListService(String compo_name) {
		//공급사 리스트 출력
		return mapper.supplierList(compo_name);
	}
	@Override
	public SupplierDetailVO supplierDetail(String suppl_no) {
		// 공급사 상세 정보 출력
		return mapper.detail(suppl_no);
	}

}
