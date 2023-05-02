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

INSERT INTO menuitems VALUES
(1,"Mouzaka","Local",35),
(2,"Venezia","Pizza",25),
(3,"Stjerneskud","Smorrebrod",15),
(4,"Chicken panang","Curry",25);


INSERT INTO menu VALUES
(1,1,"Greek"),
(2,2,"Italian"),
(3,3,"Danish"),
(4,4,"Asian");

INSERT INTO orders VALUES
(1,1,1,"2022-10-10",2,4,45),
(2,2,2,"2022-10-12",1,5,55),
(3,3,3,"2022-10-15",2,2,30),
(4,4,4,"2022-10-20",3,2,80),
(5,2,2,"2022-10-30",2,4,80),
(6,1,1,"2022-11-05",1,2,90),
(7,2,4,"2022-11-15",3,3,50);