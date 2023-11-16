create table customer(
customer_id int primary key,
customer_name varchar(30),
customer_address varchar(30)
)
create table PRODUCT(
product_id int primary key,
product_name varchar(30),
product_price int check(product_price>0)
)
create table orders(
order_id int primary key,
customer_id int ,
product_id varchar(30),
quantity int,
dates varchar(30)
constraint fk_customer_id foreign key(customer_id) references customer(customer_id),
constraint fk_product_id foreign key(product_id) references PRODUCT(product_id)
)