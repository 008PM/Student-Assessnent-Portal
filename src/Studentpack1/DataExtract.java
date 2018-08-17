package Studentpack1;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

//import req.handle.user;

public class DataExtract implements RowMapper<user> {

	@Override
	public user mapRow(ResultSet arg0, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		String username=arg0.getString("username");
		String password=arg0.getString("password");
		
		return new user(username,password);//returns an object  consisting of attributes
	}

}
