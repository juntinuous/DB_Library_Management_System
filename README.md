# DB_Library_Management_System



Introduction: The main purpose of this project is to create a DBMS (database management system) for Library. The system requires to perform the following functions: managing library branches, managing current books in the library, checking out, returning the books, Registering memberships, Managing the members ( current checked books, returned books, borrowing histories), and etc. 

The following ER Diagrams, and Relational Database Schema contains 5 entities: BOOK, PUBLISHER, LIBRARY_BRANCH, BOOK_COPY, and BORROWER. Library Branches has a Book Copies, Book copies has book which published by Publisher, Book copies can be involved in Borrowed books which lent to Borrower. 

Here are the basic functions that this Library DBMS can do: 

In order to add new books, the information of book’s publisher, book’s and book copies information will be saved to the database. 
The book can be searched through Title, ISBM ( indicated as Book ID), and other options ( publishers, years)
Manages the copies of book ( how many they have in total, availabilities)
Managing the members
Checking out book
Returning book
Managing book’s checking history
Tracking the due date
Managing the due date
Managing Library Branch 



Assumption for ER Diagram : 
Library has multiple Library Branches such as kids library, literature library, science library,,,, They could have same address, but have unique branchID. 
Each book has Single main Publisher (author) 
Each book has unique number ( also called as ISBN)
Each book has multiple book copies ( has unique number, different from Book ID). 
Borrowers have maximum number of book they can borrow ( set by the library).
Borrowers can borrow multiple books at a one time, but systemically will be checked out one by one. 
Book id, and copy id definitely NOT SAME. 
![image](https://github.com/user-attachments/assets/0aea62be-e149-4af5-922c-49704b37e596)


