package com.techelevator.projects.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class Survey {

	@NotBlank(message="Park name is required")
	private String parkName;
	
	@NotBlank(message="Email is required")
	@Email(message="Email must be a valid email address")
	private String email;
	
	@NotBlank(message="State is required")
	private String state;
	
	@NotBlank(message="Activity level is required")
	private String activityLevel;

	
	
	public String getParkName() {
		return parkName;
	}
	public void setParkName(String parkName) {
		this.parkName = parkName;
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
	public String getActivityLevel() {
		return activityLevel;
	}
	public void setActivityLevel(String activityLevel) {
		this.activityLevel = activityLevel;
	}
	
}
