# Database-Design-Development-1622
Introduction   
   	This report discusses some of the database theory and my understanding of ANSI-SPARC database and architecture and my logic design for the given scenario. In the report, aspects of the database such as the relationship between entities, ERD, Physical design are mentioned.   
Definition   
   	A database is a collection of related information stored on a storage medium that is accessible by one or more software, is not duplicated and is uniquely structured with any software to respond. meet the needs of different users. (Garcia-Molina, (2000) ) 
   
Why do we need database?   
- There are many advantages of database management system. Some of the advantages are listed later:   
1.	Centralized data management:   
•  In DBMS all files are Integration into one system thus reducing redundancies and making data management more efficient   
2.	Data Independence.   
3.	System Integration (Sumathi, Esakkirajan, 2007)   
Problem Statement   
The scenario gave requires a database designed for an Attendance System to connect students and schools. The system is divided into classes, Attendance, Student, Enrollment. This site provides data such as class search and class information time, location, scores, and information exchanged between the school and students.   
User Requirement   
-	Students require the attendance system to display the class schedule, clearly see whether the status is present or absent during the class. See the schedule in the near future like the start and end dates of the course and the study location. And students require a detailed report for each subject    
-	Teachers require the attendance system such as displaying the student's name, student ID number of each class and each subject. And there is a comment section for each student 
who is late or absent from the allowed percentage, present or absent for each student in that class.    
System Requirement   
-	Maximum user requirements for a system attendance that lists 40 students in a class   
-	The service quality of the attendance system is always good despite the addition of entities such as students and classrooms. The system must always protect the island and are not blocked activity data   
Solution   
ERD   
What is ERD model?   
The ERD model is abbreviated by the Entity Relationship Diagram, which is referred to as the combined entity model or link entity. This model is also known as ER (short for Entity   
Relationship model). So, what is model ER? The ERD or ER model includes entities, associations, and especially attribute lists.   
Inside:   
- Entity is understood as lists that need to be managed and have specific characteristics such as names and attributes.   
   
•  So, first, look in the entities. Right from the first two lines can spot two entities Yearlevel and Student, and then we have Visitor which is Subject and the Attendance, so that’s 4 entities, I’m going to add the Class and Slot because it is an important part when working Attendance System. All in all, the first simple ERD will have 5 entities Yearlevel, Student, subject, attendance, and class with each of their attributes below.   
![image](https://user-images.githubusercontent.com/94780400/144753338-89fd0a0d-511a-42d0-af7b-7a164d72c645.png)
Right from the start, you can already see that there will be redundancy because the attributes   
YearlevelID are repeated in the Student table so I will put the YearlevelID in the Student table as a  FK(Foreign Key) and connect the two table with a one to many connections   
![image](https://user-images.githubusercontent.com/94780400/144753344-9fd5238f-d336-4947-bdaf-7e61e59b40e4.png)
Now let’s solve the problem between Attendance and Student, Class, and slot this is a one to many relationships so there will be an additional table, but that’s not the problem, when an Attendance have much same Student, the StudentID and StudentName will be repeated, causing redundancies; we also need to know the quantity of the student, having said all of that, this is how it should look :   
![image](https://user-images.githubusercontent.com/94780400/144753350-b444d812-c042-4e21-8e7d-348db0232ad3.png)
![image](https://user-images.githubusercontent.com/94780400/144753352-3440b6df-40e1-4d1b-ab8f-c8bf8669cfb4.png)
![image](https://user-images.githubusercontent.com/94780400/144753354-2c27598e-a2bd-4b25-b75f-f1d1cf5f3c8f.png)
References  
-	Sumathi, S., & Esakkirajan, S. (2007). Fundamentals of relational database management systems (Vol. 47). Springer.  
-	Garcia-Molina, H., Ullman, J. D., & Widom, J. (2000). Database system implementation (Vol. 672). Upper Saddle River, NJ:: Prentice Hall.  
