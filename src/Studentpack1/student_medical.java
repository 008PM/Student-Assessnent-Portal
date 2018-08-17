package Studentpack1;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class student_medical implements RowMapper<medical> {

	@Override
	public medical mapRow(ResultSet arg0, int arg1) throws SQLException {
		
		medical m=new medical();
		m.setBlood_group(arg0.getString("blood_group"));
		m.setImmunization_dates(arg0.getString("immunization_dates"));
		m.setAllergies(arg0.getString("allergies"));
		m.setAbnormalities(arg0.getString("Abnormalities"));
		m.setName(arg0.getString("name"));
		return m;
	}

}
