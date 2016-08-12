package com.nos.usermg.model;

import java.util.Set;

import javax.persistence.Entity;

@Entity
public class User {
	
	private Integer id;
	private String name;
	private String description;
	private Set<Role> roles;

}
