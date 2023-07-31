package com.kapple.service;

import java.util.List;

import com.kapple.domain.SupplierDetailVO;
import com.kapple.domain.SupplierVO;

public interface ServiceKW {
	public List<SupplierVO> supplierListService(String compo_name);
	public SupplierDetailVO supplierDetail(String suppl_no);
	public int supplierCount(String compo_name);
}
