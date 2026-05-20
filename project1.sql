-- TABLE-1

drop table categories;

-- drop table categories CASCADE;

create table categories (
    id SERIAL primary key,
    category_name VARCHAR(100) unique not null
);


insert into categories (category_name)
values
('Mobiles'),
('Laptops'),
('Fashion'),
('Furniture'),
('Books'),
('Sports'),
('Beauty'),
('Groceries'),
('Electronics'),
('Toys'),
('Accessories'),
('Kitchen'),
('Footwear'),
('Watches'),
('Jewellery'),
('Bags'),
('Home Decor'),
('Stationery'),
('Fitness'),
('Health'),
('Baby Products'),
('Pet Supplies'),
('Music'),
('Movies'),
('Garden'),
('Automotive'),
('Tools'),
('Office Supplies'),
('Cameras'),
('Printers'),
('Software'),
('Hardware'),
('Gaming'),
('Outdoor'),
('Travel'),
('Smart Devices'),
('Lighting'),
('Appliances'),
('Cleaning'),
('Storage'),
('Medical'),
('Education'),
('Crafts'),
('Art'),
('Phones'),
('Tablets'),
('Monitors'),
('Keyboards'),
('Mouse'),
('Speakers'),
('Headphones'),
('Chargers'),
('Power Banks'),
('Networking'),
('Security'),
('Wearables'),
('Drones'),
('Televisions'),
('Projectors'),
('Air Conditioners'),
('Refrigerators'),
('Washing Machines'),
('Microwaves'),
('Cookware'),
('Beds'),
('Sofas'),
('Curtains'),
('Carpets'),
('Dining'),
('Vegetables'),
('Fruits'),
('Snacks'),
('Beverages'),
('Frozen Foods'),
('Bakery'),
('Seafood'),
('Meat'),
('Organic'),
('Supplements'),
('Skincare'),
('Haircare'),
('Makeup'),
('Perfumes'),
('School Supplies'),
('College Essentials'),
('Exam Materials'),
('Cycling'),
('Gym Equipment'),
('Yoga'),
('Cricket'),
('Football'),
('Basketball'),
('Tennis'),
('Swimming'),
('Adventure'),
('Camping'),
('Hiking'),
('Digital Products'),
('Cloud Services'),
('Ebooks');

select * from  categories;


-- TABLE-2

drop table products ;

create table products (
    id SERIAL  primary key,
    product_name VARCHAR(100),
    price decimal(10,2),
    stock INT,
    category_id INT,

    constraint products_fk
    foreign (category_id)
    references categories(id)
);


insert into products(product_name,price,stock,category_id )
values
('iPhone 15',80000,10,1),('Samsung S24',75000,8,1),
('OnePlus 12',65000,15,1),('Realme GT',35000,20,1),
('Xiaomi Redmi',22000,25,1),('Dell Laptop',70000,6,2),
('HP Laptop',68000,5,2),('MacBook Air',95000,4,2),
('Lenovo ThinkPad',72000,7,2),('Asus ROG',85000,3,2),
('T-Shirt',1200,50,3),('Jeans',2500,40,3),
('Jacket',3500,20,3),('Kurta',1800,25,3),
('Hoodie',2200,18,3),('Sofa',30000,5,4),
('Dining Table',25000,4,4),('Bed',40000,3,4),
('Chair',3500,15,4),('Cupboard',18000,6,4),
('SQL Book',900,20,5),('Python Book',1000,15,5),
('Java Book',1100,12,5),('C Programming',850,10,5),
('Data Science Book',1500,8,5),('Football',1500,30,6),
('Cricket Bat',3000,12,6),('Tennis Ball',500,40,6),
('Basketball',1800,14,6),('Badminton Racket',2200,10,6),
('Face Wash',350,25,7),('Shampoo',450,18,7),
('Perfume',2500,10,7),('Lipstick',700,22,7),
('Body Lotion',550,15,7),('Rice Bag',1200,40,8),
('Cooking Oil',1800,35,8),('Sugar',450,25,8),
('Salt',50,60,8),('Tea Powder',350,20,8),
('Smart TV',55000,5,9),('Bluetooth Speaker',3000,10,9),
('Washing Machine',28000,4,9),('Refrigerator',35000,3,9),
('Air Conditioner',42000,2,9),('Toy Car',500,25,10),
('Teddy Bear',700,18,10),('Puzzle Game',400,20,10),
('Building Blocks',900,15,10),('Remote Car',1500,10,10),
('Gaming Mouse',2500,12,11),('Gaming Keyboard',3200,10,11),
('VR Headset',18000,3,11),('PlayStation Controller',4500,6,11),
('Gaming Chair',12000,4,11),('Smart Watch',5000,10,15),
('Leather Belt',900,18,14),('Running Shoes',3500,16,14),
('Handbag',2800,9,17),('Necklace',15000,4,16),
('Earrings',3500,10,16),('Office Chair',7000,5,29),
('Printer',12000,4,31),('Monitor',15000,7,48),
('Keyboard',1200,20,49),('Mouse',700,25,50),
('USB Cable',300,40,52),('Power Bank',1800,15,54),
('Router',2500,8,55),('Security Camera',4500,6,56),
('Drone Camera',35000,2,58),('Projector',28000,3,60),
('Microwave Oven',15000,5,64),('Cookware Set',4500,7,65),
('Curtains',2200,12,68),('Carpet',5500,6,69),
('Vegetable Basket',800,20,71),('Apple Fruits',250,30,72),
('Potato Chips',50,60,73),('Cold Drinks',90,45,74),
('Ice Cream',120,35,75),('Bread',40,50,76),
('Fish',600,15,77)('Chicken Meat',250,20,78),
('Organic Honey',450,10,79),('Protein Powder',2500,8,80),
('Face Cream',700,15,81),('Hair Oil',300,25,82),
('Foundation Makeup',900,12,83),('Perfume Spray',1800,10,84),
('School Bag',1200,18,85),('Notebook',80,100,85),
('Pen Set',150,60,85),('Gym Dumbbells',3500,7,89),
('Yoga Mat',900,20,90),('Cricket Helmet',1800,10,91),
('Football Shoes',3200,8,92),('Swimming Goggles',700,12,95),
('Camping Tent',4500,4,98),('Hiking Bag',2800,6,99),
('Cloud Storage',1500,20,100),('Ebook Reader',8500,5,100);


