package com.dangpert.dto;

public class ColumnFolderDTO {

	private int column_seq;
	private String column_src;
	
	public ColumnFolderDTO() {}

	public ColumnFolderDTO(int column_seq, String column_src) {
		super();
		this.column_seq = column_seq;
		this.column_src = column_src;
	}

	public int getcolumn_seq() {
		return column_seq;
	}

	public void setcolumn_seq(int column_seq) {
		this.column_seq = column_seq;
	}

	public String getcolumn_src() {
		return column_src;
	}

	public void setcolumn_src(String column_src) {
		this.column_src = column_src;
	}

	@Override
	public String toString() {
		return column_seq + " : " + column_src;
	}
	
}
