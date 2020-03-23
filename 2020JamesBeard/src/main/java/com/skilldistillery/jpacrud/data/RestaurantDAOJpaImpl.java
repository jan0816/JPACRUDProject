package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Restaurant;

@Service
@Transactional
public class RestaurantDAOJpaImpl implements RestaurantDAO {

	@PersistenceContext
	EntityManager em;
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("JamesBeardPU");

	@Override
	public Restaurant findbyId(int id) {
		return em.find(Restaurant.class, id);
	}

	@Override
	public List<Restaurant> findAll() {
		String jpql = "SELECT r FROM Restaurant r";
		List<Restaurant> restaurant = em.createQuery(jpql, Restaurant.class).getResultList();
		return restaurant;
	}

	@Override
	public Restaurant create(Restaurant restaurant) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(restaurant);
		em.flush();
		em.getTransaction().commit();
		em.close();
		return restaurant;
	}

	@Override
	public void addRestaurant(Restaurant restaurant) {
		em.persist(restaurant);
		em.flush();
		System.out.println("Restaurant has been added.");
	}

	@Override
	public void updateRestaurant(Restaurant restaurant, int id) {
		String jpql = "SELECT r FROM Restaurant r WHERE r.id = :bindId";
		List<Restaurant> updateRests = em.createQuery(jpql, Restaurant.class).setParameter("bindId", id)
				.getResultList();
		updateRests.get(0).setNominatedYear(restaurant.getNominatedYear());
		updateRests.get(0).setNominationTitle(restaurant.getNominationTitle());
		updateRests.get(0).setName(restaurant.getName());
		updateRests.get(0).setCuisineType(restaurant.getCuisineType());
		updateRests.get(0).setAddress(restaurant.getAddress());
		updateRests.get(0).setChefHospitalityGroup(restaurant.getChefHospitalityGroup());
		updateRests.get(0).setWebsite(restaurant.getWebsite());
		em.flush();
	

	}

	@Override
	public void deleteRestaurant(Restaurant restaurant) {
		System.out.println("Deleting: " + restaurant);
		em.remove(restaurant);
		em.flush();

	}

}
