package com.techelevator.projects.model.jdbc;

import java.util.ArrayList;

import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.projects.model.Park;
import com.techelevator.projects.model.ParkDAO;

@Component
public class JDBCParkDAO implements ParkDAO {

	
private JdbcTemplate jdbcTemplate;
private ParkDAO parkDao;
	
	@Autowired
	public JDBCParkDAO(BasicDataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Park> getAllParkInformation() {
		List<Park> allParks = new ArrayList<Park>();
		String sql_query = "SELECT * FROM park;";
		
		SqlRowSet result = jdbcTemplate.queryForRowSet(sql_query);
		
		while (result.next()) {
			Park parkInfo = new Park();
			parkInfo = mapRowToPark(result);
			allParks.add(parkInfo);
		}
		return allParks;
	}


	@Override
	public List<Park> getFavoritesList() {
		
	String sqlFav ="Select parkname, parkcode, count(surveyid) as counting " + 
				" FROM survey_result " + 
				" Left Join park using (parkcode) " + 
				" group by parkname, parkcode " + 
				" having count(surveyid) > 0 " + 
				" order by count(surveyid) desc, parkname asc; ";
		
		SqlRowSet favSet = jdbcTemplate.queryForRowSet(sqlFav);
		List<Park> favList = new ArrayList<Park>();
		while(favSet.next()) {
			Park tempPark = new Park();
			tempPark = mapRowToParkWithCount(favSet);
			favList.add(tempPark);
		}
		
		return favList;
	}
	@Override
	public Park getParkInformationByParkCode(String parkCode) {
		String sql_query = "SELECT * from park WHERE parkcode = ?";
		SqlRowSet result = jdbcTemplate.queryForRowSet(sql_query, parkCode);
		while(result.next()) {
		return mapRowToPark(result);
	}
		return null;
	}
	
	
	private Park mapRowToPark(SqlRowSet result) {
		Park parkInfo = new Park();
		parkInfo.setParkCode(result.getString("parkCode"));
		parkInfo.setParkName(result.getString("parkname"));
		parkInfo.setState(result.getString("state"));
		parkInfo.setAcreage(result.getInt("acreage"));
		parkInfo.setElevationInfeet(result.getInt("elevationinfeet"));
		parkInfo.setMilesOfTrail(result.getFloat("milesoftrail"));
		parkInfo.setNumberOfCampsites(result.getInt("numberofcampsites"));
		parkInfo.setClimate(result.getString("climate"));
		parkInfo.setYearFounded(result.getInt("yearfounded"));
		parkInfo.setAnnualVisitorCount(result.getInt("annualvisitorcount"));
		parkInfo.setInspirationalQuote(result.getString("inspirationalquote"));
		parkInfo.setInspirationalQuoteSource(result.getString("inspirationalquotesource"));
		parkInfo.setParkDescription(result.getString("parkdescription"));
		parkInfo.setEntryFee(result.getInt("entryfee"));
		parkInfo.setNumberOfAnimalSpecies(result.getInt("numberofanimalspecies"));
		return parkInfo;
	}
	
	
	private Park mapRowToParkWithCount(SqlRowSet result) {
		Park parkInfo = new Park();
		parkInfo.setParkName(result.getString("parkname"));
		parkInfo.setSurveyCount(result.getInt("counting"));
		parkInfo.setParkCode(result.getString("parkcode"));
		return parkInfo;
	}

	@Override
	public List<Park> getDetailedParkInformation() {
		List<Park> allParks = new ArrayList<Park>();
		String sql_query = "SELECT * FROM park;";
		
		SqlRowSet result = jdbcTemplate.queryForRowSet(sql_query);
		
		while (result.next()) {
			Park parkInfo = new Park();
			parkInfo = mapRowToPark(result);
			allParks.add(parkInfo);
		}
		return allParks;		
	}



	

}
