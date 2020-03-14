package com.techelevator.projects.model;

import java.util.List;

public interface DailyWeatherDAO {
	
	public List<DailyWeather> getDailyWeather(String parkcode);
	
	

}
