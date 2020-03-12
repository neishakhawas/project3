package com.techelevator.projects.model.jdbc;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.projects.model.Park;
import com.techelevator.projects.model.ParkDAO;

@Component
public class JDBCParkDAO implements ParkDAO {
	
	
	
private JdbcTemplate jdbcTemplate;
	
	public JDBCParkDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Park> getDetailedParkInformation() {
		List<Park> allParks = new ArrayList<Park>();
		String sql_query = "SELECT * from park";
		SqlRowSet result = jdbcTemplate.queryForRowSet(sql_query);
		while (result.next()) {
			Park parkInfo = mapRowToPark(result);
			allParks.add(parkInfo);
		}
		return allParks;
	}
	
	
	private Park mapRowToPark(SqlRowSet result) {
		Park parkInfo = new Park();
		parkInfo.setParkCode(result.getString("parkcode"));
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

}
