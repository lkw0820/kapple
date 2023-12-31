package com.kapple.domain;

import java.util.Date;

import lombok.Data;

@Data
public class SupplFileVO {
	private String uuid;
	private SupplierVO supplier;
	private String file_name;
	private Long file_size;
	private String file_type;
	private String data_url;
}
