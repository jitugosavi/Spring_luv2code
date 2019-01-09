package com.luv2code.springdemo.mvc;

import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Value("#{countryOptions}")
	private Map<String, String> countryOptions;
	
	@RequestMapping("/showForm")
	public String showForm(Model theModel) {

		// create the new student object
		Student theStudent = new Student();

		// add the student object to model
		theModel.addAttribute("student", theStudent);
		
		// add the country options to model
		theModel.addAttribute("theCountryOptions", countryOptions);

		return "student-form";
	}

	
	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute("student") Student theStudent) {
		
		// log the input data
		System.out.println("theStudent.getFirstName " + theStudent.getFirstName());
		System.out.println("theStudent.getLastName " + theStudent.getLastName());
		System.out.println("theStudent.getLastName " + theStudent.getCountry());
		System.out.println("theStudent.getFavoriteLanguage" + theStudent.getFavoriteLanguage());
		System.out.println("theStudent.getOperatingSystems" + theStudent.getOperatingSystems());
		return "student-confirmation";
	}


}
