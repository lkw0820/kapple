package com.kapple.mapper;

import java.sql.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kapple.domain.TestTblVO;
import com.kapple.dto.RequestDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class mapperTestMK {
	
	@Autowired
	private MapperMK statisticsMapper;
	
	// VO를 @Data해놔서 bean등록은 안해도 되는데, 이게 Autowired로 안되고 꼭 직접 생성해야 하는 이유는...?
	private TestTblVO test = new TestTblVO();
	
	@Test
	public void mapperTest() {
//		test.setContents("test");
//		test.setAnynum(123456);
//		mapper.insert(test);
//		log.info(statisticsMapper.getRetailerList());
//		log.info(statisticsMapper.getSaleListByPeriod(new PeriodRequestDTO(new Date("Tue Jul 25 09:00:00 KST 2000"), new Date("Sat Aug 05 15:45:31 KST 2023"))));
//		log.info(statisticsMapper.getSaleListByPeriod());
//		 List<SaleVO> saleList = statisticsMapper.getSaleList();
//		 log.info(statisticsMapper.getSaleList());

	}

}