select * from products;




-- TABLE-3
drop table customers;

create table customers (
    id serial primary key,
    customer_name varchar(100),
    mobile varchar(15) unique not null,
    email varchar(100) unique not null,
    city varchar(100)
);

insert into customers ( customer_name, mobile, email, city)
values
('Gowtham','9025529244','gowtham@gmail.com','Tiruvannamalai'),
('Pravin','9876543210','pravin@gmail.com','Tiruvannamalai'),
('Rajesh','9123456780','arun@gmail.com','Perambalur'),
('Karthik','9234567890','karthik@gmail.com','Salem'),
('Vignesh','9345678901','vignesh@gmail.com','Trichy'),
('Suresh','9456789012','suresh@gmail.com','Erode'),
('Ramesh','9567890123','ramesh@gmail.com','Tirunelveli'),
('Manoj','9678901234','manoj@gmail.com','Vellore'),
('Ajith','9789012345','ajith@gmail.com','Thoothukudi'),
('Vijay','9890123456','vijay@gmail.com','Karur'),
('Dinesh','9001122334','dinesh@gmail.com','Chennai'),
('Kumar','9012233445','kumar@gmail.com','Madurai'),
('Hari','9023344556','hari@gmail.com','Salem'),
('Bala','9034455667','bala@gmail.com','Erode'),
('Naveen','9045566778','naveen@gmail.com','Trichy'),
('Rahul','9056677889','rahul@gmail.com','Vellore'),
('Santhosh','9067788990','santhosh@gmail.com','Karur'),
('Deepak','9078899001','deepak@gmail.com','Coimbatore'),
('Ashok','9089900112','ashok@gmail.com','Chennai'),
('Sathish','9091001223','sathish@gmail.com','Madurai'),
('Ravi','9102112334','ravi@gmail.com','Salem'),
('Lokesh','9113223445','lokesh@gmail.com','Erode'),
('Mohan','9124334556','mohan@gmail.com','Trichy'),
('Nithin','9135445667','nithin@gmail.com','Karur'),
('Vinoth','9146556778','vinoth@gmail.com','Vellore'),
('Rajesh','9157667889','rajesh@gmail.com','Thoothukudi'),
('Anand','9168778990','anand@gmail.com','Chennai'),
('Saravanan','9179889001','saravanan@gmail.com','Madurai'),
('Murugan','9180990112','murugan@gmail.com','Coimbatore'),
('Prakash','9191001223','prakash@gmail.com','Salem'),
('Kishore','9202112334','kishore@gmail.com','Trichy'),
('Yogesh','9213223445','yogesh@gmail.com','Karur'),
('Naren','9224334556','naren@gmail.com','Vellore'),
('Kavin','9235445667','kavin@gmail.com','Erode'),
('Aravind','9246556778','aravind@gmail.com','Chennai'),
('Rohit','9257667889','rohit@gmail.com','Madurai'),
('Sanjay','9268778990','sanjay@gmail.com','Salem'),
('Ganesh','9279889001','ganesh@gmail.com','Trichy'),
('Nanda','9280990112','nanda@gmail.com','Karur'),
('Harish','9291001223','harish@gmail.com','Vellore'),
('Jeeva','9302112334','jeeva@gmail.com','Coimbatore'),
('Surya','9313223445','surya@gmail.com','Chennai'),
('Abishek','9324334556','abishek@gmail.com','Madurai'),
('Akash','9335445667','akash@gmail.com','Salem'),
('Varun','9346556778','varun@gmail.com','Erode'),
('Siva','9357667889','siva@gmail.com','Trichy'),
('Gopi','9368778990','gopi@gmail.com','Karur'),
('Bharath','9379889001','bharath@gmail.com','Vellore'),
('Naveed','9380990112','naveed@gmail.com','Thoothukudi'),
('Kiran','9391001223','kiran@gmail.com','Chennai'),
('Arjun','9402112334','arjun@gmail.com','Madurai'),
('Ragul','9413223445','ragul@gmail.com','Coimbatore'),
('Dharani','9424334556','dharani@gmail.com','Salem'),
('Kamal','9435445667','kamal@gmail.com','Erode'),
('Sankar','9446556778','sankar@gmail.com','Trichy'),
('Prem','9457667889','prem@gmail.com','Karur'),
('Sanjith','9468778990','sanjith@gmail.com','Vellore'),
('Vasu','9479889001','vasu@gmail.com','Chennai'),
('Nitin','9480990112','nitin@gmail.com','Madurai'),
('Sanjay Kumar','9491001223','sanjayk@gmail.com','Salem'),
('Muthu','9502112334','muthu@gmail.com','Coimbatore'),
('Selva','9513223445','selva@gmail.com','Erode'),
('Raj','9524334556','raj@gmail.com','Trichy'),
('Ameer','9535445667','ameer@gmail.com','Karur'),
('John','9546556778','john@gmail.com','Vellore'),
('David','9557667889','david@gmail.com','Thoothukudi'),
('Peter','9568778990','peter@gmail.com','Chennai'),
('Sam','9579889001','sam@gmail.com','Madurai'),
('Kevin','9580990112','kevin@gmail.com','Coimbatore'),
('Allen','9591001223','allen@gmail.com','Salem'),
('Martin','9602112334','martin@gmail.com','Trichy'),
('Robert','9613223445','robert@gmail.com','Karur'),
('Daniel','9624334556','daniel@gmail.com','Erode'),
('Chris','9635445667','chris@gmail.com','Vellore'),
('Steve','9646556778','steve@gmail.com','Chennai'),
('Antony','9657667889','antony@gmail.com','Madurai'),
('Joseph','9668778990','joseph@gmail.com','Salem'),
('Thomas','9679889001','thomas@gmail.com','Coimbatore'),
('Henry','9680990112','henry@gmail.com','Trichy'),
('Leo','9691001223','leo@gmail.com','Karur'),
('Victor','9702112334','victor@gmail.com','Vellore'),
('Richard','9713223445','richard@gmail.com','Thoothukudi'),
('Jackson','9724334556','jackson@gmail.com','Chennai'),
('Albert','9735445667','albert@gmail.com','Madurai'),
('Francis','9746556778','francis@gmail.com','Salem'),
('Simon','9757667889','simon@gmail.com','Coimbatore'),
('Paul','9768778990','paul@gmail.com','Trichy'),
('Mark','9779889001','mark@gmail.com','Karur'),
('Andrew','9780990112','andrew@gmail.com','Erode'),
('George','9791001223','george@gmail.com','Vellore'),
('Stephen','9802112334','stephen@gmail.com','Chennai'),
('Kevin Raj','9813223445','kevinraj@gmail.com','Madurai'),
('Ashwin','9824334556','ashwin@gmail.com','Salem'),
('Pradeep','9835445667','pradeep@gmail.com','Coimbatore'),
('Robin','9846556778','robin@gmail.com','Trichy'),
('Jagan','9857667889','jagan@gmail.com','Karur'),
('Manikandan','9868778990','manikandan@gmail.com','Erode'),
('Velmurugan','9879889001','velmurugan@gmail.com','Vellore'),
('Ilayaraja','9880990112','ilayaraja@gmail.com','Thoothukudi'),
('Sridhar','9902112334','sridhar@gmail.com','Madurai');


