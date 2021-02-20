package com.p3.vo;

public class ReviewVO {
	
	private Integer num;
	private String id;
	private String dishnum;
	private String message;
	private String starpoint;
	private String tasteevltn;  //¸À Æò°¡
	private String tastestrng;  //¸À °­µµ
	private String writedate;
	private String flag;
	
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
	public String getTasteevltn() {
		return tasteevltn;
	}
	public void setTasteevltn(String tasteevltn) {
		this.tasteevltn = tasteevltn;
	}
	public String getTastestrng() {
		return tastestrng;
	}
	public void setTastestrng(String tastestrng) {
		this.tastestrng = tastestrng;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	@Override
	public String toString() {
		return "ReviewVO [num=" + num + ", id=" + id + ", dishnum=" + dishnum + ", message=" + message + ", starpoint="
				+ starpoint + ", tasteevltn=" + tasteevltn + ", tastestrng=" + tastestrng + ", writedate=" + writedate
				+ "]";
	}
		
}
