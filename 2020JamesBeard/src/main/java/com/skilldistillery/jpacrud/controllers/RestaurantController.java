package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrud.data.RestaurantDAO;
import com.skilldistillery.jpacrud.entities.Restaurant;

@Controller
public class RestaurantController {

	@Autowired
	private RestaurantDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		model.addAttribute("restaurant", dao.findAll());
		System.out.println(dao.findAll());
		return "index";
	}

	@RequestMapping(path = "listAllNominations.do")
	public String showRestaurants(Model model) {
		model.addAttribute("restaurant", dao.findAll());
		return "listAllNominations";
	}

	@RequestMapping(path = "createDisplay.do", method = RequestMethod.POST)
	public String createDisplay(@ModelAttribute("restaurant") Restaurant restaurant, Model model) {
		dao.create(restaurant);
		model.addAttribute("restaurant", restaurant);
		return "createDisplay";
	}

	@RequestMapping(path = "addRestaurant.do", method = RequestMethod.POST)
	public String addRestaurant(Model model) {
		Restaurant restaurant = new Restaurant();
		model.addAttribute("restaurant", restaurant);
		return "addRestaurant";
	}

	@RequestMapping(path = "updateRestaurant.do")
	public String updateRestaurant(@RequestParam("id") int id, Model model) {
		Restaurant restaurantUpdate = dao.findbyId(id);
		model.addAttribute("restaurant", restaurantUpdate);
		return "updateRestaurant";
	}
	
	@RequestMapping(path = "updateDisplay.do", method = RequestMethod.POST)
	public String updatedRestaurant(@ModelAttribute("restaurant") Restaurant restaurant) {
		dao.updateRestaurant(restaurant, restaurant.getId());
		return "redirect:/";
	
	}

	@RequestMapping(path = "delete.do", method = RequestMethod.POST)
	public String deleteRestaurant(@RequestParam("restaurant") int id) {
		Restaurant restaurant = dao.findbyId(id);
		dao.deleteRestaurant(restaurant);
		return "delete";
	}

}
