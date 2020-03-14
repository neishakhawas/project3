package com.techelevator.npgeek;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.projects.model.DailyWeather;
import com.techelevator.projects.model.DailyWeatherDAO;
import com.techelevator.projects.model.Park;
import com.techelevator.projects.model.ParkDAO;
import com.techelevator.projects.model.Survey;
import com.techelevator.projects.model.SurveyDAO;

@Controller
public class HomeController {

	@Autowired
	private ParkDAO parkDAO;
	@Autowired
	private SurveyDAO surveyDAO;
	@Autowired
	private DailyWeatherDAO dailyWeatherDAO;

	@RequestMapping(path = { "/", "/homepage" }, method = RequestMethod.GET)
	public String goHomePage(ModelMap map) {
		
		List<Park> allParks = parkDAO.getDetailedParkInformation();

		map.addAttribute("allParks", allParks);

		return "homepage";

	}

	@RequestMapping(path = "/detailsPage", method = RequestMethod.GET)
	public String goDetailsPage(ModelMap map, String parkCode) {

		Park onePark = parkDAO.getParkInformationByParkCode(parkCode);
		map.addAttribute("park", onePark);

		List<DailyWeather> weather = dailyWeatherDAO.getDailyWeather(parkCode);
		map.addAttribute("weather", weather);
		
		
		return "detailpage";

	}

	@RequestMapping(path = "/detailsPage", method = RequestMethod.POST)
	public String startSurvey(HttpSession session, @RequestParam String tempChoice, @RequestParam String parkCode) {
		session.getAttribute(tempChoice);
		return "redirect:survey";
	}

	@RequestMapping(path = "/survey", method = RequestMethod.GET)
	public String goSurvey(ModelMap model) {

		model.addAttribute("survey", new Survey());
		return "survey";
	
}
	

	@RequestMapping(path = "/survey", method = RequestMethod.POST)
	public String submitSurvey(@Valid @ModelAttribute("survey") Survey userSurvey, HttpSession userSesh,
			BindingResult userEntry, RedirectAttributes flash) {

//
//		if (userEntry.hasErrors()) {
//			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "survey" , userEntry);
//			flash.addAttribute("survey", userSurvey);
//
//			return "redirect:/survey";
//		}

		surveyDAO.createEntry(userSurvey);
		return "redirect:/favoriteparks";

	}

	@RequestMapping(path = "/favoriteparks", method = RequestMethod.GET)
	public String goFavoriteParks(ModelMap map) {
		List<Park> favoriteList = parkDAO.getFavoritesList();
		map.addAttribute("favorite", favoriteList);
		return "favoriteparks";

	}

}