select * from customers;




-- TABLE-4
drop table if exists orders cascade;

create table orders(
    id serial primary key,
    customer_id int not null,
    order_date date not null,
    total_amount decimal(10,2) not null,

    constraint orders_fk
    foreign key (customer_id)
    references customers(id)
);


insert into orders (customer_id,order_date,total_amount)
values
(1,'2026-05-01',80000),
(2,'2026-05-01',75000),
(3,'2026-05-02',65000),
(4,'2026-05-02',70000),
(5,'2026-05-03',1200),
(6,'2026-05-03',2500),
(7,'2026-05-04',30000),
(8,'2026-05-04',25000),
(9,'2026-05-05',900),
(10,'2026-05-05',1000),
(11,'2026-05-06',1500),
(12,'2026-05-06',3500),
(13,'2026-05-07',1800),
(14,'2026-05-07',2200),
(15,'2026-05-08',40000),
(16,'2026-05-08',3500),
(17,'2026-05-09',18000),
(18,'2026-05-09',1100),
(19,'2026-05-10',850),
(20,'2026-05-10',1500),
(21,'2026-05-11',3000),
(22,'2026-05-11',500),
(23,'2026-05-12',1800),
(24,'2026-05-12',2200),
(25,'2026-05-13',350),
(26,'2026-05-13',450),
(27,'2026-05-14',2500),
(28,'2026-05-14',700),
(29,'2026-05-15',550),
(30,'2026-05-15',1200),
(31,'2026-05-16',1800),
(32,'2026-05-16',450),
(33,'2026-05-17',50),
(34,'2026-05-17',350),
(35,'2026-05-18',55000),
(36,'2026-05-18',3000),
(37,'2026-05-19',28000),
(38,'2026-05-19',35000),
(39,'2026-05-20',42000),
(40,'2026-05-20',500),
(41,'2026-05-21',700),
(42,'2026-05-21',400),
(43,'2026-05-22',900),
(44,'2026-05-22',1500),
(45,'2026-05-23',2500),
(46,'2026-05-23',3200),
(47,'2026-05-24',18000),
(48,'2026-05-24',4500),
(49,'2026-05-25',12000),
(50,'2026-05-25',5000),
(51,'2026-05-26',900),
(52,'2026-05-26',3500),
(53,'2026-05-27',2800),
(54,'2026-05-27',15000),
(55,'2026-05-28',3500),
(56,'2026-05-28',7000),
(57,'2026-05-29',12000),
(58,'2026-05-29',15000),
(59,'2026-05-30',1200),
(60,'2026-05-30',700),
(61,'2026-05-31',300),
(62,'2026-05-31',1800),
(63,'2026-06-01',2500),
(64,'2026-06-01',4500),
(65,'2026-06-02',35000),
(66,'2026-06-02',28000),
(67,'2026-06-03',15000),
(68,'2026-06-03',4500),
(69,'2026-06-04',2200),
(70,'2026-06-04',5500),
(71,'2026-06-05',800),
(72,'2026-06-05',250),
(73,'2026-06-06',50),
(74,'2026-06-06',90),
(75,'2026-06-07',120),
(76,'2026-06-07',40),
(77,'2026-06-08',600),
(78,'2026-06-08',250),
(79,'2026-06-09',450),
(80,'2026-06-09',2500),
(81,'2026-06-10',700),
(82,'2026-06-10',300),
(83,'2026-06-11',900),
(84,'2026-06-11',1800),
(85,'2026-06-12',1200),
(86,'2026-06-12',80),
(87,'2026-06-13',150),
(88,'2026-06-13',3500),
(89,'2026-06-14',900),
(90,'2026-06-14',1800),
(91,'2026-06-15',3200),
(92,'2026-06-15',700),
(93,'2026-06-16',4500),
(94,'2026-06-16',2800),
(95,'2026-06-17',1500),
(96,'2026-06-17',8500),
(97,'2026-06-18',22000),
(98,'2026-06-18',72000),
(99,'2026-06-19',95000),
(100,'2026-06-19',68000);


select * from orders;


-- TABLE-5
drop table order_items;

