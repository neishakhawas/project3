package com.techelevator.projects.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class Survey {

	private String parkCode;
	

	private String email;
	
	private String state;
	
	private String activitylevel;

	
	
	public String getParkCode() {
		return parkCode;
	}
	public void setParkCode(String parkName) {
		this.parkCode = parkName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getActivitylevel() {
		return activitylevel;
	}
	public void setActivitylevel(String activitylevel) {
		this.activitylevel = activitylevel;
	}
	
}
