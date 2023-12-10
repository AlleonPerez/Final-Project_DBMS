CREATE TABLE Cashier(
    CashierID INT NOT NULL,
	CashierName VARCHAR(100),
	PRIMARY KEY (CashierID)
	);

	INSERT INTO Cashier(CashierID,CashierName)
	VALUES
	
	(1,'Jonah Bells');
	
SELECT*FROM ViewCashier

CREATE TABLE Sales(
	SalesData INT NOT NULL,
	Day VARCHAR(250) NOT NULL,
	TotalSales INT NOT NULL,
	PRIMARY KEY(SalesData)
);

INSERT INTO Sales(SalesData,Day,TotalSales)
VALUES
    (0,'Monday', 249),
	(50,'Tuesday', 349),
	(100,'Wednesday', 300),
	(150,'Thursday', 350),
	(200,'Friday', 200),
	(250,'Saturday', 99);

CREATE TABLE RecentClients(
    ClientAge INT NOT NULL,
	ClientID INT NOT NULL,
	ClientName VARCHAR(100),
	ClientAddress VARCHAR(250),
	
    PRIMARY KEY(ClientAge),FOREIGN KEY(ClientID) REFERENCES Clients(ClientID)
);

INSERT INTO RecentClients(ClientID,ClientName,ClientAddress,ClientAge)
VALUES

    (1,'Princess Dynamite','Lipa Batangas', 40),
    (2,'Cedrick Demdam','Alitagtag Batangas', 29),
    (3,'Lourenz Einstein','Rosario Batangas', 30),
    (4,'Iris Robredo','Garcia Batangas', 57);
	
CREATE TABLE Clients(
    ClientID INT NOT NULL,
	ClientName VARCHAR(100),
	PRIMARY KEY(ClientID)
);
INSERT INTO Clients(ClientID,ClientName)
VALUES

    (1,'Princess Dynamite'),
    (2,'Cedrick Demdam'),
    (3,'Lourenz Einstein'),
    (4,'Iris Robredo'),
	(5, 'Kian Mae Solomon');
	

CREATE TABLE ViewReceipt(
	ReceiptNo INT NOT NULL,
	ClientID INT NOT NULL,
	ClientName VARCHAR(100),
	Address VARCHAR(100),
	ContactNumber BIGINT NOT NULL,
	ClientAge INT NOT NULL,
	ItemBought VARCHAR(250),
	TotalAmount FLOAT NOT NULL,
	PRIMARY KEY(ReceiptNo),FOREIGN KEY(ClientID) REFERENCES Clients(ClientID),FOREIGN KEY(ClientAge) REFERENCES RecentClients(ClientAge)
);
INSERT INTO ViewReceipt(ReceiptNo,ClientID,ClientName,Address,ContactNumber,ClientAge,TotalAmount)
VALUES

    ('10203',1,'Princess Dynamite','Lipa Batangas', 09345678910, 40,105.00),

    ('20301',2,'Cedrick Demdam','Alitagtag Batangas',09352564789, 29,500.00),

    ('30456',3,'Lourenz Einstein','Rosario Batangas',09231573825, 30,499.00),

    ('45602',4,'Iris Robredo','Garcia Batangas',09427853457, 57,100.00);

   
CREATE TABLE ViewCashier(
	CashierID INT NOT NULL,
	CashierName VARCHAR(100),
	FOREIGN KEY (CashierID) REFERENCES Cashier(CashierID)
);

INSERT INTO ViewCashier(CashierID,CashierName)
VALUES
   
    (1,'Jonah Bells');
