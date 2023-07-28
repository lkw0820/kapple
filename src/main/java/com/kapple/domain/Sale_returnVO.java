package com.kapple.domain;

import lombok.Data;

@Data
public class Sale_returnVO {
	private String sale_return_no;
	private String retail_no;
	private String prod_no;
	private Long quantity;
	private Long price;
	private String remarks;
}
