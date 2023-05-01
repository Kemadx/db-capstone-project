INSERT INTO customers (CustomerID, FullName) VALUES
(1, "Bjarne Olsen"),
(2, "Tina Olsen"),
(3, "James Jørgensen"),
(4, "Mads Morgenstjerne"),
(5, "Pernille Pilgaard");

INSERT INTO staff (StaffID, Name, Role, AnnualSalary) VALUES
(1, "Peter Pedal", "Manager", 550000),
(2, "Saerun Bethesda", "Waitress", 360000),
(3, "Torben Bager", "Waiter", 360000),
(4, "Steffen Didriksen", "Kok", 390000),
(5, "Frank Johansen", "Souschef", 440000);

INSERT INTO bookings (BookingID, TableNo, BookingSlot, StaffID, CustomerID) VALUES
(1,5,"2022-10-10 18:00",1,1),
(2,3,"2022-11-12 18:00",3,3),
(3,2,"2022-10-11 18:00",2,2),
(4,2,"2022-10-13 18:00",2,2);