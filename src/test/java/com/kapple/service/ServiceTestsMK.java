package com.kapple.service;

import static org.junit.Assert.*;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kapple.domain.ModelVO;
import com.kapple.domain.SaleVO;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ServiceTestsMK {
	@Autowired
	private ServiceMK statisticsService;
	@Test
	public void test() {
//		List<SaleVO> saleList = statisticsService.overviewSale();
//		log.info("saleList==============================\n"+saleList);

//		List<ModelVO> modelList = statisticsService.overviewModel();
//		log.info("saleList==============================\n"+modelList);
	}

}
