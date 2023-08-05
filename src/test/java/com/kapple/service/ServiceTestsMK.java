package com.kapple.service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kapple.domain.SaleVO;
import com.kapple.dto.PeriodRequestDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ServiceTestsMK {
	@Autowired
	private ServiceMK statisticsService;
	
	@SuppressWarnings("deprecation")
	@Test
	public void test() {
		PeriodRequestDTO period = new PeriodRequestDTO();

	    LocalDate startLocalDate = LocalDate.of(2022, 1, 1);
	    Date startDate = Date.valueOf(startLocalDate);
	    period.setStartDate(startDate);

	    LocalDate endLocalDate = LocalDate.of(2023, 1, 1);
	    Date endDate = Date.valueOf(endLocalDate);
	    period.setEndDate(endDate);
		
//		List<SaleVO> saleList = statisticsService.getTotalSalesByPeriod(period);
//    	log.info(saleList);
	}

}
