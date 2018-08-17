package Studentpack1;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class teacher_record implements RowMapper<teacherdetails> {

	@Override
	public teacherdetails mapRow(ResultSet a, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		teacherdetails td=new teacherdetails();
		td.setName(a.getString("name"));
		td.setPass(a.getString("password"));
		td.setUname(a.getString("username"));
		td.setPhone(a.getInt("phone"));
		td.setMail(a.getString("mail"));
		td.setAddress(a.getString("address"));
		td.setSpecialization(a.getString("specialization"));
		td.setAge(a.getInt("age"));
		td.setGrp(a.getString("group1"));
		return td;
	}

}
