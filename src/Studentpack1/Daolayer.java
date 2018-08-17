package Studentpack1;

import java.io.InputStream;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

//import req.handle.DataExtract;
//import req.handle.user;

import java.util.List;

/*-----------------------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------------------*/

@Repository
/*-----------------------------------------------------------------------------------------*/

public class Daolayer 
{
  private JdbcTemplate j;
private String sqlcmd;
  
  @Autowired
  public void setj(JdbcTemplate j)
    {
		this.j = j;
	}
	
  
  public  Connection connect() throws Exception
	{
		Connection con=null;
		//final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
		final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DB_URL = "jdbc:mysql://localhost/student_assessment_portal";
		final String USER = "root";
		final String PASS = "";

		Class.forName(JDBC_DRIVER);
		con = (Connection) DriverManager.getConnection(DB_URL, USER, PASS);

		return con;
	}
/*--------------------------------------student registration-----------------------------------------------------*/	
  public int getSignup1(String name,String username,int regno,String password,String class1,int phone,String mail,String address,String fname,String mname,int age,String group1)
	{
		String sqlcmd ="insert into student_registrations values (?,?,?,?,?,?,?,?,?,?,?,?)";
		Object x[]= {name,username,regno,password,class1,phone,mail,address,fname,mname,age,group1};//passed from user
		int row = j.update(sqlcmd,x);//sending request
		System.out.println(row);
		return row;
	}
  
  
  
  /*-------------------------------teacher registration by admin---------------------------------------------------*/	
  /*-------------------------------------------------------------------------------------------*/	
  public int getSignup_teacher2(String RegNo,String name, String password, String username, int phone, String mail, String address,
			String specialization, int age, String group1)
	{
	    String sqlcmd ="insert into teacher_registration values (?,?,?,?,?,?,?,?,?,?)";
		Object x[]= {name,password,username,phone,mail,address,specialization,age,group1,RegNo};//passed from user
		int row = j.update(sqlcmd,x);//sending request
		System.out.println(row);
		return row;
	}
  
  
  /*------------------------------LOGIN SECTION-------------------------------------------------------------*/	
  
	/*---------------------------for teacher------------------------------------------------*/
	/*public List<user> getLogin1(String input,String password)
	{
		String sqlcmd="select input,password from teacher_login where input=? and password =?";
		Object x[]= {input,password};
		RowMapper<user> j1=new DataExtract();
		List<user> li=j.query(sqlcmd, x,j1);
		return li;
	}*/
	/*----------------------------for student----------------------------------------------------*/

	public List<user> getLogin2(String username, String password) 
	{
		String sqlcmd ="";
		
		String specialchar =Character.toString(username.charAt(0));
	
		
		if(specialchar.equals("S")) 
		{
		     sqlcmd="select username,password from student_registrations where username=? and password =?";
		}
		if(specialchar.equals("T") || specialchar.equals("A"))
		{
			 sqlcmd="select username,password from teacher_registration where username=? and password =?";
		}
		System.out.println(sqlcmd);
		Object x[]= {username,password};
		RowMapper<user> j1=new DataExtract();
		List<user> li=j.query(sqlcmd,x,j1);
		return li;
	}

/*----------------------------operations on academic details--------------------------------------------------*/
	
/*-----------------------------------------------------------------------------------------*/
	
	public int delete_student_rec_db(int reg) {
		// TODO Auto-generated method stub
		
		 String sqlcmd ="delete from student_registrations where regno='"+reg+"'";
		 int row = j.update(sqlcmd);
		
		return row;
		
	}
	/*------------------------------------------------------------------------------------*/ 
	/*--------------UPDATING STUDENT RECORDS---------------------------------*/ 
	/*----------------------------------------------------------------------------------*/	
	public int update_student_rec_db(int reg, String name, String cls1, int mob, String mail1, String add, int age1) {
		// TODO Auto-generated method stub
		String sqlcmd ="update  student_registrations set name='"+name+"',class1='"+cls1+"',phone='"+mob+"',mail='"+mail1+"',address='"+add+"',age='"+age1+"' where regno='"+reg+"' ";
		
		 int row = j.update(sqlcmd);
		 return row;
	}

	/*------------------------------------------------------------------------------------*/ 
	/*--------------------------SHOWING ACADEMIC DETAILS--------------------------------------*/ 
	/*----------------------------------------------------------------------------------*/	
	public List<academics> fetchfromdb(int reg1) {
		// TODO Auto-generated method stub
		
		RowMapper<academics>rm=new student_academics();
		Object obj[]= {reg1};
		String sql="select student_registrations.name,academics.maths,academics.english,academics.hindi,academics.science,academics.social_science,academics.computer_science from student_registrations inner join academics on student_registrations.regno=academics.regno and student_registrations.regno=? ";
		List<academics>list=j.query(sql,obj,rm);
		System.out.println(list);
		return list;
	}
	/*------------------------------------------------------------------------------------*/ 
	/*------------------FOR VIEWING SPORTS DETAILS-----------------------------------------*/ 
	/*----------------------------------------------------------------------------------*/	
   public List<sports> fetchfromdb1(int reg1) {
	   RowMapper<sports>rm=new student_sports();
		Object obj[]= {reg1};
		String sql="select student_registrations.name,sports.football,sports.basketball,sports.hockey,sports.fitness_level from sports inner join student_registrations on student_registrations.regno=sports.regno  and student_registrations.regno=?";
		List<sports>list=j.query(sql,obj,rm);
		System.out.println(list);
		return list;
		
	}	
   /*------------------------------------------------------------------------------------*/ 
   /*---------------------SELECTING MEDICAL RECORDS---------------------------------------*/ 
   /*----------------------------------------------------------------------------------*/	
	public List<medical> fetchmedical(int reg1)
	{
		RowMapper<medical>rm=new student_medical();
		Object obj[]= {reg1};
		String sql="select student_registrations.name,medical.blood_group,medical.Abnormalities,medical.immunization_dates,medical.allergies from student_registrations inner join medical on student_registrations.regno=medical.regno and student_registrations.regno=?";
		List<medical>list2=j.query(sql,obj,rm);
		
		return list2;
		
	}
	
