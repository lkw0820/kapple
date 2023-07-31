package com.kapple.mapper;

import java.util.Date;
import java.util.List;

import com.kapple.domain.SupplierDetailVO;
import com.kapple.domain.SupplierVO;

public interface MapperKW {

	public Date test();
	public List<SupplierVO> supplierList(String compo_name);
	public SupplierDetailVO detail(String suppl_no);
}