create table order_items (
    id INT primary key,
    order_id INT,
    product_id INT,
    quantity INT,
    subtotal DECIMAL(10,2),

    constraint order_items_fk1
    foreign key (order_id)
    references orders(id),

   constraint order_items_fk2
   foreign key (product_id)
   references products(id)
);

insert into order_items values
(1,1,1,1,80000),
(2,2,2,1,75000),
(3,3,3,1,65000),
(4,4,4,1,70000),
(5,5,5,2,1200),
(6,6,6,1,2500),
(7,7,7,1,30000),
(8,8,8,1,25000),
(9,9,9,3,900),
(10,10,10,2,1000),
(11,11,11,1,1500),
(12,12,12,1,3500),
(13,13,13,2,1800),
(14,14,14,1,2200),
(15,15,15,1,40000),
(16,16,16,2,3500),
(17,17,17,1,18000),
(18,18,18,2,1100),
(19,19,19,1,850),
(20,20,20,1,1500),
(21,21,21,1,3000),
(22,22,22,2,500),
(23,23,23,1,1800),
(24,24,24,1,2200),
(25,25,25,3,350),
(26,26,26,2,450),
(27,27,27,1,2500),
(28,28,28,2,700),
(29,29,29,1,550),
(30,30,30,1,1200),
(31,31,31,1,1800),
(32,32,32,2,450),
(33,33,33,5,50),
(34,34,34,2,350),
(35,35,35,1,55000),
(36,36,36,1,3000),
(37,37,37,1,28000),
(38,38,38,1,35000),
(39,39,39,1,42000),
(40,40,40,2,500),
(41,41,41,1,700),
(42,42,42,2,400),
(43,43,43,1,900),
(44,44,44,1,1500),
(45,45,45,1,2500),
(46,46,46,1,3200),
(47,47,47,1,18000),
(48,48,48,1,4500),
(49,49,49,1,12000),
(50,50,50,1,5000),
(51,51,51,2,900),
(52,52,52,1,3500),
(53,53,53,1,2800),
(54,54,54,1,15000),
(55,55,55,1,3500),
(56,56,56,1,7000),
(57,57,57,1,12000),
(58,58,58,1,15000),
(59,59,59,2,1200),
(60,60,60,2,700),
(61,61,61,3,300),
(62,62,62,1,1800),
(63,63,63,1,2500),
(64,64,64,1,4500),
(65,65,65,1,35000),
(66,66,66,1,28000),
(67,67,67,1,15000),
(68,68,68,1,4500),
(69,69,69,2,2200),
(70,70,70,1,5500),
(71,71,71,2,800),
(72,72,72,3,250),
(73,73,73,5,50),
(74,74,74,4,90),
(75,75,75,2,120),
(76,76,76,3,40),
(77,77,77,1,600),
(78,78,78,2,250),
(79,79,79,1,450),
(80,80,80,1,2500),
(81,81,81,1,700),
(82,82,82,2,300),
(83,83,83,1,900),
(84,84,84,1,1800),
(85,85,85,1,1200),
(86,86,86,4,80),
(87,87,87,2,150),
(88,88,88,1,3500),
(89,89,89,1,900),
(90,90,90,1,1800),
(91,91,91,1,3200),
(92,92,92,2,700),
(93,93,93,1,4500),
(94,94,94,1,2800),
(95,95,95,1,1500),
(96,96,96,1,8500),
(97,97,97,1,22000),
(98,98,98,1,72000),
(99,99,99,1,95000),
(100,100,100,1,68000);

select * from order_items;



-- TABLE-6
 drop  table payments ;

create table payments (
    id INT primary key,
    order_id INT,
    payment_method VARCHAR(50),
    payment_status VARCHAR(50),

    constraint payments_fk
    foreign key (order_id)
    references orders(id)
);

insert into payments values
(1,1,'UPI','Paid'),
(2,2,'Card','Paid'),
(3,3,'Net Banking','Paid'),
(4,4,'COD','Pending'),
(5,5,'UPI','Paid'),
(6,6,'Card','Paid'),
(7,7,'UPI','Paid'),
(8,8,'COD','Pending'),
(9,9,'Card','Paid'),
(10,10,'UPI','Paid'),
(11,11,'Net Banking','Paid'),
(12,12,'Card','Paid'),
(13,13,'UPI','Paid'),
(14,14,'COD','Pending'),
(15,15,'UPI','Paid'),
(16,16,'Card','Paid'),
(17,17,'Net Banking','Paid'),
(18,18,'UPI','Paid'),
(19,19,'COD','Pending'),
(20,20,'Card','Paid'),
(21,21,'UPI','Paid'),
(22,22,'Card','Paid'),
(23,23,'Net Banking','Paid'),
(24,24,'UPI','Paid'),
(25,25,'COD','Pending'),
(26,26,'Card','Paid'),
(27,27,'UPI','Paid'),
(28,28,'Card','Paid'),
(29,29,'Net Banking','Paid'),
(30,30,'UPI','Paid'),
(31,31,'COD','Pending'),
(32,32,'Card','Paid'),
(33,33,'UPI','Paid'),
(34,34,'Card','Paid'),
(35,35,'Net Banking','Paid'),
(36,36,'UPI','Paid'),
(37,37,'COD','Pending'),
(38,38,'Card','Paid'),
(39,39,'UPI','Paid'),
(40,40,'Card','Paid'),
(41,41,'Net Banking','Paid'),
(42,42,'UPI','Paid'),
(43,43,'COD','Pending'),
(44,44,'Card','Paid'),
(45,45,'UPI','Paid'),
(46,46,'Card','Paid'),
(47,47,'Net Banking','Paid'),
(48,48,'UPI','Paid'),
(49,49,'COD','Pending'),
(50,50,'Card','Paid'),
(51,51,'UPI','Paid'),
(52,52,'Card','Paid'),
(53,53,'Net Banking','Paid'),
(54,54,'UPI','Paid'),
(55,55,'COD','Pending'),
(56,56,'Card','Paid'),
(57,57,'UPI','Paid'),
(58,58,'Card','Paid'),
(59,59,'Net Banking','Paid'),
(60,60,'UPI','Paid'),
(61,61,'COD','Pending'),
(62,62,'Card','Paid'),
(63,63,'UPI','Paid'),
(64,64,'Card','Paid'),
(65,65,'Net Banking','Paid'),
(66,66,'UPI','Paid'),
(67,67,'COD','Pending'),
(68,68,'Card','Paid'),
(69,69,'UPI','Paid'),
(70,70,'Card','Paid'),
(71,71,'Net Banking','Paid'),
(72,72,'UPI','Paid'),
(73,73,'COD','Pending'),
(74,74,'Card','Paid'),
(75,75,'UPI','Paid'),
(76,76,'Card','Paid'),
(77,77,'Net Banking','Paid'),
(78,78,'UPI','Paid'),
(79,79,'COD','Pending'),
(80,80,'Card','Paid'),
(81,81,'UPI','Paid'),
(82,82,'Card','Paid'),
(83,83,'Net Banking','Paid'),
(84,84,'UPI','Paid'),
(85,85,'COD','Pending'),
(86,86,'Card','Paid'),
(87,87,'UPI','Paid'),
(88,88,'Card','Paid'),
(89,89,'Net Banking','Paid'),
(90,90,'UPI','Paid'),
(91,91,'COD','Pending'),
(92,92,'Card','Paid'),
(93,93,'UPI','Paid'),
(94,94,'Card','Paid'),
(95,95,'Net Banking','Paid'),
(96,96,'UPI','Paid'),
(97,97,'COD','Pending'),
(98,98,'Card','Paid'),
(99,99,'UPI','Paid'),
(100,100,'Net Banking','Paid');

