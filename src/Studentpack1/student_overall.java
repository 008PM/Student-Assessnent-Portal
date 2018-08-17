package Studentpack1;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class student_overall implements RowMapper<overall> {

	@Override
	public overall mapRow(ResultSet arg0, int arg1) throws SQLException {
		
		overall o=new overall();
		o.setBlood_group(arg0.getString("blood_group"));
		o.setMaths(arg0.getInt("maths"));
		o.setUsername(arg0.getString("username"));
		o.setName(arg0.getString("name"));
		return o;
	}

}
