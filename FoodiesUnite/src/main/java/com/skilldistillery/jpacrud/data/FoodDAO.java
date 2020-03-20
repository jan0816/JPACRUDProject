package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Food;

public interface FoodDAO {

	Food findbyId(int id);
	List<Food> findAll();
}
