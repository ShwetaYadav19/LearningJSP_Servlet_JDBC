package com.luv2code.mvctwo;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {
	
	public List<Student> getStudents(){
		List<Student> students=new ArrayList<Student>();
		students.add(new Student("Mary","Public","mary@luv2code.com"));
		students.add(new Student("John","Doe","john@luv2code.com"));
		students.add(new Student("Ajay","Rao","ajay@luv2code.com"));
		return students;
		
	}

}