select * from payments;





-- TABLE-7
drop table suppliers; 

create table suppliers (
    id INT primary key,
    supplier_name varchar(100),
    city varchar(100),
    mobile varchar(15)
);

insert into suppliers values
(1,'ABC Mobiles','Chennai','9000000001'),
(2,'Tech World','Bangalore','9000000002'),
(3,'Fashion Hub','Mumbai','9000000003'),
(4,'Home Needs','Delhi','9000000004'),
(5,'Book Center','Pune','9000000005'),
(6,'Sports Zone','Hyderabad','9000000006'),
(7,'Beauty Store','Chennai','9000000007'),
(8,'Fresh Mart','Coimbatore','9000000008'),
(9,'Electronic City','Noida','9000000009'),
(10,'Toy Planet','Kolkata','9000000010'),
(11,'Mobile Plaza','Madurai','9000000011'),
(12,'Digital Store','Salem','9000000012'),
(13,'Classic Fashion','Erode','9000000013'),
(14,'Kitchen Mart','Trichy','9000000014'),
(15,'Readers Point','Vellore','9000000015'),
(16,'Fitness Hub','Goa','9000000016'),
(17,'Glow Beauty','Mysore','9000000017'),
(18,'Daily Needs','Nagpur','9000000018'),
(19,'Electro Hub','Jaipur','9000000019'),
(20,'Kids Corner','Lucknow','9000000020'),
(21,'Smart Mobiles','Chennai','9000000021'),
(22,'Laptop Land','Bangalore','9000000022'),
(23,'Urban Fashion','Mumbai','9000000023'),
(24,'Home Style','Delhi','9000000024'),
(25,'Book House','Pune','9000000025'),
(26,'Sports Club','Hyderabad','9000000026'),
(27,'Beauty Palace','Chennai','9000000027'),
(28,'Super Mart','Coimbatore','9000000028'),
(29,'Gadget City','Noida','9000000029'),
(30,'Toy House','Kolkata','9000000030'),
(31,'Mega Mobiles','Madurai','9000000031'),
(32,'Tech Bazaar','Salem','9000000032'),
(33,'Style Fashion','Erode','9000000033'),
(34,'Kitchen World','Trichy','9000000034'),
(35,'Readers Hub','Vellore','9000000035'),
(36,'Fitness Zone','Goa','9000000036'),
(37,'Beauty Queen','Mysore','9000000037'),
(38,'Fresh Store','Nagpur','9000000038'),
(39,'Electro Point','Jaipur','9000000039'),
(40,'Kids World','Lucknow','9000000040'),
(41,'City Mobiles','Chennai','9000000041'),
(42,'Computer World','Bangalore','9000000042'),
(43,'Trendy Fashion','Mumbai','9000000043'),
(44,'Modern Home','Delhi','9000000044'),
(45,'Book Planet','Pune','9000000045'),
(46,'Sports Arena','Hyderabad','9000000046'),
(47,'Beauty Spot','Chennai','9000000047'),
(48,'Fresh Foods','Coimbatore','9000000048'),
(49,'Electronic Hub','Noida','9000000049'),
(50,'Toy Center','Kolkata','9000000050'),
(51,'Prime Mobiles','Madurai','9000000051'),
(52,'Tech Solutions','Salem','9000000052'),
(53,'Fashion Point','Erode','9000000053'),
(54,'Kitchen Point','Trichy','9000000054'),
(55,'Readers World','Vellore','9000000055'),
(56,'Gym World','Goa','9000000056'),
(57,'Beauty Care','Mysore','9000000057'),
(58,'Daily Mart','Nagpur','9000000058'),
(59,'Electro Mart','Jaipur','9000000059'),
(60,'Kids Planet','Lucknow','9000000060'),
(61,'Royal Mobiles','Chennai','9000000061'),
(62,'Laptop Point','Bangalore','9000000062'),
(63,'Fashion City','Mumbai','9000000063'),
(64,'Dream Home','Delhi','9000000064'),
(65,'Book Mall','Pune','9000000065'),
(66,'Sports Point','Hyderabad','9000000066'),
(67,'Beauty Hub','Chennai','9000000067'),
(68,'Fresh Hub','Coimbatore','9000000068'),
(69,'Electronic Planet','Noida','9000000069'),
(70,'Toy Bazaar','Kolkata','9000000070'),
(71,'Future Mobiles','Madurai','9000000071'),
(72,'Digital Point','Salem','9000000072'),
(73,'Fashion Mall','Erode','9000000073'),
(74,'Kitchen Style','Trichy','9000000074'),
(75,'Readers Corner','Vellore','9000000075'),
(76,'Fitness Club','Goa','9000000076'),
(77,'Beauty Fashion','Mysore','9000000077'),
(78,'Fresh City','Nagpur','9000000078'),
(79,'Electronic Bazaar','Jaipur','9000000079'),
(80,'Toy Mart','Lucknow','9000000080'),
(81,'Mobile King','Chennai','9000000081'),
(82,'Computer Hub','Bangalore','9000000082'),
(83,'Fashion World','Mumbai','9000000083'),
(84,'Home Bazaar','Delhi','9000000084'),
(85,'Book City','Pune','9000000085'),
(86,'Sports King','Hyderabad','9000000086'),
(87,'Beauty World','Chennai','9000000087'),
(88,'Fresh Planet','Coimbatore','9000000088'),
(89,'Electro King','Noida','9000000089'),
(90,'Toy World','Kolkata','9000000090'),
(91,'Smart Tech','Madurai','9000000091'),
(92,'Tech Planet','Salem','9000000092'),
(93,'Urban Style','Erode','9000000093'),
(94,'Kitchen Planet','Trichy','9000000094'),
(95,'Readers Planet','Vellore','9000000095'),
(96,'Fitness Planet','Goa','9000000096'),
(97,'Beauty Planet','Mysore','9000000097'),
(98,'Fresh Bazaar','Nagpur','9000000098'),
(99,'Electronic World','Jaipur','9000000099'),
(100,'Toy Kingdom','Lucknow','9000000100');

