-- Customers table
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(200),
    Email VARCHAR(300),
    Phone VARCHAR(20)
);

-- Cars table
CREATE TABLE Cars (
    Car_ID SERIAL PRIMARY KEY,
    VinNumber SERIAL,
    Make VARCHAR(200),
    Model VARCHAR(200),
    Year INT NOT NULL,
    "New_or_Used" VARCHAR(10)
);

-- ServiceTickets table
CREATE TABLE ServiceTickets (
    ServiceTickets_ID SERIAL PRIMARY KEY,
    Customers_ID INT,
    Car_ID INT,
    DateOfService DATE,
    Description VARCHAR(5000),
    FOREIGN KEY (Customers_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Car_ID) REFERENCES Cars(Car_ID)
);

-- Salespersons table
CREATE TABLE Salespersons (
    Salesperson_ID SERIAL PRIMARY KEY,
    Name VARCHAR(200),
    Email VARCHAR(300),
    Phone VARCHAR(20)
);

-- ServiceHistory table
CREATE TABLE ServiceHistory (
    ServiceHistory_ID SERIAL PRIMARY KEY,
    Car_ID INT,
    DateOfService VARCHAR(20),
    Details VARCHAR(2000),
    FOREIGN KEY (Car_ID) REFERENCES Cars(Car_ID)
);

-- Mechanics table
CREATE TABLE Mechanics (
    Mechanic_ID SERIAL PRIMARY KEY,
    Name VARCHAR(200),
    Specialization VARCHAR(500)
);

-- Invoices table
CREATE TABLE Invoices (
    Invoice_ID SERIAL PRIMARY KEY,
    Salesperson_ID INT,
    Customer_ID INT,
    Car_ID INT,
    SaleDate DATE,
    Amount FLOAT,
    FOREIGN KEY (Salesperson_ID) REFERENCES Salespersons(Salesperson_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Car_ID) REFERENCES Cars(Car_ID)
);