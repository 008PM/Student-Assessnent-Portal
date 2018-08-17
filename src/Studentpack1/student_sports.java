package Studentpack1;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class student_sports implements RowMapper<sports> {

	@Override
	public sports mapRow(ResultSet arg0, int arg1) throws SQLException {
		
		sports sp=new sports();
		sp.setFootball(arg0.getString("football"));
		sp.setBasketball(arg0.getString("basketball"));
		sp.setHockey(arg0.getString("hockey"));
		sp.setFitness_level(arg0.getString("fitness_level"));
			sp.setName(arg0.getString("name"));
		return sp;
		
	}

}
