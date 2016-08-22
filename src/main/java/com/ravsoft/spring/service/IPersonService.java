package com.ravsoft.spring.service;

import java.util.List;

import com.ravsoft.spring.model.Person;

public interface IPersonService {

	public void addPerson(Person p);
	public void updatePerson(Person p);
	public List<Person> listPersons();
	public Person getPersonById(int id);
	public void removePerson(int id);
	
}
