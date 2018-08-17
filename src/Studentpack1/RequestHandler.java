package Studentpack1;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mail.Mailwali;


/*----------------------------------------------------------------------------------*/
@Controller //for ever class
public class RequestHandler
{
	private ServiceLayer sl;
	

	@Autowired
	private Mailwali mail1;
	
	@Autowired//wires to bean with same attributes
	public void setSl(ServiceLayer sl) {
		this.sl = sl;
		
		
	}
	private final String adminmail="portalstudentassessment@gmail.com";
  /*-------------------------------student registration---------regno------------------------------------------*/
	@RequestMapping("registration")//registration is id onlogin page
	public ModelAndView getSignup(@RequestParam("name") String name,@RequestParam("username") String username,@RequestParam("regno") int regno, @RequestParam("password") String password, @RequestParam("class1") String class1
			,@RequestParam("phone") int phone,@RequestParam("mail") String mail
			,@RequestParam("address") String address,@RequestParam("fname") String fname,
			@RequestParam("mname") String mname,@RequestParam("age") int age,@RequestParam("group1") String group1)//Doubt
		{
	//Getting the values in the objects from HTMl page
			
		
	 int  output=sl.getSignup(name,username,regno,password,class1,phone,mail,address,fname,mname,age,group1);//a function with 4 arguments
	 
	 System.out.println(output +"  request");
	 
	 ModelAndView view =new ModelAndView();
	 
	 if(output>0)//if registration is successfull then
	    {mail1.sendMail(adminmail, mail, name,name+"! You have signed up successfully your credentials are "+username+"and"+password);
		view.addObject("key1",name+"You have signed up successfully");
		}
	 
	 else//If not then
	   {
		view.addObject("key1",name+"Registration failed Kindly try again");
	   }
	    view.setViewName("login.jsp");
		return view;//causes return to original page
	
	 }
	/*------------------------------teacher registration1----------------------------------------*/ 
	/*--------------------------------------------------------------------------------------------*/
	
