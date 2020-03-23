package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "jamesbeardco")
public class Restaurant {

	// FIELDS
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "nominated_year")
	private Integer nominatedYear;
	@Column(name = "nomination_title")
	private String nominationTitle;
	@Column(name = "name")
	private String name;
	@Column(name = "cuisine_type")
	private String cuisineType;
	@Column(name = "address")
	private String address;
	@Column(name = "chef_hospitality_group")
	private String chefHospitalityGroup;
	@Column(name = "website")
	private String website;

	// METHODS BEGIN:

	public Restaurant() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setNominatedYear(int nominatedYear) {
		this.nominatedYear = nominatedYear;
	}

	public Integer getNominatedYear() {
		return nominatedYear;
	}

	public String getNominationTitle() {
		return nominationTitle;
	}

	public void setNominationTitle(String nominationTitle) {
		this.nominationTitle = nominationTitle;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCuisineType() {
		return cuisineType;
	}

	public void setCuisineType(String cuisineType) {
		this.cuisineType = cuisineType;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getChefHospitalityGroup() {
		return chefHospitalityGroup;
	}

	public void setChefHospitalityGroup(String chefHospitalityGroup) {
		this.chefHospitalityGroup = chefHospitalityGroup;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public Restaurant(int id, Integer nominatedYear, String nominationTitle, String name, String cuisineType,
			String address, String chefHospitalityGroup, String website) {
		super();
		this.id = id;
		this.nominatedYear = nominatedYear;
		this.nominationTitle = nominationTitle;
		this.name = name;
		this.cuisineType = cuisineType;
		this.address = address;
		this.chefHospitalityGroup = chefHospitalityGroup;
		this.website = website;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("restaurant [id=");
		builder.append(id);
		builder.append(", nominatedYear=");
		builder.append(nominatedYear);
		builder.append(", nominationTitle=");
		builder.append(nominationTitle);
		builder.append(", name=");
		builder.append(name);
		builder.append(", cuisineType=");
		builder.append(cuisineType);
		builder.append(", address=");
		builder.append(address);
		builder.append(", chefHospitalityGroup=");
		builder.append(chefHospitalityGroup);
		builder.append(", website=");
		builder.append(website);
		builder.append("]");
		return builder.toString();
	}
}
