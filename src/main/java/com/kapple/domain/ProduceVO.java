package com.kapple.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class ProduceVO {
	String produce_no;
	ProductVO product;
	ComponentVO component;
	Date produce_date;
}
