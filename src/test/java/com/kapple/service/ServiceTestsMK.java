package com.kapple.service;

import java.sql.Date;
import java.text.SimpleDateFormat;
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

    	log.debug("TEST=====================================");
		PeriodRequestDTO period = new PeriodRequestDTO();

//	    LocalDate startLocalDate = LocalDate.of(2022, 1, 1);
//	    Date startDate = Date.valueOf(startLocalDate);
//	    period.setStartDate(startDate);
//
//	    LocalDate endLocalDate = LocalDate.of(2023, 1, 1);
//	    Date endDate = Date.valueOf(endLocalDate);
//	    period.setEndDate(endDate);
//		
	    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String strStart = format.format(period.getStartDate());
        String strEnd = format.format(period.getEndDate());
        
        String[] stringsStart = strStart.split("-");
        String[] stringsEnd = strEnd.split("-");
        log.debug("start : "+stringsStart+", end : "+stringsEnd);
        
	    LocalDate startLocalDate = LocalDate.of(
	    		Integer.parseInt(stringsStart[0]), Integer.parseInt(stringsStart[1]), Integer.parseInt(stringsStart[2]));
	    Date startDate = Date.valueOf(startLocalDate);
	    period.setStartDate(startDate);

	    LocalDate endLocalDate = LocalDate.of(
	    		Integer.parseInt(stringsEnd[0]), Integer.parseInt(stringsEnd[1]), Integer.parseInt(stringsEnd[2]));
	    Date endDate = Date.valueOf(endLocalDate);
	    period.setEndDate(endDate);
	    
		List<SaleVO> saleList = statisticsService.getSaleListByPeriod(period);
    	//log.debug(saleList);
	}

}
