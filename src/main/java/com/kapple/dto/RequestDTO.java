package com.kapple.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class RequestDTO {
	private Date startDate;
	private Date endDate;
	//private String on;
	// default, YearOnYear, HalfOnHalf, QuaterOnQuater, MonthOnMonth
	// YearToDate, HalfToDate, QuaterToDate, MonthToDate
	
	
}
