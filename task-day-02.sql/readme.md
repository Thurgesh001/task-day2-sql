explanation


Task 2 : Data Insertion and Handling Nulls


1.Use INSERT INTO for adding rows


insert into Authors (AuthorID,name) 
values
(1, 'J.K. Rowling'),
(2, 'George Orwell'),
(3, 'Jane Austen');

INSERT INTO Books (BookID, Title, AuthorID)
VALUES 
    (101, 'Harry Potter', 1),
    (102, 'the hulk', 2),
    (103, "fast and furious", 3);
    
    INSERT INTO Members (MemberID, Name, JoinDate)
VALUES 
    (201, 'virat kohli', '2023-01-10'),
    (202, ' steve Smith', '2023-03-15'),
    (203, 'nitish rana', '2023-06-20');
    
    
    INSERT INTO Borrow_Records (BorrowID, BookID, MemberID, BorrowDate, ReturnDate)
VALUES 
    (301, 101, 201, '2024-01-05', '2024-01-20'),
    (302, 102, 202, '2024-02-10', '2024-02-25'),
    (303, 103, 203, '2024-03-01', NULL); 
    
    -- NULL means not returned yet


2.Handle missing values using NULL or default

null in borrow_records table name 


INSERT INTO Borrow_Records (BorrowID, BookID, MemberID, BorrowDate, ReturnDate)
VALUES 
    (303, 103, 203, '2024-03-01', NULL);

default:->

 in members table is just modified column joindate in default current date 



ALTER TABLE Members
MODIFY COLUMN JoinDate DATE DEFAULT CURRENT_DATE;

3.Use UPDATE and DELETE with WHERE conditions


update

updated books table using book_id column name using where condtion


UPDATE Books
SET Title = 'The spiderman'
WHERE BookID = 102;
 

delete

deleted members table column name member_id using the where class function 

DELETE FROM Members
WHERE MemberID = 203;