select * from suppliers;


-- table-8
drop table product_suppliers ;

create table product_suppliers (
    id INT primary key,
    product_id int,
    supplier_id int,

    constraint product_suppliers_fk1
    foreign key (product_id)
    references products(id),

    constraint product_suppliers_fk2
    foreign key (supplier_id)
    references suppliers(id)
);

insert into product_suppliers values
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5),
(6,6,6),
(7,7,7),
(8,8,8),
(9,9,9),
(10,10,10),
(11,11,11),
(12,12,12),
(13,13,13),
(14,14,14),
(15,15,15),
(16,16,16),
(17,17,17),
(18,18,18),
(19,19,19),
(20,20,20),
(21,21,21),
(22,22,22),
(23,23,23),
(24,24,24),
(25,25,25),
(26,26,26),
(27,27,27),
(28,28,28),
(29,29,29),
(30,30,30),
(31,31,31),
(32,32,32),
(33,33,33),
(34,34,34),
(35,35,35),
(36,36,36),
(37,37,37),
(38,38,38),
(39,39,39),
(40,40,40),
(41,41,41),
(42,42,42),
(43,43,43),
(44,44,44),
(45,45,45),
(46,46,46),
(47,47,47),
(48,48,48),
(49,49,49),
(50,50,50),
(51,51,51),
(52,52,52),
(53,53,53),
(54,54,54),
(55,55,55),
(56,56,56),
(57,57,57),
(58,58,58),
(59,59,59),
(60,60,60),
(61,61,61),
(62,62,62),
(63,63,63),
(64,64,64),
(65,65,65),
(66,66,66),
(67,67,67),
(68,68,68),
(69,69,69),
(70,70,70),
(71,71,71),
(72,72,72),
(73,73,73),
(74,74,74),
(75,75,75),
(76,76,76),
(77,77,77),
(78,78,78),
(79,79,79),
(80,80,80),
(81,81,81),
(82,82,82),
(83,83,83),
(84,84,84),
(85,85,85),
(86,86,86),
(87,87,87),
(88,88,88),
(89,89,89),
(90,90,90),
(91,91,91),
(92,92,92),
(93,93,93),
(94,94,94),
(95,95,95),
(96,96,96),
(97,97,97),
(98,98,98),
(99,99,99),
(100,100,100);

select * from product_suppliers;


-- TABLE-9
drop table employees;

create table employees (
    id INT primary key,
    employee_name varchar(100),
    department varchar(100),
    salary DECIMAL(10,2)
);



