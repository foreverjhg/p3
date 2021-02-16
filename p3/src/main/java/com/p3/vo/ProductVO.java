package com.p3.vo;

import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {

	private String dishnum;
	private String dishname;
	private String foodkind;
	private Integer price;
	private String recipe;
	private Integer cnt;
	private MultipartFile image;
	private byte imgby[];
	
	public String getDishnum() {
		return dishnum;
	}
	public void setDishnum(String dishnum) {
		this.dishnum = dishnum;
	}
	public String getDishname() {
		return dishname;
	}
	public void setDishname(String dishname) {
		this.dishname = dishname;
	}
	public String getFoodkind() {
		return foodkind;
	}
	public void setFoodkind(String foodkind) {
		this.foodkind = foodkind;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getRecipe() {
		return recipe;
	}
	public void setRecipe(String recipe) {
		this.recipe = recipe;
	}
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	
	public byte[] getImgby() {
		return imgby;
	}
	public void setImgby(byte[] imgby) {
		this.imgby = imgby;
	}
	
	@Override
	public String toString() {
		return "ProductVO [dishnum=" + dishnum + ", dishname=" + dishname + ", foodkind=" + foodkind + ", price="
				+ price + ", recipe=" + recipe + ", cnt=" + cnt + ", image=" + image + ", imgby="
				+ Arrays.toString(imgby) + "]";
	}
}
