package com.dangpert.dto;

public class UserDataDTO {

	private int user_seq, user_age, height, weight, final_weight;
	private String user_memo;
	private boolean user_black;
	
	public UserDataDTO() {}

	public UserDataDTO(int user_seq, int user_age, int height, int weight, int final_weight, String user_memo,
			boolean user_black) {
		super();
		this.user_seq = user_seq;
		this.user_age = user_age;
		this.height = height;
		this.weight = weight;
		this.final_weight = final_weight;
		this.user_memo = user_memo;
		this.user_black = user_black;
	}

	public int getUser_seq() {
		return user_seq;
	}

	public void setUser_seq(int user_seq) {
		this.user_seq = user_seq;
	}

	public int getUser_age() {
		return user_age;
	}

	public void setUser_age(int user_age) {
		this.user_age = user_age;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public int getFinal_weight() {
		return final_weight;
	}

	public void setFinal_weight(int final_weight) {
		this.final_weight = final_weight;
	}

	public String getUser_memo() {
		return user_memo;
	}

	public void setUser_memo(String user_memo) {
		this.user_memo = user_memo;
	}

	public boolean isUser_black() {
		return user_black;
	}

	public void setUser_black(boolean user_black) {
		this.user_black = user_black;
	}

	@Override
	public String toString() {
		return user_seq + " : " + user_age + " : " + height + " : "
				+ weight + " : " + final_weight + " : " + user_memo + " : " + user_black;
	}
	
	
	
	
	
}
