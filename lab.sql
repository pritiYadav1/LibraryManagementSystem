
create database laibrary;
use laibrary;
CREATE TABLE Staff(
    Staff_Id INT PRIMARY KEY,
    s_name varchar(20)
    );

CREATE TABLE Book_Details (
    book_id INT PRIMARY KEY,
    book_author VARCHAR(255),
    book_name VARCHAR(255),
    book_price DECIMAL(10, 2),
    place_number INT,
    status VARCHAR(50),
    edition VARCHAR(50),
    date_purchage DATE,
    number_copies INT
);

CREATE TABLE Student_Details (
    id INT PRIMARY KEY,
    full_name VARCHAR(255),
    university_id VARCHAR(50),
    student_address VARCHAR(255),
    admission_date DATE,
    max_book_limit INT,
    no_books_issued INT,
    academic_year VARCHAR(50)
);


DROP TABLE Transaction_History;
CREATE TABLE Transaction_History (
    transaction_id INT PRIMARY KEY,
    member_id INT,
    id INT,
    book_id INT,
    date_issue DATE,
    due_date DATE,
    returned_date DATE,
    fine_collected DECIMAL(10, 2),
    transaction_status VARCHAR(50),
    FOREIGN KEY (book_id) REFERENCES Book_Details(book_id),
    FOREIGN KEY (id) REFERENCES Student_Details(id)    

);
