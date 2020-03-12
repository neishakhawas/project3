package com.techelevator.npgeek;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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

	@RequestMapping(path = { "/homePage", "/" }, method = RequestMethod.GET)
	public String goHomePage(ModelMap map) {
		List<Park> allParks = parkDAO.getAllParkInformation();
		map.addAttribute("allParks", allParks);

		return "homepage";
	}
<<<<<<< HEAD

	@RequestMapping(path = "homePage", method = RequestMethod.POST)
	public String goHomePage(HttpSession userSesh, @RequestParam String tempChoice) {

		userSesh.setAttribute("temp", tempChoice);
		return "redirect:detailspage";
	}

	@RequestMapping(path = "detailsPage", method = RequestMethod.GET)
	public String goDetailsPage(HttpSession userSesh, ModelMap parksMap) {

		List<Park> listOfParks = parkDAO.getDetailedParkInformation();

		if (userSesh.getAttribute("tempChoice") == "C") {

		}

		return "detailsPage";

=======
	
	
	@RequestMapping(path="detailsPage", method = RequestMethod.GET)
	public String goDetailsPage(ModelMap map, String parkCode) {

		Park onePark = parkDAO.getParkInformationByParkCode(parkCode);
		map.addAttribute("park", onePark);
	
		return "detailpage";
		
>>>>>>> 575960d3d977e3638ed3d843cecad17abd12f979
	}

	@RequestMapping(path = "detailsPage", method = RequestMethod.POST)
	public String startSurvey(HttpSession userSesh) {

		return "redirect:survey";
	}

	@RequestMapping(path = "survey", method = RequestMethod.GET)
	public String goSurvey(HttpSession userSesh, ModelMap model) {

		model.addAttribute("survey", new Survey());

		return "survey";

	}

	@RequestMapping(path = "survey", method = RequestMethod.POST)
	public String submitSurvey(@Valid @ModelAttribute("survey") Survey userSurvey, HttpSession userSesh,
			BindingResult userEntry, RedirectAttributes flash) {

		if (userEntry.hasErrors()) {
			flash.addAttribute("survey", userSurvey);
			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "survey" + userEntry);

			return "survey";
		}

		return "redirect:favoriteParks";

	}

	@RequestMapping(path = "favoriteParks", method = RequestMethod.GET)
	public String goFavoriteParks() {

		return "favoriteParks";

	}

}
