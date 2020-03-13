package com.techelevator.projects.model;

public class DailyWeather {
	
	private String parkCode;
	private int day;
	private int low;
	private int high;
	private String forecast;
	private String imgName;
	
	
	
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	public String getParkCode() {
		return parkCode;
	}
	public void setParkCode(String parkCode) {
		this.parkCode = parkCode;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public int getLow() {
		return low;
	}
	public void setLow(int low) {
		this.low = low;
	}
	public int getHigh() {
		return high;
	}
	public void setHigh(int high) {
		this.high = high;
	}
	public String getForecast() {
		return forecast;
	}
	public void setForecast(String forecast) {
		this.forecast = forecast;
	}
	public int tempConvert(int temp) {
		int tempInCelsius = (int) ((temp-32)*(0.5556));
		return tempInCelsius;
	}
}