	@RequestMapping("registration1")//registration is id onlogin page
	public ModelAndView getSignup_teacher(@RequestParam("regno") String RegNo,@RequestParam("name") String Name, @RequestParam("password") String password, @RequestParam("username") String Username
    ,@RequestParam("phone") int phone,@RequestParam("mail") String mail
	 ,@RequestParam("address") String address,@RequestParam("specialization") String specialization,
	 @RequestParam("age") int age,@RequestParam("group1") String group1)//Doubt
		{
		 int  output1=sl.getSignup_teacher1(RegNo,Name,password,Username,phone,mail,address,specialization,age,group1);
		 
		 System.out.println(output1 +"  request");
		 
		 ModelAndView view =new ModelAndView();
		 
		 if(output1>0)//if registration is successfull then
		    { mail1.sendMail(adminmail, mail, Name,Name+"! You have signed up successfully your credetials are"+Username+password);
			view.addObject("key1",Name+"You have signed up successfully");
			}
		 
		 else//If not then
		   {
			view.addObject("key1",Name+"Registration failed Kindly try again");
		   }
		    view.setViewName("teacher_registration.jsp");
		    return view;
		}
	
	
	/*-----------------------end of registrations----------------------------------------*/ 
	/*--------------------------studentlogin--------------------------------------------*/ 
	/*----------------------------------------------------------------------------------*/ 
	@RequestMapping("login")//registration is id onlogin page
	ModelAndView getLogin(HttpServletRequest  req)//HTTP helps in fetching from HTML to .java
		{
	String username=req.getParameter("formInputid");//Getting the values in the objects from HTMl page
	String password=req.getParameter("formInputpass");
	/*----------------------------------------------------------------------------------*/		
	 ModelAndView view =new ModelAndView();
	 HttpSession session=req.getSession();
	 if(session.getAttribute("user")==null) {
			List<user> li=sl.getLogin(username,password);
			int size=li.size();
			System.out.println(size);
			if(li.size()>0) {
				session.setAttribute("user",username);
				String specialchar =Character.toString(username.charAt(0));
				switch (specialchar) {
				case "S":
					view.setViewName("studentloginsuccess.jsp");
					view.addObject("key",username);
					break;
				case "T":
					view.setViewName("teacherloginsuccess.jsp");
					view.addObject("key",username);
					break;
				case "A":
					view.setViewName("adminsuccess.jsp");
					view.addObject("key",username);
					break;
				}
			}
			else {
				view.setViewName("login.jsp");
				view.addObject("key1","invalid username or password....!");
			}
			
		}
		else {
			view.setViewName("login.jsp");
			view.addObject("key1","logout first...!");
			
		}
		return view;
	
	 }
	/*---------------------------------------------------------------------------------*/ 
	/*--------------------------Logout--------------------------------------------*/ 
	/*----------------------------------------------------------------------------------*/

@RequestMapping("logout")
ModelAndView getLogout(HttpServletRequest req) {
	ModelAndView view =new ModelAndView();
	HttpSession session=req.getSession();
	Object o=session.getAttribute("user");
	if(o!=null) {
		session.removeAttribute("user");
		view.setViewName("login.jsp");
	}
	else {
		view.setViewName("login.jsp");
		view.addObject("key2","login first...!");
	}
	return view;
	}

/*-----------------------teacher_login_success----------------------------------------*/ 
/*--------------------------personal detail delete--------------------------------------------*/ 
/*----------------------------------------------------------------------------------*/ 
@RequestMapping("sdelete")
public ModelAndView Delete_student_rec(HttpServletRequest req) {
	int reg=Integer.parseInt(req.getParameter("reg"));
	int reg1=sl.Delete_student_data(reg);
	ModelAndView view =new ModelAndView();
	if(reg1>0) {
	view.addObject("key1","DELETED SUCCESSFULLY");
	view.setViewName("deletestudent.jsp");}
	else{
		view.addObject("key1","FAILED TO DELETE");
		view.setViewName("deletestudent.jsp");
	}
	return view;

}
/*--------------------------personal detail update--------------------------------------------*/ 
/*----------------------------------------------------------------------------------*/ 

@RequestMapping("update_s")
public ModelAndView Update_student_rec(HttpServletRequest req) {
	int reg=Integer.parseInt(req.getParameter("regno"));
	String name=req.getParameter("name");
	String cls1=req.getParameter("class1");
	int mob=Integer.parseInt(req.getParameter("phone"));
	String mail1=req.getParameter("mail");
	String add=req.getParameter("address");
	int age1=Integer.parseInt(req.getParameter("age"));
	int update1=sl.Update_student_data(reg,name,cls1,mob,mail1,add,age1);
	ModelAndView view =new ModelAndView();
	if(update1>0) {
	view.addObject("key1","UPDATED SUCCESSFULLY");
	view.setViewName("updatestudent.jsp");}
	else{
		view.addObject("key1","FAILED TO UPDATE");
		view.setViewName("updatestudent.jsp");
	}
	return view;

}
/*--------------------------Show on teacher loginsuccess--------------------------------------------*/ 
/*-------------------------------------------------------------------------------------------*/ 
/*--------------------------academic marks show--------------------------------------------*/ 
/*-----------------------------------------------------------------------------------------*/ 

@RequestMapping("/acad_view")  
public ModelAndView acad_view(HttpServletRequest req)
{ 
	int reg1=Integer.parseInt(req.getParameter("regno"));
  
	List<academics> list=sl.getmarks1(reg1);
	/*List<medical>list2=sl.getmedical(reg1);
	List<overall>list3=sl.getoverall(reg1);*/
	
	
   ModelAndView view =new ModelAndView();
  if(list.size()>0) {
  view.addObject("key3",list);
  /*view.addObject("key5",list2);
  view.addObject("key6",list3);*/
  view.setViewName("viewacademics.jsp");}
 
 else {
	 view.addObject("key3","No data found");
	 view.setViewName("viewacademics.jsp"); 
	 
	 
 }
 return view;
 
}

/*-------------------------------------------------------------------------------------*/ 
/*--------------------------getting student details--------------------------------------------*/ 
/*----------------------------------------------------------------------------------*/
@RequestMapping("/getdetails")  
public ModelAndView overall_view(HttpServletRequest req)
{ 	HttpSession session=req.getSession();
	System.out.println(session.getAttribute("user"));
	String usern = (String) session.getAttribute("user");
	/*int reg1=Integer.parseInt(req.getParameter("regno"));*/
	List<overall>list3=sl.getoverall(usern);
	
	
   ModelAndView view =new ModelAndView();
  if(list3.size()>0) {
 
  view.addObject("key6",list3);
  view.setViewName("stu_personal_detail.jsp");}
 
 else {
	 view.addObject("key6","No data found");
	 view.setViewName("stu_personal_detail.jsp"); 
	 
	 
 }
 return view;
 
}


/*-----------------------for viewing medical details----------------------------------------*/ 
/*----------------------------------------------------------------------------------*/ 
/*----------------------------------------------------------------------------------*/
@RequestMapping("/medical_view")  
public ModelAndView medical_view(HttpServletRequest req)
{ 
	int reg1=Integer.parseInt(req.getParameter("regno"));
	List<medical>list2=sl.getmedical(reg1);
   ModelAndView view =new ModelAndView();
  if(list2.size()>0) {
  view.addObject("key5",list2);
  view.setViewName("medicalview.jsp");}
 
 else {
	 view.addObject("key5","No data found");
	 view.setViewName("medicalview.jsp"); 
	 
	 
 }
 return view;
 
}

/*--------------------------For viwing sports details--------------------------------------------*/ 
/*----------------------------------------------------------------------------------*/

@RequestMapping("/sports_view")  
public ModelAndView sports_view(HttpServletRequest req)
{ 
	int reg1=Integer.parseInt(req.getParameter("regno"));
	List<sports> list1=sl.getsports1(reg1);
  ModelAndView view =new ModelAndView();
  if(list1.size()>0) {
  view.addObject("key4",list1);
  
  view.setViewName("viewsports.jsp");}
 
 else {
	 view.addObject("key4","No data found");
	 view.setViewName("viewsports.jsp"); 
	 
	 
 }
 return view;
 
}




/*--------------------------------------Deletion operation--------------------------------*/ 
/*------------------------------------------------------------------------*/ 

@RequestMapping("/delete_t")
public ModelAndView Delete_teacher_rec(HttpServletRequest req) {
	int reg=Integer.parseInt(req.getParameter("regno"));
	int reg1=sl.Delete_teacher_data(reg);
	ModelAndView view =new ModelAndView();
	if(reg1>0) {
	view.addObject("key1","DELETED SUCCESSFULLY");
	view.setViewName("deleteteacher.jsp");}
	else{
		view.addObject("key1","FAILED TO DELETE");
		view.setViewName("deleteteacher.jsp");
	}
	return view;

}


/*--------------------------show all teachers--------------------------------------------*/ 
/*-----------------------------------------------------------------------------------------*/ 

@RequestMapping("/show_all_teachers")  
public ModelAndView Show_teacher_rec(HttpServletRequest req){
	List<teacherdetails>list=sl.getdetails();
	ModelAndView view =new ModelAndView();
	if(list.size()>0) {
	view.addObject("key4",list);
	 view.setViewName("list_of_teachers.jsp");
	}
	else {
		view.addObject("key4","NO DATA FOUND!!!!");
		 view.setViewName("list_of_teachers.jsp");
		
	}
	return view;
}
/*-------------------------------------------------------------------------------*/ 
/*------------------------------Sending Mail------------------------------------------------*/ 
/*----------------------------------------------------------------------------------*/
@RequestMapping("sendmail")
public ModelAndView Student_feedback(HttpServletRequest req) {
	String addmail=req.getParameter("mailadd");
	String studentfeedback=req.getParameter("sfeedback");
	ModelAndView view =new ModelAndView();
	int  output1=sl.getfeedback_student(addmail,studentfeedback);
	 
	 System.out.println(output1 +"  request");
	 
	 if(output1>0)//if registration is successfull then
	    { mail1.sendMail(adminmail,addmail,studentfeedback,"Please report  me ASAP!!!!!!");
		view.addObject("key1","Feedback sent successfully");
		}
	 
	 else//If not then
	   {
		view.addObject("key1","failed to send Feedback Kindly try again");
	   }
	    view.setViewName("messages.jsp");
	    return view;
}

/*----------------------------------------------------------------------------*/ 
/*--------INSERTION OF TEACHER MEDICAL DETAILS---------------------------------*/ 
/*----------------------------------------------------------------------------------*/
@RequestMapping("medical")
public ModelAndView Medical_report(HttpServletRequest req) {
	int reg=Integer.parseInt(req.getParameter("reg"));
	String bgrp=req.getParameter("bloodgrp");
	String abnormal=req.getParameter("abnor");
	String immune=req.getParameter("imdate");
	String aller=req.getParameter("allergy");
	ModelAndView view =new ModelAndView();
	int output=sl.get_medicalrecord(reg,bgrp,abnormal,immune,aller);
	if(output>0) {
		view.addObject("key2","record inserted  successfully");
		
	}

	 else//If not then
	   {
		view.addObject("key2","failed to insert record Kindly try again");
	   }
	view.setViewName("Medical.jsp");
    return view;
	
}

/*---------------------------------------------------------------------------------*/ 
/*--------------------------MARK INSERTION----------------------------------------------*/ 
/*----------------------------------------------------------------------------------*/
@RequestMapping("marksinsert")
public ModelAndView Marks_report(HttpServletRequest req) {
	int reg=Integer.parseInt(req.getParameter("reg"));
	int math1=Integer.parseInt(req.getParameter("math"));
	int english1=Integer.parseInt(req.getParameter("eng"));
	int hindi1=Integer.parseInt(req.getParameter("hin"));
	int science1=Integer.parseInt(req.getParameter("sci"));
	int ss1=Integer.parseInt(req.getParameter("sst"));
	int cs1=Integer.parseInt(req.getParameter("cse"));
	ModelAndView view =new ModelAndView();
	int output=sl.get_marks(reg,math1,english1,hindi1,science1,ss1,cs1);
	if(output>0) {
		view.addObject("key2","record inserted  successfully");
		
	}

	 else//If not then
	   {
		view.addObject("key2","failed to insert record Kindly try again");
	   }
	view.setViewName("marks.jsp");
    return view;
	
}
/*---------------------------------------------------------------*/ 
/*--------------------------EDITING MARKSHEET--------------------------------------------*/ 
/*----------------------------------------------------------------------------------*/
@RequestMapping("editmarksinsert")
public ModelAndView editMarks_report(HttpServletRequest req) {
	int reg=Integer.parseInt(req.getParameter("reg"));
	int math1=Integer.parseInt(req.getParameter("math"));
	int english1=Integer.parseInt(req.getParameter("eng"));
	int hindi1=Integer.parseInt(req.getParameter("hin"));
	int science1=Integer.parseInt(req.getParameter("sci"));
	int ss1=Integer.parseInt(req.getParameter("sst"));
	int cs1=Integer.parseInt(req.getParameter("cse"));
	ModelAndView view =new ModelAndView();
	int output=sl.edit_marks(reg,math1,english1,hindi1,science1,ss1,cs1);
	if(output>0) {
		view.addObject("key2","record Updated  successfully");
		
	}

	 else//If not then
	   {
		view.addObject("key2","failed to Update record Kindly try again");
	   }
	view.setViewName("Editmarks.jsp");
    return view;
	
}
/*------------------------------------------------------------------------------*/ 
/*--------------------------FILE-UPLOADING--------------------------------------------*/ 
/*----------------------------------------------------------------------------------*/
@RequestMapping(value="upload",method=RequestMethod.POST)
public ModelAndView meth(@RequestParam("file") CommonsMultipartFile file,@RequestParam("title") String title ,HttpSession session,HttpServletRequest req)
{
	
	
	ModelAndView mv = new ModelAndView();
	String fname=file.getOriginalFilename();
	
	
	System.out.println(fname);
	System.out.println(file.getStorageDescription());
	
	byte []arr=file.getBytes();
	
	int i = sl.upload(arr,title);
	
	if(i>0)
	{
		mv.addObject("k1","uploaded");
	}
	else
	{
		mv.addObject("k1","not uploaded");
	}
	
	mv.setViewName("Assignments.jsp");
	
return mv;
}
/*-----------------------------------------------------------------------------*/ 
/*--------------------------FILE DOWNLOADING OPERATIONS--------------------------------------------*/ 
/*----------------------------------------------------------------------------------*/

@RequestMapping("download")
public ModelAndView download(HttpServletRequest req,HttpServletResponse res)
{
	String filename="new.pdf";
	String subject=req.getParameter("subject");
	ModelAndView mv = new ModelAndView();
	InputStream filestream=sl.getFile(subject);
	int fileLength=0;

	if(filestream!=null)
	{
		try {

			ServletContext ct = req.getServletContext();
			fileLength=filestream.available();

			String mimeType = ct.getMimeType(filename);
			if (mimeType == null) {        
				mimeType = "application/octet-stream";
			}              

			res.setContentType(mimeType);
			res.setContentLength(fileLength);
			String headerKey = "Content-Dfilestreamposition";
			String headerValue = String.format("attachment; filename=\"%s\"", filename);
			res.setHeader(headerKey, headerValue);

			OutputStream outStream = res.getOutputStream();
			byte[] buffer = new byte[1024];
			int bytesRead = -1;



			while ((bytesRead = filestream.read(buffer)) != -1) {
				outStream.write(buffer, 0, bytesRead);
			}


			filestream.close();
			outStream.close(); 



		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	else
	{
		mv.addObject("k1","file nhi aayi");
	}

	mv.setViewName("home.jsp");

	return mv;
}
}
/*--------------------------Show on teacher loginsuccess--------------------------------------------*/ 
/*-----------------------------------------------------------------------*/ 
/*--------------------------academic marks show--------------------------------------------*/ 
/*-----------------------------------------------------------------------------------------*/ 


	
	
