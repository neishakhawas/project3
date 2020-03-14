package com.techelevator.projects.model.jdbc;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.projects.model.Survey;
import com.techelevator.projects.model.SurveyDAO;

@Component
public class JDBCSurveyDAO implements SurveyDAO {

	private JdbcTemplate jdbcTemplate;

	public JDBCSurveyDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public void createEntry(Survey survey) {


		String sqlCreate = "INSERT INTO survey_result ( parkcode, emailaddress, state, activitylevel) "
				+ "VALUES ( ?,?,?,?);";

		jdbcTemplate.update(sqlCreate, survey.getParkCode(), survey.getEmail(), survey.getState(), survey.getActivitylevel());
	}

}
