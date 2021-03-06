package com.biz.adm.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.biz.adm.pojo.Applicant_Edit;
import com.biz.adm.pojo.Applicant_Register;
import com.biz.adm.pojo.LoginForm;
import com.biz.adm.service.Applicant_Register_Service;


@Controller
public class ApplicantRegisterController {
	@Autowired
	private Applicant_Register_Service applicantService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	
//main page
		
		/*@RequestMapping("/adduser")
		public ModelAndView getName(@ModelAttribute("applicant") Applicant_Register applicant,BindingResult result) 
		{
			
			return new ModelAndView("UserList");
		}	*/
	
//front page of admission process
	
	@RequestMapping("/adm_mainpage")
	public ModelAndView getMainPage(@ModelAttribute("applicant") Applicant_Register applicant,BindingResult result) 
	{
		
		return new ModelAndView("adm_LoginPage");
	}

	
//login controller
	
	@RequestMapping(value = "/loginform",method = RequestMethod.GET)
    public String showForm(Map model) {
            LoginForm loginForm = new LoginForm();
            model.put("loginForm", loginForm);
            return "adm_loginform";
    }

    @RequestMapping(value = "/loginform",method = RequestMethod.POST)
    public String processForm(@Valid LoginForm loginForm, BindingResult result, Map model) {

            
            if (result.hasErrors()) {
                    return "adm_loginform";
            }
            
            boolean userExists = applicantService.checkLogin(loginForm.getUserName(),
            loginForm.getUserPassword());
            if(userExists){
                    model.put("loginForm", loginForm);
                    return "adm_Home_Page";
            }else{
                    result.rejectValue("userName","invaliduser");
                    return "adm_loginform";
            }

    }
	
    
  //sending mail for final list candidates
 	
   	@RequestMapping("/sending")
   	public ModelAndView sentMail(@ModelAttribute("applicant") Applicant_Edit applicantBean,BindingResult result)
   	{
   		
   	 Map<String, Object> model = new HashMap<String, Object>(); 
   	 System.out.println("applicant id="+applicantBean.getApplicant_ID());
   	 Applicant_Register e1=new Applicant_Register();
   	 e1=applicantService.getApplicant(applicantBean.getApplicant_ID());
   	 System.out.println(e1.getApplicant_ID());
   	 System.out.println(e1.getEmail_ID());
     model.put("applicants",e1);
   	 return new ModelAndView("adm_EmailForm", model); 	
   		 
   		//return new ModelAndView("adm_EmailForm");
   	}
    
    //mail controller
    	
    	@RequestMapping(value = "/sendEmail",method = RequestMethod.POST)
    	public String doSendEmail(HttpServletRequest request) {
    		// takes input from e-mail form
    		String recipientAddress = request.getParameter("recipient");
    		String subject = request.getParameter("subject");
    		String message = request.getParameter("message");
    		
    		// prints debug info
    		System.out.println("To: " + recipientAddress);
    		System.out.println("Subject: " + subject);
    		System.out.println("Message: " + message);
    		
    		System.out.println("check1");
    		
    		// creates a simple e-mail object
    		SimpleMailMessage email = new SimpleMailMessage();
    		email.setTo(recipientAddress);
    		email.setSubject(subject);
    		email.setText(message);
    		
    		System.out.println("check2");
    		
    		// sends the e-mail
    		mailSender.send(email);
    		
    		
    		
    		System.out.println("check3");
    		// forwards to the view named "Result"
    		return "adm_Result";
    	}

    
    
//adding values for online application form
	
	@RequestMapping("/addapplicant")
	public ModelAndView getRegisterForm(@ModelAttribute("applicant") Applicant_Register applicant,BindingResult result)
	{
		
		return new ModelAndView("adm_OnlineApplicationForm");
		
	}

	
//saving the values into database for online application  form
	
	@RequestMapping("/saveApplicant")
	public ModelAndView saveUserData(@ModelAttribute("applicant")  Applicant_Register applicant,BindingResult result)
	{
		applicantService.addUser(applicant);
		System.out.println("Save User Data");
		
        Map<String,Object> model = new HashMap<String, Object>();
		 
		model.put("applicants", applicantService.getUser());
		
		return new ModelAndView("adm_RegisterationSuccess");
	}	
	
	
//display the values(shortlisted applicant)

     @RequestMapping("/applicantList")
	 public ModelAndView getUserList(@ModelAttribute("applicant") Applicant_Register applicantBean,BindingResult result) 
     {
    	//String tenth_Percentage = request.getParameter("tenth_Percentage");
 	   // String twelth_Percentage = request.getParameter("twelth");
		System.out.println("get shortlisted applicant");
		Map<String, Object> model = new HashMap<String, Object>();
		
		System.out.println("get shortlisted applicant1");
		
		model.put("applicants", applicantService.getUser());
		
		System.out.println("get shortlisted applicant2");
		
		ArrayList<Applicant_Register> al=new ArrayList<Applicant_Register>();
		Iterator itr=al.iterator();
		while(itr.hasNext())
		{
			System.out.println(itr.next());
		}
		
		return new ModelAndView("adm_Shortlisted_Applicant", model);

	}
 	  
     

//editing the values (shortlist)

   	@RequestMapping(value = "/editApplicant", method = RequestMethod.GET)
   	 public ModelAndView editApplicant(@ModelAttribute("applicant") Applicant_Edit applicantBean,BindingResult result) 
   	{
   	 Map<String, Object> model = new HashMap<String, Object>(); 
   	 System.out.println("applicant id="+applicantBean.getApplicant_ID());
   	 Applicant_Register e1=new Applicant_Register();
   	 e1=applicantService.getApplicant(applicantBean.getApplicant_ID());
   	 System.out.println(e1.getApplicant_ID());
   	 System.out.println(e1.getFirst_Name());
     model.put("applicants",e1);
   	 return new ModelAndView("adm_Edit", model); 	
   	 }
   	
   	
//updating the values into database(shortlisted)
	