insert into employees values
(1,'Raj','Sales',30000),
(2,'Kumar','Support',28000),
(3,'Vijay','Delivery',25000),
(4,'Arun','HR',35000),
(5,'Suresh','Manager',50000),
(6,'Ajith','Sales',32000),
(7,'Ramesh','Support',27000),
(8,'Hari','Delivery',26000),
(9,'Dinesh','HR',34000),
(10,'Prakash','Manager',55000),
(11,'Manoj','Sales',31000),
(12,'Karthik','Support',29000),
(13,'Lokesh','Delivery',25500),
(14,'Bala','HR',36000),
(15,'Gowtham','Manager',52000),
(16,'Naveen','Sales',33000),
(17,'Saravanan','Support',27500),
(18,'Mohan','Delivery',26500),
(19,'Vinoth','HR',34500),
(20,'Ashok','Manager',56000),
(21,'Deepak','Sales',30000),
(22,'Ravi','Support',28000),
(23,'Senthil','Delivery',25000),
(24,'Sathish','HR',35000),
(25,'Praveen','Manager',50000),
(26,'Yogesh','Sales',32000),
(27,'Vimal','Support',27000),
(28,'Harish','Delivery',26000),
(29,'Jagan','HR',34000),
(30,'Kishore','Manager',55000),
(31,'Aravind','Sales',31000),
(32,'Muthu','Support',29000),
(33,'Sanjay','Delivery',25500),
(34,'Anand','HR',36000),
(35,'Ragul','Manager',52000),
(36,'Bharath','Sales',33000),
(37,'Nithin','Support',27500),
(38,'Siva','Delivery',26500),
(39,'Rohit','HR',34500),
(40,'Kavin','Manager',56000),
(41,'Rajesh','Sales',30000),
(42,'Magesh','Support',28000),
(43,'Selva','Delivery',25000),
(44,'Dharan','HR',35000),
(45,'Gopi','Manager',50000),
(46,'Tamil','Sales',32000),
(47,'Aakash','Support',27000),
(48,'Jeeva','Delivery',26000),
(49,'Naren','HR',34000),
(50,'Mukesh','Manager',55000),
(51,'Surya','Sales',31000),
(52,'Roshan','Support',29000),
(53,'Pandi','Delivery',25500),
(54,'Karan','HR',36000),
(55,'Varun','Manager',52000),
(56,'Pradeep','Sales',33000),
(57,'Nandha','Support',27500),
(58,'Akash','Delivery',26500),
(59,'Ganesh','HR',34500),
(60,'Nikhil','Manager',56000),
(61,'Abishek','Sales',30000),
(62,'John','Support',28000),
(63,'Peter','Delivery',25000),
(64,'David','HR',35000),
(65,'Samuel','Manager',50000),
(66,'Kevin','Sales',32000),
(67,'Daniel','Support',27000),
(68,'Martin','Delivery',26000),
(69,'Joseph','HR',34000),
(70,'Antony','Manager',55000),
(71,'Charles','Sales',31000),
(72,'Victor','Support',29000),
(73,'Albert','Delivery',25500),
(74,'Ruben','HR',36000),
(75,'Frank','Manager',52000),
(76,'Steve','Sales',33000),
(77,'Chris','Support',27500),
(78,'Paul','Delivery',26500),
(79,'Mark','HR',34500),
(80,'Henry','Manager',56000),
(81,'Leo','Sales',30000),
(82,'Jack','Support',28000),
(83,'Allen','Delivery',25000),
(84,'Scott','HR',35000),
(85,'Adam','Manager',50000),
(86,'Ben','Sales',32000),
(87,'Carl','Support',27000),
(88,'Eric','Delivery',26000),
(89,'Finn','HR',34000),
(90,'George','Manager',55000),
(91,'Harry','Sales',31000),
(92,'Ivan','Support',29000),
(93,'Jason','Delivery',25500),
(94,'Ken','HR',36000),
(95,'Luke','Manager',52000),
(96,'Mike','Sales',33000),
(97,'Nathan','Support',27500),
(98,'Oscar','Delivery',26500),
(99,'Ryan','HR',34500),
(100,'Tom','Manager',56000);


select * from employees;



-- table-10
drop table delivery;

create table delivery (
    id int primary key,
    order_id int,
    delivery_status varchar(100),
    delivery_date date,

    constraint delivery_fk
    foreign key (order_id)
    references orders(id)
);

insert into delivery values
(1,1,'Delivered','2026-05-03'),
(2,2,'Delivered','2026-05-03'),
(3,3,'Shipped','2026-05-04'),
(4,4,'Pending','2026-05-05'),
(5,5,'Delivered','2026-05-06'),
(6,6,'Delivered','2026-05-06'),
(7,7,'Shipped','2026-05-07'),
(8,8,'Pending','2026-05-08'),
(9,9,'Delivered','2026-05-09'),
(10,10,'Delivered','2026-05-09'),
(11,11,'Shipped','2026-05-10'),
(12,12,'Pending','2026-05-10'),
(13,13,'Delivered','2026-05-11'),
(14,14,'Delivered','2026-05-11'),
(15,15,'Shipped','2026-05-12'),
(16,16,'Pending','2026-05-12'),
(17,17,'Delivered','2026-05-13'),
(18,18,'Delivered','2026-05-13'),
(19,19,'Shipped','2026-05-14'),
(20,20,'Pending','2026-05-14'),
(21,21,'Delivered','2026-05-15'),
(22,22,'Delivered','2026-05-15'),
(23,23,'Shipped','2026-05-16'),
(24,24,'Pending','2026-05-16'),
(25,25,'Delivered','2026-05-17'),
(26,26,'Delivered','2026-05-17'),
(27,27,'Shipped','2026-05-18'),
(28,28,'Pending','2026-05-18'),
(29,29,'Delivered','2026-05-19'),
(30,30,'Delivered','2026-05-19'),
(31,31,'Shipped','2026-05-20'),
(32,32,'Pending','2026-05-20'),
(33,33,'Delivered','2026-05-21'),
(34,34,'Delivered','2026-05-21'),
(35,35,'Shipped','2026-05-22'),
(36,36,'Pending','2026-05-22'),
(37,37,'Delivered','2026-05-23'),
(38,38,'Delivered','2026-05-23'),
(39,39,'Shipped','2026-05-24'),
(40,40,'Pending','2026-05-24'),
(41,41,'Delivered','2026-05-25'),
(42,42,'Delivered','2026-05-25'),
(43,43,'Shipped','2026-05-26'),
(44,44,'Pending','2026-05-26'),
(45,45,'Delivered','2026-05-27'),
(46,46,'Delivered','2026-05-27'),
(47,47,'Shipped','2026-05-28'),
(48,48,'Pending','2026-05-28'),
(49,49,'Delivered','2026-05-29'),
(50,50,'Delivered','2026-05-29'),
(51,51,'Shipped','2026-05-30'),
(52,52,'Pending','2026-05-30'),
(53,53,'Delivered','2026-05-31'),
(54,54,'Delivered','2026-05-31'),
(55,55,'Shipped','2026-06-01'),
(56,56,'Pending','2026-06-01'),
(57,57,'Delivered','2026-06-02'),
(58,58,'Delivered','2026-06-02'),
(59,59,'Shipped','2026-06-03'),
(60,60,'Pending','2026-06-03'),
(61,61,'Delivered','2026-06-04'),
(62,62,'Delivered','2026-06-04'),
(63,63,'Shipped','2026-06-05'),
(64,64,'Pending','2026-06-05'),
(65,65,'Delivered','2026-06-06'),
(66,66,'Delivered','2026-06-06'),
(67,67,'Shipped','2026-06-07'),
(68,68,'Pending','2026-06-07'),
(69,69,'Delivered','2026-06-08'),
(70,70,'Delivered','2026-06-08'),
(71,71,'Shipped','2026-06-09'),
(72,72,'Pending','2026-06-09'),
(73,73,'Delivered','2026-06-10'),
(74,74,'Delivered','2026-06-10'),
(75,75,'Shipped','2026-06-11'),
(76,76,'Pending','2026-06-11'),
(77,77,'Delivered','2026-06-12'),
(78,78,'Delivered','2026-06-12'),
(79,79,'Shipped','2026-06-13'),
(80,80,'Pending','2026-06-13'),
(81,81,'Delivered','2026-06-14'),
(82,82,'Delivered','2026-06-14'),
(83,83,'Shipped','2026-06-15'),
(84,84,'Pending','2026-06-15'),
(85,85,'Delivered','2026-06-16'),
(86,86,'Delivered','2026-06-16'),
(87,87,'Shipped','2026-06-17'),
(88,88,'Pending','2026-06-17'),
(89,89,'Delivered','2026-06-18'),
(90,90,'Delivered','2026-06-18'),
(91,91,'Shipped','2026-06-19'),
(92,92,'Pending','2026-06-19'),
(93,93,'Delivered','2026-06-20'),
(94,94,'Delivered','2026-06-20'),
(95,95,'Shipped','2026-06-21'),
(96,96,'Pending','2026-06-21'),
(97,97,'Delivered','2026-06-22'),
(98,98,'Delivered','2026-06-22'),
(99,99,'Shipped','2026-06-23'),
(100,100,'Pending','2026-06-23');



