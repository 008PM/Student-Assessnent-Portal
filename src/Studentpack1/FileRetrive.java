package Studentpack1;

import java.io.InputStream;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class FileRetrive implements RowMapper<InputStream> {

	@Override
	public InputStream mapRow(ResultSet arg0, int arg1) throws SQLException
	{
		
		Blob bl= arg0.getBlob("file");
		
		InputStream in=bl.getBinaryStream();
		return in;
	}

}
