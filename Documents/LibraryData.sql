CREATE TABLE BOOK (
    Bookid INT,
    Title varchar(200),
    PublisherName varchar(200),
  );

INSERT INTO BOOK (Bookid, Title, PublisherName)
VALUES (1, 'Don Quixote', 'Francisco de Robles'),
       (2, 'In Search of Lost Time', 'Éditions Grasset'), 
	   (3, 'Ulysses ', 'Sylvia Beach'),
	   (4, 'The Odyssey ', 'Hackett Publishing Company'),
	   (5, 'War and Peace', 'The Russian Messenger'),
	   (6, 'Moby Dick ', 'Richard Bentley'), 
	   (7, 'The Divine Comedy', ' Gabriel Giolito'), 
	   (8, 'Hamlet ', 'Simon & Schuster'),
	   (9, 'The Adventures of Huckleberry Finn ', ' Dover Publications'),
	   (10, 'The Great Gatsby', 'Charles Scribners Sons'), 
	   (11, 'The Iliad ', 'Simon & Schuster'),
	   (12, 'One Hundred Years of Solitude ', 'HarperCollins Publishers'),
	   (13, 'Madame Bovary ', 'Simon & Schuster'),
	   (14, 'Crime and Punishment', 'The Russian Messenger'), 
	   (15, 'The Brothers Karamazov ', 'The Russian Messenger'),
	   (16, 'Wuthering Heights', 'Thomas Cautley Newby'),
	   (17, 'The Lost Tribe', 'West 26th Street Press'), 
	   (18, 'Nineteen Eighty Four', 'Harvill Secker'), 
	   (19, 'IT', 'Viking Press'),
	   (20, 'Shining', 'Doubleday')
;
SELECT * FROM BOOK

CREATE TABLE BOOK_AUTHORS (
    Bookid INT,
    AuthorName varchar(200),
  );

INSERT INTO BOOK_AUTHORS (Bookid, AuthorName)
VALUES (1, 'Miguel de Cervantes'), (2, 'Marcel Proust'), 
	   (3, 'James Joyce'), (4,'Homer'),
	   (5, 'Leo Tolstoy'), (6, 'Herman Melville'), 
	   (7, 'Dante Alighieri'), (8, 'William Shakespeare'),
	   (9, 'Mark Twain'), (10, 'F. Scott Fitzgerald'), 
	   (11, 'Homer'), (12, 'Gabriel Garcia Marquez'), 
	   (13, 'Gustave Flaubert'), (14,'Fyodor Dostoyevsky'),
	   (15, 'Fyodor Dostoyevsky '), (16, 'Emily Brontë '), 
	   (17, 'Mark Lee'), (18, 'George Orwell'),
	   (19, 'Stephen king'), (20, 'Stephen king'),
	   (21, NULL)
;


SELECT * FROM BOOK
SELECT * FROM BOOK_AUTHORS

CREATE TABLE PUBLISHER (
    Name varchar(200),
	Addresses varchar(200),
	Phone varchar(20),
  );

INSERT INTO PUBLISHER(Name, Addresses, Phone)
VALUES 
  ('Francisco de Robles', '3444 Romian ave','800-474-1000'),
  ('Sylvia Grasset','2322 Jones blvd','800-298-4999'),
  ('Sylvia Beach','1999 Donse blvd','800-232-1111'),
  ('Hackett Publishing Company', '8211 NE Calvin st','800-199-0009'),
  ('The Russian Company', '5432 N brown rd','144-233-1222'),
  ('Richard Bentley', '8122 NE Komtown st','800-122-5555'),
  ('Gabriel Giolito', '9499 SE Boulevard blvd','800-333-4444'),
  ('Simon & Schuster', '2111 NE Jones st','800-233-5455'),
  ('Dover Pubilcations', '2733 SE Libra rd','800-144-6777'), 
  ('Charles Scribners Sons', '3999 SE ding st','800-777-9898'),
  ('Simon & Shuster', '2111 NE Jones st','800-233-5455'),
  ('HarperCollins Publishers', '2988 8th ave','333-544-7777'),
  ('Simon & Schuster', '2111 NE Jones st','800-233-5455'),
  ('The Russian Messenger', '5432 N brown rd','144-233-1222'),
  ('The Russian Messenger', '5432 N brown rd','144-233-1222'),
  ('Thomas Caultey Newby', '4333 W ton ave','355-366-6999'),
  ('Olympia Press', '8881 34rd ave','800-158-6000'),
  ('Harvill Secker', '5849 5th w blvd','800-155-7966'),
  ('Viking Press', '9949 N Brewtown','800-244-6999'),
  ('Doubleday', '5555 5TH AVE','800-122-4444')
  ;

  SELECT * FROM PUBLISHER ;






CREATE TABLE BOOK_LOANS (
    Bookid INT,
    Branchid INT,
    CardNo INT,
	DateOut varchar(20),
	DueDate varchar(20),
  );


