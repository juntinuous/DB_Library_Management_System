-- problem 1
INSERT INTO Borrower (Name, Address, Phone)
VALUES ('Harsh', '800 W Border St, Arlington, TX 76102', '817-905-0255');

-- problem 2
UPDATE Borrower
SET Phone = '837-721-8965'
WHERE Name = 'Harsh';

-- problem 3
UPDATE Book_Copies
SET No_Of_Copies = No_Of_Copies + 1
WHERE Branch_Id = (SELECT Branch_Id FROM Library_Branch WHERE Branch_Name = 'East Branch');

-- problem 4-a
INSERT INTO Book (Title, Book_Author, Publisher_Name)
VALUES ('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Oxford Publishing');

-- problem 4-b
INSERT INTO Library_Branch (Branch_Id, Branch_Name, Branch_Address)
VALUES 
(10, 'North Branch', '456 NW, Irving, TX 76100'),
(11, 'UTA Branch', '123 Cooper St, Arlington, TX 76101');

-- problem 5
SELECT 
    B.Title AS Book_Title,
    LB.Branch_Name AS Branch_Name,
    JULIANDAY(BL.Returned_Date) - JULIANDAY(BL.Date_Out) AS Days_Borrowed
FROM 
    Book_Loans BL
JOIN 
    Book B ON BL.Book_Id = B.Book_Id
JOIN 
    Library_Branch LB ON BL.Branch_Id = LB.Branch_Id
WHERE 
    BL.Date_Out BETWEEN '2022-03-05' AND '2022-03-23';

-- problem 6



-- problem 7



-- problem 8 




-- problem 9





-- problem 10





