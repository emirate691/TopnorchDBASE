DROP DATABASE IF EXISTS `Topnorch`;
CREATE DATABASE `Topnorch`;


CREATE TABLE customers (
		customerId INT(11)  NOT NULL AUTO_INCREMENT,
		Email VARCHAR(30) NOT NULL,
		Password VARCHAR(30) NOT NULL,
		FirstName VARCHAR(50) NOT NULL,
		LastName VARCHAR(50) NOT NULL,
		City VARCHAR(90),
		State VARCHAR(20),
		ZipCode VARCHAR(12),
		CustomerVerifiedEmail TINYINT(1),
		RegistrationDate TIMESTAMP,
		Address VARCHAR(50),
		Country VARCHAR(20),
		PhoneNumber VARCHAR(20)  NOT NULL,
        PRIMARY KEY(customerId)
	);

CREATE TABLE productCategories (
	CategoryId INT(11),
	CategoryName VARCHAR(50) NOT NULL,
	PRIMARY KEY(CategoryId)
);

CREATE TABLE product (
	productId INT(12) NOT NULL AUTO_INCREMENT,
	productName VARCHAR(100) NOT NULL,
	productPrice FLOAT NOT NULL,
	productWeight FLOAT,
	ProductDesc TEXT NOT NULL,
	ProductImage VARCHAR(100) NOT NULL,
	ProductCategoryId INT(11),
	ProductUpdate TIMESTAMP,
    PRIMARY KEY(ProductId),
    FOREIGN KEY (categoryId) REFERENCES productCategories(CategoryId)
	
);



 
 CREATE TABLE Orders(
  OrderId INT(11),
  OrderCustomerId INT(11),
  OrderAmount FLOAT,
  OrdershipName VARCHAR(100),
  OrdershipAddress VARCHAR(100),
  OrdershipCity VARCHAR(50),
  OrdershipState  VARCHAR(50),
  OrderCountry VARCHAR(50),
  Orderphone VARCHAR(20),
  Ordershipping FLOAT,
  OrderEmail VARCHAR(50),
  OrderDate TIMESTAMP,
  OrderTradingNumber VARCHAR(80),
  FOREIGN KEY(customerId) REFERENCES customers(customerId),
	FOREIGN KEY(productId) REFERENCES products(productId)

 );
 
CREATE TABLE orderdetails (
DetailId INT(11),
DetailOrderId INT(11),
DetailProductId INT(11),
DetailName VARCHAR(250),
DetailPrice FLOAT NOT NULL,
DetailQuantity INT(11)  NOT NULL,
FOREIGN KEY(customerId ) references customers(customerId)

);

