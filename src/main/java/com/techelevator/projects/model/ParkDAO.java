package com.techelevator.projects.model;

import java.util.List;

public interface ParkDAO {

	
	public List<Park> getAllParkInformation();
	
	public Park getParkInformationByParkCode(String parkCode);
	
}
