use BeautySalon;

CREATE TABLE _Roles_ (
		id INT PRIMARY KEY,
		RoleName NVARCHAR(50)
		);

CREATE TABLE _ServiceList_ (
		id INT PRIMARY KEY,
		Name NVARCHAR(50)
		);

CREATE TABLE _Users_ (
		id INT PRIMARY KEY,
		UserName NVARCHAR(50),
		UserSurname NVARCHAR(50),
		idRole INT,
		FOREIGN KEY (idRole)  REFERENCES _Roles_ (id) 
		);

CREATE TABLE _Masters_ (
		id INT PRIMARY KEY,
		idServiceList INT,
		idUser INT,
		FOREIGN KEY (idServiceList)  REFERENCES _ServiceList_ (id), 
		FOREIGN KEY (idUser)  REFERENCES _Users_ (id)  
		);

CREATE TABLE _PaymentMethod_ (
		id INT PRIMARY KEY,
		Method VARCHAR(50)
		);

CREATE TABLE _ClientStatus_ (
		id INT PRIMARY KEY,
		Name NVARCHAR(50),
		Discount INT
		);

CREATE TABLE _Clients_ (
		id INT PRIMARY KEY,
		Name NVARCHAR(50),
		Surname NVARCHAR(50),
		Phone VARCHAR(50),
		idClientStatus INT,
		FOREIGN KEY (idClientStatus)  REFERENCES _ClientStatus_ (id)
		);

CREATE TABLE _Orders_ (
		id INT PRIMARY KEY,
		Date VARCHAR(50),
		TotalCost VARCHAR(50),
		idClients INT,
		idServiceList INT,
		idPaymentMethod INT,
		idMasters INT,
		FOREIGN KEY (idClients)  REFERENCES _Clients_ (id), 
		FOREIGN KEY (idServiceList)  REFERENCES _ServiceList_ (id), 
		FOREIGN KEY (idPaymentMethod)  REFERENCES _PaymentMethod_ (id), 
		FOREIGN KEY (idMasters)  REFERENCES _Masters_ (id)
		);

CREATE TABLE _MakeupTypes_ (
		id INT PRIMARY KEY,
		TypeNames NVARCHAR(50),
		Price INT
		);

CREATE TABLE _IntermediateMakeupTypes_ (
		idOrders INT,
		idMakeupTypes INT,
		FOREIGN KEY (idOrders)  REFERENCES _Orders_ (id), 
		FOREIGN KEY (idMakeupTypes)  REFERENCES _MakeupTypes_ (id) 
		);

CREATE TABLE _ManicureTypes_ (
		id INT PRIMARY KEY,
		TypeNames NVARCHAR(50),
		Price INT
		);

CREATE TABLE _IntermediateManicureTypes_ (
		idOrders INT,
		idManicureTypes INT,
		FOREIGN KEY (idOrders)  REFERENCES _Orders_ (id), 
		FOREIGN KEY (idManicureTypes)  REFERENCES _ManicureTypes_ (id)
		);

CREATE TABLE _MassageTypes_ (
		id INT PRIMARY KEY,
		TypeNames NVARCHAR(50),
		Price INT
		);

CREATE TABLE _IntermediateMassageTypes_ (
		idOrders INT,
		idMassageTypes INT,
		FOREIGN KEY (idOrders)  REFERENCES _Orders_ (id), 
		FOREIGN KEY (idMassageTypes)  REFERENCES _MassageTypes_ (id)
		);

CREATE TABLE _WomHaircutsTypes_ (
		id INT PRIMARY KEY,
		TypeNames NVARCHAR(50),
		Price INT
		);

CREATE TABLE _IntermediateWomHaircutsTypes_ (
		idOrders INT,
		idWomHaircutsTypes INT,
		FOREIGN KEY (idOrders)  REFERENCES _Orders_ (id), 
		FOREIGN KEY (idWomHaircutsTypes)  REFERENCES _WomHaircutsTypes_ (id)
		);
		
CREATE TABLE _Register_ (
		idUser int identity(1,1) not null,
		Login_user varchar(50) not null,
		Password_user varchar(50) not null
		);