INSERT INTO BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate)
VALUES 
 (1, 1, 100, 'October 8 2017', 'January 8 2018'), (2, 2, 100, 'October 1 2017', 'January 1 2018'),
 (3, 3, 100, 'October 22 2017', 'January 22 2018'), (4, 4, 100, 'October 17 2017', 'January 17 2018'),
 (5, 1, 101, 'October 25 2017', 'January 25 2018'), (6, 2, 101, 'October 19 2017', 'January 19 2018'),
 (7, 3, 101, 'October 22 2017', 'January 22 2018'), (8, 4, 101, 'October 1 2017', 'January 1 2018'),
 (9, 1, 101, 'October 25 2017', 'January 25 2018'), (10, 2, 101, 'October 9 2017', 'January 9 2018'),
 
 (11, 3, 102, 'October 22 2017', 'January 22 2018'), (12, 4, 102, 'October 17 2017', 'January 17 2018'),
 (13, 1, 102, 'October 25 2017', 'January 25 2018'), (14, 2, 102, 'October 5 2017', 'January 5 2018'),
 (15, 3, 103, 'October 22 2017', 'January 22 2018'), (16, 4, 103, 'October 8 2017', 'January 8 2018'),
 (17, 1, 104, 'October 25 2017', 'January 25 2018'), (18, 2, 104, 'October 14 2017', 'January 14 2018'),
 (19, 3, 104, 'October 22 2017', 'January 22 2018'), (20, 4, 104, 'October 28 2017', 'January 28 2018'),

 (1, 1, 105, 'October 5 2017', 'January 5 2018'), (2, 2, 105, 'October 2 2017', 'January 2 2018'),
 (3, 3, 105, 'October 13 2017', 'January 13 2018'), (4, 4, 105, 'October 27 2017', 'January 27 2018'),
 (5, 1, 105, 'October 1 2017', 'January 1 2018'), (6, 2, 105, 'October 9 2017', 'January 9 2018'),
 (7, 3, 106, 'October 17 2017', 'January 17 2018'), (8, 1, 106, 'October 6 2017', 'January 6 2018'),
 (9, 1, 100, 'October 7 2017', 'January 7 2018'), (10, 1, 106, 'October 7 2017', 'January 7 2018'),
 (21, NULL, 107, NULL, NULL), (21, NULL, 108, NULL, NULL),
 (21, NULL, 109, NULL, NULL)
;



CREATE TABLE BOOK_COPIES (
    Bookid INT,
    Branchid INT,
	No_Of_Copies INT,
  );

INSERT INTO BOOK_COPIES (Bookid, Branchid, No_Of_Copies)
VALUES (1, 1, 5),
       (2, 1, 10), 
	   (3, 1, 5),
	   (4, 1, 2),
	   (5, 1, 4),
	   (6, 1, 6), 
	   (7, 1, 3),
	   (8, 1, 2),
	   (9, 1, 4),
	   (17, 1, 6),  
	   (1, 2, 7),
	   (2, 2, 8),
	   (3, 2, 8), 
	   (4, 2, 5),
	   (5, 2, 2),
	   (10, 2, 2),
	   (11, 2, 8), 
	   (12, 2,8),
	   (17, 2,8),
	   (19, 2, 6),
	   (20, 2, 5), 
	   (1, 3, 2), 
	   (2, 3, 7),
	   (3, 3, 2),
	   (4, 3, 2), 
	   (5, 3, 7),
	   (6, 3, 2), 
	   (7, 3, 7),
	   (8, 3, 2), 
	   (9, 3, 7),
	   (17, 3, 7),
	   (10, 3, 7),
	   (10, 4, 2), 
	   (11, 4, 7),
	   (12, 4, 2),
	   (13, 4, 2), 
	   (14, 4, 7),
	   (15, 4, 2), 
	   (16, 4, 7),
	   (17, 4, 2), 
	   (18, 4, 7),
	   (19, 4, 7),
	   (20, 4, 7)
;
SELECT * FROM BOOK_COPIES


CREATE TABLE BORROWER (
    CardNo INT,
    Name varchar(200),
	Addresses varchar(200),
	Phone varchar(20),
	);

	INSERT INTO BORROWER(CardNo, Name, Addresses, Phone)
VALUES 
  (100, 'John Beezleberry', '217t 9th pl W','425-586-8999'),
  (101, 'Shaniqua Ding', '7838 14th ave','323-586-9388'),
  (102, 'Flan Terryboo', '1199 58th pl','777-366-1999'),
  (103, 'Salem Witchchild', '2958 811th ave','373-585-9900'),
  (104, 'Longo Shortnot', '4909 8th ave','111-383-3890'),
  (105, 'Smallus Longton', '7387 19th pl','757-298-8399'),
  (106, 'Steven Universe', '8499 sw 53rd ave','999-209-3466'),
  (107, 'Betsy Bop', '9490 John rd','232-575-3344'),
  (108, 'Levi Jeanton', '1999 Deadend ave','299-484-5888'), 
  (109, 'Slampton Stungtown', '2890 se 88th ave','244-586-2333')
  
  ;

  SELECT * FROM BORROWER;
  SELECT * FROM BOOK;
  SELECT * FROM BOOK_COPIES;
  SELECT * FROM BOOK_LOANS;
  SELECT * FROM LIBRARY_BRANCH;
  SELECT * FROM PUBLISHER;

