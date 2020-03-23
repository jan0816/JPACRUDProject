package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Restaurant;

public interface RestaurantDAO {

	Restaurant findbyId(int id);
	List<Restaurant> findAll();
	Restaurant create(Restaurant restaurant);
	void addRestaurant(Restaurant restaurant);
	void updateRestaurant(Restaurant restaurant, int id);
	void deleteRestaurant(Restaurant restaurant);
	
}
