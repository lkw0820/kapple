package com.kapple.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class PeriodRequestDTO {
	private Date startDate;
	private Date endDate;
}
