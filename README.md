# DB_Library_Management_System



**Introduction**: The main purpose of this project is to create a DBMS (database management system) for Library. The system requires to perform the following functions: managing library branches, managing current books in the library, checking out, returning the books, Registering memberships, Managing the members ( current checked books, returned books, borrowing histories), and etc. 

**The following ER Diagrams, and Relational Database Schema contains 5 entities:** BOOK, PUBLISHER, LIBRARY_BRANCH, BOOK_COPY, and BORROWER.
Library Branches has a Book Copies, Book copies has book which published by Publisher, Book copies can be involved in Borrowed books which lent to Borrower. 

**Here are the basic functions that this Library DBMS can do:**
In order to add new books, the information of book’s publisher, book’s and book copies information will be saved to the database. 
The book can be searched through Title, ISBM ( indicated as Book ID), and other options ( publishers, years)<br/>
Manages the copies of book ( how many they have in total, availabilities)<br/>
Managing the members<br/>
Checking out book<br/>
Returning book<br/>
Managing book’s checking history <br/>
Tracking the due date<br/>
Managing the due date<br/>
Managing Library Branch <br/>


#### Assumption for ER Diagram 
The library has multiple Library Branches such as kids library, literature library, science library,,,, They could have same address, but have unique branchID. 
Each book has Single main Publisher (author) 
Each book has unique number ( also called as ISBN)
Each book has multiple book copies ( has unique number, different from Book ID). 
Borrowers have maximum number of book they can borrow ( set by the library).
Borrowers can borrow multiple books at a one time, but systemically will be checked out one by one. 
Book id, and copy id definitely NOT SAME. 


**ER Diagram:**
![image](https://github.com/user-attachments/assets/0aea62be-e149-4af5-922c-49704b37e596)


**Task 1**: inserting Book, Borrowers, Publisher, and Library Data into DataBase

**Python code**: insert_csv_to_sql.py
We made a Python code inserting all the CSV files into our selectable database. 
The code is attached below.
**Purpose**: Insert all the CSV files to {selected}.DB 

**How **this** works**: python code reads all the CVS files from the intended address in the counter and reads all files together through the Pandas library. 

**Challenges**: we could insert one CSV file to db, one by one, for each copy. However, we did not know how to insert all the CSV file all together at a one time. So, we used the power of Pandas library, so that we could read all CSV files easily, and insert into our selected db at one time. 

![image](https://github.com/user-attachments/assets/1ff9f611-8c74-4533-9f0e-8c99302c7191)


**result:**
![image](https://github.com/user-attachments/assets/413b0c95-10a1-45aa-a92b-89248c042ff8)
![image](https://github.com/user-attachments/assets/d72a5743-c7cc-4443-a2d4-d63eff5d7e75)
![image](https://github.com/user-attachments/assets/50bcbc68-5aa9-49fe-bd38-a65d1d4b341c)





# GUI DB Management System

###Task 1 : Checking our from GUI
![image](https://github.com/user-attachments/assets/e06c3064-1085-4b27-9640-0ccfc715e21a)

![image](https://github.com/user-attachments/assets/b5131118-5697-49ec-9bbb-3f5bf7f5f518)
![image](https://github.com/user-attachments/assets/59294524-be85-4631-bbea-28884057c1f6)

###Adding New Borrowers
![image](https://github.com/user-attachments/assets/68380982-f2ea-4167-b790-91822249b5f1)

![image](https://github.com/user-attachments/assets/023eb814-0869-4d3f-924b-00f7e6fa9309)



###Adding New Books
![image](https://github.com/user-attachments/assets/8e5d3fe2-7ce8-4370-8d49-f712ca2d04c5)
![image](https://github.com/user-attachments/assets/f1b99796-b722-4528-b3b6-c2e4b0a1412a)

###Searching Book Loan History
![image](https://github.com/user-attachments/assets/fef2f040-564d-4dc6-9cf4-2868f2e0188d)

###Checking which Book had been returned & if returned late, then many days the book returned late
![image](https://github.com/user-attachments/assets/cbc0b124-3201-49a8-affd-9d10e93ce891)


###Search for any book that has not return & late fee using BORROWER information
![image](https://github.com/user-attachments/assets/07cf65d3-785b-4680-ae43-578a6ef8ad8a)
![image](https://github.com/user-attachments/assets/b2aaacb1-e547-45c4-930a-fa47be6133b3)


