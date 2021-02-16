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
	private MultipartFile image1;
	private MultipartFile image2;
	private MultipartFile image3;
	private MultipartFile image4;
	private MultipartFile image5;
	private byte imgby1[];
	private byte imgby2[];
	private byte imgby3[];
	private byte imgby4[];
	private byte imgby5[];
	
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
	public MultipartFile getImage1() {
		return image1;
	}
	public void setImage1(MultipartFile image1) {
		this.image1 = image1;
	}
	public MultipartFile getImage2() {
		return image2;
	}
	public void setImage2(MultipartFile image2) {
		this.image2 = image2;
	}
	public MultipartFile getImage3() {
		return image3;
	}
	public void setImage3(MultipartFile image3) {
		this.image3 = image3;
	}
	public MultipartFile getImage4() {
		return image4;
	}
	public void setImage4(MultipartFile image4) {
		this.image4 = image4;
	}
	public MultipartFile getImage5() {
		return image5;
	}
	public void setImage5(MultipartFile image5) {
		this.image5 = image5;
	}
	public byte[] getImgby1() {
		return imgby1;
	}
	public void setImgby1(byte[] imgby1) {
		this.imgby1 = imgby1;
	}
	public byte[] getImgby2() {
		return imgby2;
	}
	public void setImgby2(byte[] imgby2) {
		this.imgby2 = imgby2;
	}
	public byte[] getImgby3() {
		return imgby3;
	}
	public void setImgby3(byte[] imgby3) {
		this.imgby3 = imgby3;
	}
	public byte[] getImgby4() {
		return imgby4;
	}
	public void setImgby4(byte[] imgby4) {
		this.imgby4 = imgby4;
	}
	public byte[] getImgby5() {
		return imgby5;
	}
	public void setImgby5(byte[] imgby5) {
		this.imgby5 = imgby5;
	}
	@Override
	public String toString() {
		return "ProductVO [dishnum=" + dishnum + ", dishname=" + dishname + ", foodkind=" + foodkind + ", price="
				+ price + ", recipe=" + recipe + ", cnt=" + cnt + ", image1=" + image1 + ", image2=" + image2
				+ ", image3=" + image3 + ", image4=" + image4 + ", image5=" + image5 + ", imgby1="
				+ Arrays.toString(imgby1) + ", imgby2=" + Arrays.toString(imgby2) + ", imgby3="
				+ Arrays.toString(imgby3) + ", imgby4=" + Arrays.toString(imgby4) + ", imgby5="
				+ Arrays.toString(imgby5) + "]";
	}
	

	
	
	
	
	
}