CREATE TABLE LIBRARY_BRANCH (
    Branchid INT,
	Branch_Name varchar(200),
	Address varchar(100),
  );

INSERT INTO LIBRARY_BRANCH (Branchid, Branch_Name, Address)
VALUES (1, 'Sharpstown', '8383 8th pl'), (2, 'Central', '4930 12th Ave'), 
	   (3, 'Crazytown', '666 38th ave'), (4, 'Bombtown', '175th plc')
;


 





Create procedure LibraryProcedure
As 
Begin 

-- Lost Tribe Sharptown check
SELECT BOOK.Title, BOOK_AUTHORS.AuthorName, BOOK_COPIES.No_Of_Copies, LIBRARY_BRANCH.Branch_Name
FROM BOOK
INNER JOIN BOOK_AUTHORS ON BOOK.Bookid = BOOK_AUTHORS.Bookid
INNER JOIN BOOK_COPIES ON BOOK.Bookid = BOOK_COPIES.Bookid
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.Branchid = LIBRARY_BRANCH.Branchid
WHERE Book.Title = 'The Lost Tribe' 
AND
LIBRARY_BRANCH.Branch_Name = 'Sharpstown'
GROUP BY 
        BOOK.Title,
		BOOK_AUTHORS.AuthorName,
		BOOK_COPIES.No_Of_Copies,
		LIBRARY_BRANCH.Branch_Name
;

-- Stephen King Central Check
SELECT BOOK.Title, BOOK_AUTHORS.AuthorName, BOOK_COPIES.No_Of_Copies, LIBRARY_BRANCH.Branch_Name
FROM BOOK
INNER JOIN BOOK_AUTHORS ON BOOK.Bookid = BOOK_AUTHORS.Bookid
INNER JOIN BOOK_COPIES ON BOOK.Bookid = BOOK_COPIES.Bookid
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.Branchid = LIBRARY_BRANCH.Branchid
WHERE BOOK_AUTHORS.AuthorName = 'Stephen king' 
AND
LIBRARY_BRANCH.Branch_Name = 'Central'
GROUP BY 
         BOOK.Title,
		 BOOK_AUTHORS.AuthorName,
		 BOOK_COPIES.No_Of_Copies,
		 LIBRARY_BRANCH.Branch_Name
;

-- All branch copies check
SELECT LIBRARY_BRANCH.Branch_Name, BOOK_COPIES.No_Of_Copies, BOOK.Title
FROM BOOK_COPIES
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.Branchid = LIBRARY_BRANCH.Branchid
INNER JOIN BOOK ON BOOK_COPIES.Bookid = BOOK.Bookid

WHERE 
LIBRARY_BRANCH.Branch_Name = 'Sharpstown'
OR
LIBRARY_BRANCH.Branch_Name = 'Central'
OR
LIBRARY_BRANCH.Branch_Name = 'Bombtown'
OR
LIBRARY_BRANCH.Branch_Name = 'Crazytown'

GROUP BY
	LIBRARY_BRANCH.Branch_Name, 
	BOOK.Title,
	BOOK_COPIES.No_Of_Copies
	;

-- Checking Sharptown Duedate FOR Jan 7
SELECT BORROWER.Name, BORROWER.Addresses, BOOK.Title
FROM BOOK_LOANS
INNER JOIN BORROWER ON BOOK_LOANS.CardNo = BORROWER.CardNo
INNER JOIN BOOK ON BOOK_LOANS.Bookid = BOOK.Bookid
WHERE 
BOOK_LOANS.DueDate = 'January 7 2018'
AND
BOOK_LOANS.Branchid = 1
;

-- Checking Borrower for no loans
SELECT BORROWER.Name
FROM BOOK_LOANS
INNER JOIN BORROWER ON BOOK_LOANS.CardNo = BORROWER.CardNo
WHERE 
BOOK_LOANS.Bookid = 21
;

-- Checking Borrower for 5 or more BOOKS
SELECT COUNT(BOOK_LOANS.CardNo) AS No_Of_Books, BORROWER.Name, BORROWER.Addresses, BORROWER.Phone
FROM BOOK_LOANS

	INNER JOIN BORROWER ON BOOK_LOANS.CardNo = BORROWER.CardNo
WHERE BOOK_LOANS.CardNo > 4
GROUP BY 
         BORROWER.Name,
		 BORROWER.Addresses,
		 BORROWER.Phone

HAVING COUNT(BOOK_LOANS.CardNo) > 4
;

End 
Go


Execute LibraryProcedure;