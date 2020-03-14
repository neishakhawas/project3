package com.techelevator.projects.model;

public class DailyWeather {
	
	private String parkCode;
	private int day;
	private int low;
	private int high;
	private String forecast;
	private String imgName;
	private double highInC;
	private double lowInC;
	
	
	
	public double getLowInC() {
		return lowInC;
	}
	public void setLowInC(int low) {
		this.lowInC = Math.round((low - 32) * 0.5556);
	}
	
	
	public double getHighInC() {
		return highInC;
	}
	public void setHighInC(int high) {
		this.highInC = Math.round((high - 32) * 0.5556);
	}
	
	
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
	
}
