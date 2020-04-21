package controller;

import java.util.List;
import java.util.Scanner;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import model.Student;

public class MainController {
	static Scanner scn = new Scanner(System.in);
	
	private static EntityManagerFactory emf;
	private static EntityManager em;
	
	public static void main(String[] args) {
		int ch=0;
		emf = Persistence.createEntityManagerFactory("connect");
		do {
			System.out.println("Enter your choice :");
			System.out.println("1. Save the Data");
			System.out.println("2. Delete the data");
			System.out.println("3. search");
			System.out.println("4. Fetch All");
			System.out.println("5. Exit");
			ch=scn.nextInt();
			switch(ch) {
			case 1: doSave();break;
			case 2: doRemove();break;
			case 3: doSearch();break;
			case 4: doFetch();break;
			case 5: break;
			default: System.out.println("Wrong choice");
			}
		}while(ch!=5);
		System.out.println("Exit");
		
	}
	public static void doSave() {
		em = emf.createEntityManager();
		Student student = new Student();
		System.out.println("Enter the name of the student: ");
		student.setStudentName(scn.next());
		System.out.println("Enter the marks of the student: ");
		student.setStudentMarks(scn.nextInt());
		em.getTransaction().begin();
		em.persist(student);
		em.getTransaction().commit();
		em.close();
		System.out.println("Saved");
	}
	public static void doFetch() {
		em = emf.createEntityManager();
		
		String jpql ="From Student_Info";
		List<Student> studentList = em.createQuery(jpql).getResultList();
		System.out.println(studentList);
		em.close();
		System.out.println("Closed");
	}
	public static void doRemove() {
		em = emf.createEntityManager();
		System.out.println("Enter the roll no for delete");
		int roll=scn.nextInt();
		Student stud = em.find(Student.class, roll);
		if(stud==null) {
			System.out.println("No such student is present");
		}
		else {
			em.getTransaction().begin();
			em.remove(stud);
			em.getTransaction().commit();
			System.out.println("Remove successfully");
		}
		
		em.close();
		
	}
	public static void doSearch() {
		em = emf.createEntityManager();
		System.out.println("Enter the roll no for search");
		int roll=scn.nextInt();
		Student stud = em.find(Student.class, roll);
		if(stud==null) {
			System.out.println("No such student is present");
		}
		else {
			System.out.println(stud);
			System.out.println("Searched");
		}
		em.close();
	}
}
