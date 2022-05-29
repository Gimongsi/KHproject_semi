package com.dangpert.dto;

public class CalumnFolderDTO {

	private int calumn_seq;
	private String calumn_src;
	
	public CalumnFolderDTO() {}

	public CalumnFolderDTO(int calumn_seq, String calumn_src) {
		super();
		this.calumn_seq = calumn_seq;
		this.calumn_src = calumn_src;
	}

	public int getCalumn_seq() {
		return calumn_seq;
	}

	public void setCalumn_seq(int calumn_seq) {
		this.calumn_seq = calumn_seq;
	}

	public String getCalumn_src() {
		return calumn_src;
	}

	public void setCalumn_src(String calumn_src) {
		this.calumn_src = calumn_src;
	}

	@Override
	public String toString() {
		return calumn_seq + " : " + calumn_src;
	}
	
}