	/*------------------------------------------------------------------------------------*/ 
	/*------------------------SELECTION FROM OVERALL TABLE-----------------------------------------*/ 
	/*----------------------------------------------------------------------------------*/	
	public List<overall> fetchoverall(String reg1) {
		RowMapper<overall>rm=new student_overall();
		Object obj[]= {reg1};
		String sql="SELECT student_registrations.name,medical.blood_group,academics.maths from student_registrations inner join medical inner join academics on student_registrations.regno=medical.regno and medical.regno=academics.regno and student_registrations.username=?";
		List<overall>list3=j.query(sql,obj,rm);
		System.out.println(list3);
		return list3;
		
	}
	
/*----------------------------operations on teacher details by aDmin-------------------------------------------------*/
	
/*-----------------------------------------------------------------------------------------*/
	
	public int delete_teacher_rec_db(int reg) {
		// TODO Auto-generated method stub
		String sqlcmd ="delete from teacher_registration where regno='"+reg+"'";
		 int row = j.update(sqlcmd);
		
		return row;
		
	}

	/*------------------------------------------------------------------------------------*/ 
	/*---------------------------SHOWING ALL TEACHER RECORDS---------------------------------------*/ 
	/*----------------------------------------------------------------------------------*/	
	public List<teacherdetails> Show_all_teacher() {
		// TODO Auto-generated method stub
		RowMapper<teacherdetails>rm=new teacher_record();
		//Object obj[]= {};
		String sql="select * from teacher_registration";
		List<teacherdetails>list=j.query(sql,rm);
		
		
		return list;
		
	}
	/*------------------------------------------------------------------------------------*/ 
	/*-----------------------------EMAIL SENDING OPS-----------------------------------------*/ 
	/*----------------------------------------------------------------------------------*/	
	public int feedback_of_db(String addmail, String studentfeedback) {
		// TODO Auto-generated method stub
		String sqlcmd ="insert into student_feedback values (?,?)";
		Object x[]= {addmail,studentfeedback};//passed from user
		int row = j.update(sqlcmd,x);//sending request
		System.out.println(row);
		return row;
	
	}
	/*------------------------------------------------------------------------------------*/ 
	/*-------------------------MEDICAL DETAIL INSERTION--------------------------------------*/ 
	/*----------------------------------------------------------------------------------*/	
	public int insert_medical(int reg, String bgrp, String abnormal,String immune,String aller) {
		String sqlcmd ="insert into medical values (?,?,?,?,?)";
		Object x[]= {reg,bgrp,abnormal,immune,aller};//passed from user
		int row = j.update(sqlcmd,x);//sending request
		System.out.println(row);
		return row;
	}
	/*------------------------------------------------------------------------------------*/ 
	/*-------------------------------INSERTION INTO ACADEMICS----------------------------------*/ 
	/*----------------------------------------------------------------------------------*/	
	public int insert_marks(int reg, int math1, int english1, int hindi1, int science1, int ss1, int cs1) {
		String sqlcmd ="insert into academics values (?,?,?,?,?,?,?)";
		Object x[]= {reg,math1,english1,hindi1,science1,ss1,cs1};//passed from user
		int row = j.update(sqlcmd,x);//sending request
		System.out.println(row);
		return row;
	}
	/*------------------------------------------------------------------------------------*/ 
	/*-----------------------------MARKS UPDATION OPERATION---------------------------------------*/ 
	/*----------------------------------------------------------------------------------*/	
	public int edit_student_marks(int reg, int math1, int english1, int hindi1, int science1, int ss1, int cs1) {
		String sqlcmd ="update academics set maths='"+math1+"',english='"+english1+"',hindi='"+hindi1+"',science='"+science1+"',social_science='"+ss1+"',computer_science='"+cs1+"' where regno='"+reg+"'";
		//Object x[]= {reg,math1,english1,hindi1,science1,ss1,cs1};//passed from user
		int row = j.update(sqlcmd);//sending request
		System.out.println(row);
		return row;
	}

	/*------------------------------------------------------------------------------------*/ 
	/*------------------------FILE UPLODING --------------------------------------*/ 
	/*----------------------------------------------------------------------------------*/	
	public int upload(byte[] arr,String title)
	{
		
		System.out.println(arr==null);
		
		int i =0;
		try {
			Connection conn= connect();
		String updateSQL = "insert into a values(?,?)";
			
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(updateSQL);
		
			ps.setString(1,title);
			ps.setBytes(2, arr);
		
			i=ps.executeUpdate();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return i;
	}
	/*------------------------------------------------------------------------------------*/ 
	/*--------------------------FILE RETRIEVAL OPERATION ------------------------------------*/ 
	/*----------------------------------------------------------------------------------*/	

	public InputStream getfile(String name)
	{
		
		String sql="select * from a where name =?";
		
		Object o[]= {name};
		
		RowMapper<InputStream> rm = new FileRetrive();
		
		List<InputStream>  li= j.query(sql,o,rm);		
		
		if(li.size()>0)
		{
			return li.get(0);
		}
		
		return null;
	}
	
	/*----------------------------operations on academic details--------------------------------------------------*/
	
	/*-----------------------------------------------------------------------------------------*/
	
		 
	
	

	
}
