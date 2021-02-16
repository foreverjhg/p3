package com.p3.vo;

public class ReviewVO {
	
	private Integer num;
	private String id;
	private String dishnum;
	private String message;
	private String starpoint;
	private String writedate;
	
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDishnum() {
		return dishnum;
	}
	public void setDishnum(String dishnum) {
		this.dishnum = dishnum;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getStarpoint() {
		return starpoint;
	}
	public void setStarpoint(String starpoint) {
		this.starpoint = starpoint;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	
	@Override
	public String toString() {
		return "ReviewVO [num=" + num + ", id=" + id + ", dishnum=" + dishnum + ", message=" + message + ", starpoint="
				+ starpoint + ", writedate=" + writedate + "]";
	}
		
}
