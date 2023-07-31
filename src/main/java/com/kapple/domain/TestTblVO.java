package com.kapple.domain;

import org.springframework.context.annotation.ComponentScan;

import lombok.AllArgsConstructor;
import lombok.Data;


//@Data 어노테이션은 Lombok 라이브러리에서 제공하는 기능으로,
//@Getter, @Setter, @ToString, @EqualsAndHashCode, 그리고
//@RequiredArgsConstructor 어노테이션들을 한 번에 포함하는 어노테이션
@Data
@ComponentScan
//@AllArgsConstructor
public class TestTblVO {
	
	private String test_no;
	private String contents;
	private long anynum;
}
