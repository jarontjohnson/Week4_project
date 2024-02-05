-- Data for Customers table
INSERT INTO Customers (Name, Email, Phone) VALUES
('Elon Musk', 'Elon.Musk@example.com', '333-555-5757'),
('Julia Anderson', 'J.Anderson@example.com', '909-438-7898'),
('Jay Duce', 'J.duce@example.com', '333-777-8889');

-- Data for Cars table
INSERT INTO Cars (VinNumber, Make, Model, Year, "New_or_Used") VALUES
('1D43FS45712KJH', 'Tesla', 'Cybertruck', 2024, 'New'),
('12LJK5432DA75G', 'Mercedes', 'CLA 300 AMG', 2022, 'Used'),
('137GOD777LU38H', 'Lamborghini', 'Huracan', 2024, 'New');

-- Data for ServiceTickets table
INSERT INTO ServiceTickets (Customers_ID, Car_ID, DateOfService, Description) VALUES
(001, 01, '2024-01-05', 'Regular maintenance'),
(002, 02, '2024-01-10', 'AC Repair'),
(003, 03, '2024-01-23', 'Regular maintenance');

-- Data for Salespersons table
INSERT INTO Salespersons (Name, Email, Phone) VALUES
('Sam Smith', 'ssmith1@example.com', '111-222-3333'),
('Jordan Johnson', 'jjohnson@example.com', '777-555-8888');

-- Data for ServiceHistory table
INSERT INTO ServiceHistory (Car_ID, DateOfService, Details) VALUES
(01, '2024-01-05', 'Replaced brake pads'),
(02, '2023-12-20', 'Fixed AC unit');

-- Data for Mechanics table
INSERT INTO Mechanics (Name, Specialization) VALUES
('Eric Samuel', 'Engine repair'),
('James Lakey', 'Electrical systems');

-- Data for Invoices table
INSERT INTO Invoices (Salesperson_ID, Customer_ID, Car_ID, SaleDate, Amount) VALUES
(1, 001, 01, '2024-02-01', 2,500,000.00),
(2, 003, 03, '2024-01-01', 1,800,000.00);


