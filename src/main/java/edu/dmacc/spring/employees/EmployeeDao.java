package edu.dmacc.spring.employees;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;


public class EmployeeDao {
EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("Employees");
	
	public void insertEmployee(Employee employeeToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(employeeToAdd);
		em.getTransaction().commit();
		em.close();
	}

	public List<Employee> getAllEmployees() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String e = "select e from Employee e";
		TypedQuery<Employee> typedQuery = em.createQuery(e, Employee.class);
		List<Employee> all = typedQuery.getResultList();
		return all;
	}
}
