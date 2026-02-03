-- create Tables
drop table if exists Books;
create table Books (
Book_ID serial primary key,
Title varchar(100),
Author varchar(100),
Genre varchar(100),
Published_Year int,
Price numeric(10,2),
Stock int
);

-- Create Customer table 
drop table if exists Customers;
Create table Customers (
Customer_ID serial primary key,
Name varchar(100) not null,
Email varchar(100),
Phone varchar(100),
City varchar(50),
Country varchar(50)
);


-- Create Books table
drop table if exists Orders;
Create Table Orders (
Order_id SERIAL primary key,
Customer_ID INT references Customers(Customer_ID),
Book_ID Int references Books(Book_ID),
Order_Date date,
Quantity int,
Total_Amount numeric(10,2)
)

select * from Books;
select * from Customers;
SElect * from Orders;


-- Retrieve all books in the "Fiction" genre:
1.select * from Books where Genre = 'Fiction';


-- Find books published after the year 1950:
2.select * from Books where  Published_Year > 1950;

-- List all customers from the Canada:
3.select * from Customers where Country = 'Canada';

-- Show orders placed in November 2023:
4.select * from Orders where Order_Date between '2023-11-01' and '2023-11-30';

-- Retrieve the total stock of books available:
5.select sum(Stock) AS Total_Stock from Books;

-- Find the details of the most expensive book:
6.select * from Books order by Price  desc;

-- Show all customers who ordered more than 1 quantity of a book:
7.select * from Orders where Quantity > 1;

--  Retrieve all orders where the total amount exceeds $20:
8.select * from Orders where Total_Amount > 20;

-- List all genres available in the Books table:
9.select distinct  Genre from Books;

--  Find the book with the lowest stock:
10.select * from Books order by Stock;

-- Calculate the total revenue generated from all orders:
11.select sum(Total_Amount) as Revenue from Orders;

-- Retrieve the total number of books sold for each genre:
12. select  b.Genre , SUM(o.Quantity)
		from Orders o 
		join Books b 
		on o.Book_ID = b.Book_ID
		group by b.Genre;

-- Find the average price of books in the "Fantasy" genre:
13. select round(avg(Price),2) as Average_Price , Genre from Books where Genre = 'Fantasy' Group by Genre;

--  List customers who have placed at least 2 orders:
14. Select  o.Customer_ID , c.name , count(Order_ID) as order_count
		from Orders o 
		join Customers c 
		on o.Customer_ID = c.Customer_ID
		group by o.Customer_ID, c.Name
		Having Count(Order_ID) >=2;

--  Find the most frequently ordered book:
15. select o.Book_ID , b.Title , Count(Order_ID) as Order_Count
	from Orders o
	join Books b 
	on o.Book_ID = b.Book_ID
	Group by o.Book_ID, b.Title
	order by Order_Count desc;

--  Show the top 3 most expensive books of 'Fantasy' Genre :
16. select * from Books 
		where Genre = 'Fantasy'
		order by Price desc limit 3;

-- Retrieve the total quantity of books sold by each author:
17. select distinct b.Author , Sum(o.Quantity) as Total_Sold
		from Orders o
		join Books b on o.Book_ID = b.Book_ID
		GROUp BY b.Author;

-- List the cities where customers who spent over $30 are located:
18. select distinct c.city , total_amount
		from orders o 
		join customers c on o.customer_id = c.customer_id
		where o.total_amount > 30;

--Find the customer who spent the most on orders: 
19. select c.customer_id , c.name , sum(total_amount) as Total_spent
		from orders o
		join customers c on o.customer_id  = c.customer_id
		group by c.customer_id , c.name
		order by total_spent desc limit 1;

-- Calculate the stock remaining after fulfilling all orders:
20. select b.book_id , b.title , b.stock , coalesce(sum(quantity),0) as order_quantity, b.stock - coalesce(sum(o.quantity), 0)
     	from books b
		 left join orders o on b.book_id = o.book_id
		 group by b.book_id 
		 order by b.book_id;
		