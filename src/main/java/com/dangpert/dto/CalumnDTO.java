package com.dangpert.dto;

public class CalumnDTO {
	
	private int calumn_seq;
	private String calumn_title, calumn_content, calumn_date;
	
	public CalumnDTO() {}

	public CalumnDTO(int calumn_seq, String calumn_title, String calumn_content, String calumn_date) {
		super();
		this.calumn_seq = calumn_seq;
		this.calumn_title = calumn_title;
		this.calumn_content = calumn_content;
		this.calumn_date = calumn_date;
	}

	public int getCalumn_seq() {
		return calumn_seq;
	}

	public void setCalumn_seq(int calumn_seq) {
		this.calumn_seq = calumn_seq;
	}

	public String getCalumn_title() {
		return calumn_title;
	}

	public void setCalumn_title(String calumn_title) {
		this.calumn_title = calumn_title;
	}

	public String getCalumn_content() {
		return calumn_content;
	}

	public void setCalumn_content(String calumn_content) {
		this.calumn_content = calumn_content;
	}

	public String getCalumn_date() {
		return calumn_date;
	}

	public void setCalumn_date(String calumn_date) {
		this.calumn_date = calumn_date;
	}

	@Override
	public String toString() {
		return calumn_seq + " : " + calumn_title + " : "
				+ calumn_content + " : " + calumn_date;
	}
	
	
}
