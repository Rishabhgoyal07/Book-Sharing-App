use books;
create table Persons(
Person_ID varchar(2) not null,
Person_Name varchar(123),
Person_Phonenumber varchar(12),
Person_address varchar(500),
primary key (Person_ID)
);

create table Books_Details(
Book_ID varchar(2) NOT NULL,
Book_Name varchar(150),
Book_Author varchar(150),
Book_Rating int not null,
PRIMARY KEY (Book_ID)
);

create table Book_Collection(
Person_ID varchar(2) not null,
Book_ID varchar(2) not null,
primary key(person_id,book_id),
foreign key(Person_ID) references Persons(Person_ID),
foreign key(Book_ID) references Books_Details(Book_ID)
);

create table Book_Sharing_Transaction_details(
Transaction_ID int NOT null,
Transaction_Date varchar(50),
Book_Id varchar(2) not null,
Giver_ID varchar(2) not null,
Reciever_ID varchar(2) not null,
Issue_date varchar(10),
Return_Date varchar(10),
Reciever_Rating int not null,
primary key(Transaction_ID),
foreign key (Book_Id) references books_details(Book_ID), 
foreign key(Giver_ID) references persons(Person_ID), 
foreign key(Reciever_ID) references persons(Person_ID)
); 

insert into Persons(Person_ID,Person_Name,Person_Phonenumber,Person_address)
values
("p1","rishabh goyal","85236987","kheria mod"),
("p2","mayank goyal","456789951","ajit nagar"),
("p3","garvit goyal","12456\789","idgah"),
("p4","tiger","123698745","arjun nagar");

insert into book_collection(person_id,book_id)
values
("p1","b1"),
("p2","b2"),
("p3","b3"),
("p4","b4");

  insert into book_sharing_transaction_details(transaction_id,transaction_date,book_id,giver_id,reciever_id,issue_date,return_date,reciever_rating)
  values
  (1,"19/04/2022","b1","p1","p2","19/04/2022","25/04/2022",9),
  (2,"19/04/2022","b4","p1","p3","19/04/2022","25/04/2022",8),
  (3,"20/04/2022","b2","p2","p1","20/04/2022","30/04/2022",9);

