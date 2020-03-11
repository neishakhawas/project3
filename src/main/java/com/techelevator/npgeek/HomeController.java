package com.techelevator.npgeek;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(path ="/")
public class HomeController {
	

	
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String goHomePage() {
		
		
		return "homePage";
	}
	
	
	@RequestMapping(path = "homePage", method = RequestMethod.POST)
	public String goHomePage(HttpSession userSesh, @RequestParam String tempChoice) {
		
		userSesh.setAttribute("temp", tempChoice);
		
		return "redirect:detailspage";
	}
	
	
	
	@RequestMapping(path="detailsPage", method = RequestMethod.GET)
	public String goDetails(HttpSession userSesh) {
		
		return "detailsPage";
		
	}
	
	@RequestMapping(path="detailsPage", method = RequestMethod.POST)
	public String startSurvey(HttpSession userSesh) {
		
		return "redirect:survey";
	}
	
	
	@RequestMapping(path="survey", method = RequestMethod.GET)
	public String goSurvey(HttpSession userSesh, ModelMap model) {
		
		model.addAttribute("survey", new Survey());
		
		return "survey";
	
}
	
	@RequestMapping(path="survey", method = RequestMethod.POST)
	public String submitSurvey(@Valid @ModelAttribute("survey") Survey userSurvey, HttpSession userSesh, 
									BindingResult userEntry, RedirectAttributes flash) {
		
		if(userEntry.hasErrors()) {
			flash.addAllAttributes("survey", userSurvey);
			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "survey" + userEntry);
			
			return "survey";
		}
		
		return "redirect:favoriteParks";
		
		
	}
	
	
	@RequestMapping(path="favoriteParks",method = RequestMethod.GET)
	public String goFavoriteParks() {
		
		return "favoriteParks";
		
	}
	
	
	
	
	

}