	@RequestMapping(value = "/updateApplicant", method = RequestMethod.GET)
	 public ModelAndView UpdateEmployee(@ModelAttribute("applicant") Applicant_Register applicant,BindingResult result) 
	{
	 Map<String, Object> model = new HashMap<String, Object>(); 
	 System.out.println("applicant id ="+applicant.getApplicant_ID());
	 System.out.println("applicant first name="+applicant.getFirst_Name()); 
	 applicantService.updateApp(applicant); 
	 model.put("applicants",applicantService.getUser());
	 return new ModelAndView("adm_EmailForm",model);
	 }
	


//display the interview process details

     @RequestMapping("/applicantInterviewList")
	public ModelAndView getInterviewList(@ModelAttribute("applicant") Applicant_Register applicantBean,BindingResult result)
     {	
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("applicants", applicantService.getInterviewUser());
		ArrayList<Applicant_Register> a=new ArrayList<Applicant_Register>();
		Iterator itr=a.iterator();
		while(itr.hasNext())
		{
			System.out.println(itr.next());
		}
		
		return new ModelAndView("adm_Applicant_Interview_Details", model);
	}

     
//editApplicantInterviewDetails 

	@RequestMapping(value = "/editApplicantInterviewDetails", method = RequestMethod.GET)
	 public ModelAndView editApplicantInterviewDetails(@ModelAttribute("applicant") Applicant_Edit applicantBean,BindingResult result)
	{
	 Map<String, Object> model = new HashMap<String, Object>();	 
	 System.out.println("applicant id="+applicantBean.getApplicant_ID()); 
	 Applicant_Register e1=new Applicant_Register();
	 e1=applicantService.getApplicantDetails(applicantBean.getApplicant_ID()); 
	 System.out.println(e1.getApplicant_ID());
	 System.out.println(e1.getFirst_Name());
     model.put("applicants",e1);
	 return new ModelAndView("adm_Edit_InterviewDetailsProcess", model); 	
	 }
	
	
//updating interview details
	
	@RequestMapping(value = "/updateInterviewApplicant", method = RequestMethod.GET)
	  public ModelAndView updateInterviewApplicant(@ModelAttribute("applicant") Applicant_Register applicant,BindingResult result) 
	 {
		 Map<String, Object> model = new HashMap<String, Object>();
		 
		 System.out.println("applicant id ="+applicant.getApplicant_ID());
		 System.out.println("applicant first name="+applicant.getFirst_Name());
		  
		 applicantService.updateApplicant(applicant);
		 model.put("applicants",applicantService.getUser());
		 return new ModelAndView("adm_Applicant_Interview_Details",model);
	  }
		
	


//display the final list

     @RequestMapping("/applicantFinalList")
     	public ModelAndView getFinalList(@ModelAttribute("applicant") Applicant_Register applicantBean,BindingResult result) 
     {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("applicants", applicantService.getFinalUser());
		ArrayList<Applicant_Register> a=new ArrayList<Applicant_Register>();
		Iterator itr=a.iterator();
		while(itr.hasNext())
		{
			System.out.println(itr.next());
		}
		
		return new ModelAndView("adm_Final_Applicant_List", model);

	}
	
     
   

//fetching the values

		@RequestMapping(value = "/fetchApplicant", method = RequestMethod.GET)
		 public ModelAndView fetch(@ModelAttribute("applicant") Applicant_Edit applicantBean,
		 BindingResult result) {
		 Map<String, Object> model = new HashMap<String, Object>();
		 
		 System.out.println("applicant id="+applicantBean.getApplicant_ID());
		 
		 Applicant_Register e1=new Applicant_Register();
		 
		 e1=applicantService.getFetchApplicant(applicantBean.getApplicant_ID());
		 
		 System.out.println(e1.getApplicant_ID());
		 System.out.println(e1.getFirst_Name());
		 
		 System.out.println("check after array list");
		 
	     model.put("applicants",e1);
	     
	     System.out.println("check after model");
	     
		 return new ModelAndView("adm_Applicant_Details", model); 	
		 }
	
		//fetching the values of final list applicants

				@RequestMapping(value = "/fetchFinalList", method = RequestMethod.GET)
				 public ModelAndView fetchFinalList(@ModelAttribute("applicant") Applicant_Edit applicantBean,
				 BindingResult result) {
				 Map<String, Object> model = new HashMap<String, Object>();
				 
				 System.out.println("applicant id="+applicantBean.getApplicant_ID());
				 
				 Applicant_Register e1=new Applicant_Register();
				 
				 e1=applicantService.getFetchApplicant(applicantBean.getApplicant_ID());
				 
				 System.out.println(e1.getApplicant_ID());
				 System.out.println(e1.getFirst_Name());
				 
				 System.out.println("check after array list");
				 
			     model.put("applicants",e1);
			     
			     System.out.println("check after model");
			     
				 return new ModelAndView("adm_FinalList_Details", model); 	
				 }
	
//delete
	
	@RequestMapping("/delete")
	public ModelAndView deleteApplicant(@ModelAttribute("command") Applicant_Register applicant,
			BindingResult result) {
		System.out.println("Delete applicant id="+applicant.getApplicant_ID());
		
		applicantService.deleteApplicant(applicant);
		
		System.out.println("Delete User Data");
			 Map<String,Object> model = new HashMap<String, Object>();
			
			 model.put("applicants", applicantService.getUser());
			 return new ModelAndView("adm_Shortlisted_Applicant", model);
			 }
}
