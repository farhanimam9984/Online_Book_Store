The aim of this project was to design and query a relational database for an online bookstore to analyze book inventory, customer behavior, sales performance, and revenue generation using SQL in PostgreSQL.
The project focuses on converting raw transactional data into meaningful business insights through structured SQL queries.

Books (Book details, genre, author, price, stock)
Customers (Customer information, country, city)
Orders (Order date, customer, total amount)

Basic Data Retrieval:
Filtering books by genre and publication year
Extracting customers based on country
Retrieving orders by specific dates (November 2023)
Listing available genres
Checking highest and lowest stock books
Identifying the most expensive book

Inventory & Stock Management: 
Calculating total stock of books
Finding book with lowest stock
Computing stock remaining after fulfilling all orders

Customer & Order Analysis:
Customers who ordered more than one quantity
Customers who placed at least 2 orders
Customers who spent more than $30
Customer who spent the most overall
Cities of high-spending customers

Sales & Revenue Analysis:
Orders where total amount exceeds $20
Total revenue generated from all orders
Most frequently ordered book
Total number of books sold per genre
Total quantity of books sold by each author

Advanced SQL Concepts Used:
To solve these, you used:
JOIN (multiple table joins)
GROUP BY and HAVING
Aggregate functions: SUM(), AVG(), COUNT()
Subqueries
Sorting and limiting (ORDER BY, LIMIT)
Conditional filtering (WHERE)
Business logic for stock deduction after sales

Business Value of the Project:
This project simulates how a real online bookstore would use SQL to:
Monitor inventory levels
Identify best-selling books and genres
Track customer purchase behavior
Analyze revenue performance
Detect high-value customers
Support data-driven business decisions

Skills Demonstrated:
PostgreSQL
Relational Database Design
Writing complex SQL queries
Data analysis using SQL
Business intelligence through database querying
Inventory and sales analytics
Problem-solving using real-world scenarios

I built and queried a PostgreSQL database for an online bookstore where I analyzed inventory, customer behavior, and sales data. I used joins, group by, aggregate functions, and subqueries to generate insights like best-selling genres, most frequent books, customer spending patterns, and stock remaining after sales. This project helped me understand how SQL is used in real business analytics scenarios.



Questions :

1) Retrieve all books in the "Fiction" genre
2) Find books published after the year 1950
3) List all customers from the Canada
4) Show orders placed in November 2023
5) Retrieve the total stock of books available
6) Find the details of the most expensive book
7) Show all customers who ordered more than 1 quantity of a book
8) Retrieve all orders where the total amount exceeds $20
9) List all genres available in the Books table
10) Find the book with the lowest stock
11) Calculate the total revenue generated from all orders
12) Retrieve the total number of books sold for each genre
13) Find the average price of books in the "Fantasy" genre
14) List customers who have placed at least 2 orders
15) Find the most frequently ordered book
16) Show the top 3 most expensive books of 'Fantasy' Genre
17) Retrieve the total quantity of books sold by each author
18) List the cities where customers who spent over $30 are located
19) Find the customer who spent the most on orders
20) Calculate the stock remaining after fulfilling all orders