select * from delivery;


-- QUERIES 

-- 1) 5000 above price product_details
select * from products where price >5000;


-- 2) 1000 to 10000  prices
select * from products where price between 1000 and 10000;


--3)   price for descending order (highest price first).
select * from products order by price DESC;


--4) products price from highest price to lowest price first 5 price.
select * from products order by price desc limit 5;


-- 5) total customer  for tables
select count (*) as total_customers from customers;

-- 6) particular city name for customer details
select * from customers where city = 'Chennai';

-- 7 ) duplicate citys names for table
select distinct  city from  customers;

-- 8)  the total revenue from all orders in the orders table by adding all values in the total_amount column.
select sum(total_amount) As total_revenue from orders;


-- 9)  the orders table using the AVG() aggregate function.
select Avg(total_amount)As average_order from orders;


-- 10) the highest order amount from the orders table using the MAX() aggregate function.
select max(total_amount) as highest_order from orders;


-- 11) the lowest order amount from the orders table using the MIN() aggregate function.
select min (total_amount) as lowest_order from orders;


--12 the orders table where the order date is later than 2026-06-01.
select * from orders where order_date > '2026-06-01';

--13 the product details along 
select c.customer_name,
        o.id As order_id,
		o.total_amount
from customers  c
join orders o
on c.id = o.customer_id;



-- 14 get product details along with their category names by combining two tables: products and categories.
select  p.product_name,
        p.price,
		c.category_name
from products p 
join categories c
on  p.category_id = c.id;


--15 the orders and payments tables.
select o.id, o.total_amount, p.payment_status
from orders o 
join payments p
on o.id = p.order_id;


-- 16 the delivery table where the delivery status is Delivered.
select * from delivery where delivery_status = 'Delivered';

	   
--17 the delivery table where the delivery status is Pending.
select * from delivery where delivery_status = 'Pending';


--18  the total number of records for each delivery status in the delivery table.
select delivery_status,
    count(*) As total
from delivery
group  by delivery_status;


-- 19 total number of payments made using each payment method in the payments table.
select  payment_method, 
   count(*) As total
 from payments
 group by  payment_method;


 -- 20 the employees table where the salary is greater than 35000.
 select * from  employees  where salary > 35000;

 --21 the employee with the highest salary from the employees table for desc order for limite 1
 select * from employees order by salary desc limit 1;


 --22   product_name and supplier details  join for table 
 select  p.product_name,
       s.supplier_name from product_suppliers ps 
	   join products p
on ps.product_id = p.id
join suppliers s
on ps.supplier_id = s.id;


-- 23 department vice total salary
select department, sum(salary) as total_salary
 from employees
 group by department;


 --24 order_date,  
select o.id,
       o.order_date,
		d.delivery_status,
		d.delivery_date
from orders o
join delivery d
on o.id = d.order_id;



--25 customers + Orders
select c.customer_name, c.city, o.id as order_date, o.total_amount
from customers c join orders o on c.id = o.customer_id;	


--26 Orders ,Payments

select  p.order_id,
        o.total_amount,
		p.payment_method,
		p.payment_status from orders o join payments p
		on o.id = p.order_id;


--27 Orders , Delivery
select d.order_id, o.order_date, d.delivery_status,
d.delivery_date from orders o join delivery d
on o.id = d.order_id;


-- 28 product Categories
select p.product_name,
       p.price,
       p.stock,
       c.category_name
from products p
join categories c
ON p.category_id = c.id;


--29  customer name, product name, quantity, total amount, payment_status,delivery status showing table
select c.customer_name,
       p.product_name,
       oi.quantity,
       o.total_amount,
       pay.payment_status,
       d.delivery_status from customers c join orders o on c.id = o.customer_id join order_items oi on o.id = oi.order_id join products p
ON oi.product_id = p.id join payments pay on o.id = pay.order_id join delivery d on o.id = d.order_id;


--30  What is the purpose of the JOIN clause in this query?
select  p.product_name,
       sum(oi.quantity) AS total_sold from products p join order_items oi on p.id = oi.product_id 
	   group by p.product_name order by total_sold desc limit 6;

	   












		





	   

	   
       




 
 
 








 

 




	



	   

































