package com.kapple.domain;

import lombok.Data;

@Data
public class UserVO {
	private String user_no;
	private DepartmentVO department;
	private String user_name;
	private String email;
	private String phone;
	private String address;
	private String id;
	private String pw;
}
