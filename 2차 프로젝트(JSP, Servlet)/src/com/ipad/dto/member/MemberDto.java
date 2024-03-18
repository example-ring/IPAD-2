package com.ipad.dto.member;

public class MemberDto {

	private String id;
	private String pw;
	private String email;
	private String name;
	private String addr;
	private String pin;
	private String year;
	private String month;
	private String day;

	public MemberDto(String id, String pw, String name, String email, String addr, String pin, String year, String month, String day) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
		this.addr = addr;
		this.pin = pin;
		this.year = year;
		this.month = month;
		this.day = day;
		
	}

	public MemberDto() {
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}
}