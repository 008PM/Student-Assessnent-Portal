package Studentpack1;

import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.swing.tree.RowMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.sun.org.apache.bcel.internal.generic.IFGE;

//import req.handle.String;
//import req.handle.user;

/*-------------------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------------------*/
@Service
public class ServiceLayer 
{
    private Daolayer D1;//an object of Daolayer class
/*------------------------------------------------------------------------------------------*/   
	@Autowired
	public void setD1(Daolayer D1)
	{
		this.D1 =D1;//An object of DAO class
	}
	
/*------------------------------FUNCTION DEFINATIONS OF SERVICE LAYER-------------------------------------------------------*/
/*--------------------------------student registration-----------------*/
	
	public int getSignup(String name,String username,int regno,String password,String class1,int phone,String mail,String address,String fname,String mname,int age,String group1)
	{
		// TODO Auto-generated method stub
		int row=D1.getSignup1(name,username,regno,password,class1,phone,mail,address,fname,mname,age,group1);//This function is in DAo layer
		System.out.println(row);
		return row;
	}
	
	/*-------------------------------------------------------------------------------------*/
	
	/*----------------------------teacher registration---------------------------------------*/
	public int getSignup_teacher1(String RegNo,String name, String password, String username, int phone, String mail, String address,
			String specialization, int age, String group1) 
	{
		int row=D1.getSignup_teacher2(RegNo,name,password,username,phone,mail,address,specialization,age,group1);//This function is in DAo layer
		System.out.println(row);
		return row;
	}
	
	/*----------------------------common login--------------------------------------------------*/
	
	/*------------------------student login---------------------------------------------------*/
	public List<user> getLogin(String username, String password) 
	{
		List<user> li=D1.getLogin2(username,password);//This function is in DAo layer
		return li;
		
		
	}

	public int getSignup1(String name, String password, String username, int phone, String mail, String address,
			String specialization, String age, String group1) {
		// TODO Auto-generated method stub
		return 0;
	}

/*----------------------------operations on teacherloginsuccess--------------------------------------------------*/
/*--------------------------------------------------------------------------*/
/*------------------------------------------------------------------------------*/
/*-----------------deletion and updation on student personal details---------------------------------------------------*/
	public int Delete_student_data(int reg) {
		// TODO Auto-generated method stub
		int reg1=D1.delete_student_rec_db(reg);
		return reg1;
	}

	public int Update_student_data(int reg, String name, String cls1, int mob, String mail1, String add, int age1) {
		// TODO Auto-generated method stub
		int update1=D1.update_student_rec_db(reg,name,cls1,mob,mail1,add,age1);
		return update1;
	}

	public List<academics> getmarks1(int reg1) {
		// TODO Auto-generated method stub
		List<academics>list=D1.fetchfromdb(reg1);
		return list;
	}
	
	public List<sports> getsports1(int reg1) {
		List<sports>list1=D1.fetchfromdb1(reg1);
		return list1;
	}
	
public List<medical> getmedical(int reg1) {
		List<medical>list2=D1.fetchmedical(reg1);
		return list2;
	}
	
	public List<overall> getoverall(String reg1) {
		List<overall>list3=D1.fetchoverall(reg1);
		return list3;
	}

	/*-----------------OERATIONS ON TECAHER BY AMIN LOGIN SUCCESS---------------------------------------------------------*/
	/*--------------------------------------------------------------------*/
	/*------------------------------------------------------------------------------*/
	/*--------------------------------------------------------------------*/
	
	public int Delete_teacher_data(int reg) {
		// TODO Auto-generated method stub
		int reg1=D1.delete_teacher_rec_db(reg);
		return reg1;
	}
	/*-------------------GETTING THE DETAILS---------------------------*/
	/*--------------------------------------------------------------------*/
	
	public List<teacherdetails> getdetails() {
		// TODO Auto-generated method stub
		List<teacherdetails>list=D1.Show_all_teacher();
		return list;
	}
	/*-------------------------------------------------------------------------*/ 
	/*--------------------------SENDING EMAIL--------------------------------------------*/ 
	/*----------------------------------------------------------------------------------*/
	public int getfeedback_student(String addmail, String studentfeedback) {
		// TODO Auto-generated method stub
		int row=D1.feedback_of_db(addmail,studentfeedback);
		return row;
	}
	
	/*-----------------------e----------------------------------------*/ 
	/*--------------------------INSERTION OF MEDICAL DETAILS--------------------------------------------*/ 
	/*----------------------------------------------------------------------------------*/
	public int get_medicalrecord(int reg, String bgrp, String abnormal,String immune,String aller) {
		// TODO Auto-generated method stub
		int row=D1.insert_medical(reg,bgrp,abnormal,immune,aller);
		return row;
	}
	/*------------------------------------------------------------------------------*/ 
	/*--------------------------FOR GETTING MARKS--------------------------------------------*/ 
	/*----------------------------------------------------------------------------------*/
	public int get_marks(int reg, int math1, int english1, int hindi1, int science1, int ss1, int cs1) {
		// TODO Auto-generated method stub
		int row=D1.insert_marks(reg,math1,english1,hindi1,science1,ss1,cs1);
		return row;
	}
	/*-----------------------------------------------------------------------------*/ 
	/*--------------------------EDITING MARKS--------------------------------------------*/ 
	/*----------------------------------------------------------------------------------*/
	public int edit_marks(int reg, int math1, int english1, int hindi1, int science1, int ss1, int cs1) {
		int row=D1.edit_student_marks(reg,math1,english1,hindi1,science1,ss1,cs1);
		return row;
	}

	/*----------------------------------------------------------------------------------*/ 
	/*-------------------------UPLOADING OPERATIONS-------------------------------------------*/ 
	/*----------------------------------------------------------------------------------*/	
	public int upload(byte[] arr,String title) 
	{
		return D1.upload(arr,title);
	}
	public InputStream getFile(String name) 
	{
		// TODO Auto-generated method stub
		return D1.getfile(name);
	}
			
}
/*------------------------------------------------------------------------------------*/ 
/*---------------------------------------------------------------------------------*/ 
/*----------------------------------------------------------------------------------*/	
	
	
