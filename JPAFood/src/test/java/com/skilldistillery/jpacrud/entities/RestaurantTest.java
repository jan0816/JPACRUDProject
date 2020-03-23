package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class RestaurantTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Restaurant restaurant;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JamesBeardPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();

	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		restaurant = em.find(Restaurant.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		restaurant = null;
	}
	@Test
	void test_Restaurant_entity_mappings() {
		assertNotNull(restaurant);
		assertEquals("2020", restaurant.getNominatedYear());
		assertEquals("Best New Restaurant", restaurant.getNominationTitle());
		assertEquals("Sunday Vinyl", restaurant.getName());
		assertEquals("European-style wine bar", restaurant.getCuisineType());
		assertEquals("1803 16th Street, Denver, CO 80202", restaurant.getAddress());
		assertEquals("Chef Lachlan Mackinnon-Patterson & Frasca Hospitality Group", restaurant.getChefHospitalityGroup());
		assertEquals("https://www.sundayvinyl.com/", restaurant.getWebsite());
	}
}
