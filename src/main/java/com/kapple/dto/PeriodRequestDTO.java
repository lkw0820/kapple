package com.kapple.dto;

import java.sql.Date;
import java.time.LocalDate;

import lombok.Data;

@Data
public class PeriodRequestDTO {
	private LocalDate startDate;
	private LocalDate endDate;
}
