package Studentpack1;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class student_academics implements RowMapper<academics> {

	@Override
	public academics mapRow(ResultSet arg0, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		academics ac=new academics();
		ac.setName(arg0.getString("name"));
		ac.setMaths(arg0.getInt("maths"));
		ac.setScience(arg0.getInt("science"));
		ac.setComputer_science(arg0.getInt("computer_science"));
		ac.setEnglish(arg0.getInt("english"));
		ac.setHindi(arg0.getInt("hindi"));
		ac.setSocial_science(arg0.getInt("social_science"));
		return ac;
	}

}
