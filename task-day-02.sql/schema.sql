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
    
    select*from authors;
	select*from books;
    select*from Members;
    select*from Borrow_Records;
    

UPDATE Books
SET Title = 'The spiderman'
WHERE BookID = 102;


DELETE FROM Members
WHERE MemberID = 203;



-- --child table 
 
DELETE FROM Borrow_Records
WHERE MemberID = 203;




 -- parent table 
 
DELETE FROM Members
WHERE MemberID = 203;