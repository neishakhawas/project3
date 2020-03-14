package com.techelevator.projects.model.jdbc;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.projects.model.DailyWeather;
import com.techelevator.projects.model.DailyWeatherDAO;

@Component
public class JDBCDailyWeatherDAO implements DailyWeatherDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	public JDBCDailyWeatherDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<DailyWeather> getDailyWeather(String parkcode) {
		List<DailyWeather> dailyWeather = new ArrayList<DailyWeather>();
		String sql_query = "SELECT * FROM weather WHERE parkcode = ?";
		
		SqlRowSet results = jdbcTemplate.queryForRowSet(sql_query, parkcode);
		while(results.next()) {
			DailyWeather weatherResult = mapRowToDailyWeather(results);
			dailyWeather.add(weatherResult);
		}
		return dailyWeather;
	}
	
	
	private DailyWeather mapRowToDailyWeather(SqlRowSet results) {
		DailyWeather weather = new DailyWeather();
		weather.setParkCode(results.getString("parkcode"));
		weather.setDay(results.getInt("fivedayforecastvalue"));
		weather.setLow(results.getInt("low"));
		weather.setHigh(results.getInt("high"));
		weather.setForecast(results.getString("forecast"));
		weather.setImgName(results.getString("forecast").replace(" ", ""));
		weather.setHighInC(results.getInt("high"));
		weather.setLowInC(results.getInt("low"));
		return weather;
	}
	
//	public List<String> getAdvisory() {
//		
//		List<String> advisory = new ArrayList<String>();
//		
//		
//		advisory.add("Snow and ice expected. Take precaution!");
//		advisory.add("Partly cloudy. Rain might be expected");
//		advisory.add("Cloudy. Rain in the forecast");
//		advisory.add("Rain expected. Get your umbrellas");
//		advisory.add("Sunny day. Enjoy the warm weather!!");
//
//		return advisory;
//	}

}
