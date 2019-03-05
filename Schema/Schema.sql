create table coach(
train_no int(5),
coach_no  int(3),
type_of varchar(2),
foreign key (type_of) references coach_type(type_of),
primary key (train_no, coach_no)
);

create table coach_type(
type_of varchar(30),
AC bool,
WiFi bool,
meal bool,
capacity int(2),
primary key (type_of)
);

create table route_table(
destination varchar(20),
source_point varchar(20),
distance int(4),
train_no int(5),
journey_date date,
class varchar(30),
available_seats int(2),
primary key (train_no, destination, source_point, journey_date, class )
);

create table train(

train_name varchar(30),
train_number int(5),
intial_station varchar(20),
final_station varchar(20),
primary key (train_number),
foreign key (train_number) references coach(train_no),
foreign key (train_number) references station(train_no),
foreign key (train_number) references train_type(train_no),
foreign key (train_number) references route_table(train_no),
foreign key (train_number) references days(train_no)
);

create table station(

station_name varchar(20),
platform_number int(2),
train_no int(5),
arrival_time time,
departure_time time,
primary key (train_no, station_name)
);

create table train_type(

train_no int(5),
train_type varchar(15),
primary key (train_no)
);


create table ticket_checker(
 
 ID int(4),
 train_no int(5),
 primary key (ID),
 foreign key(ID) references employee(eid)
);
create table city(
city_name varchar(20),
state varchar(20),
primary key(city_name)
);
create table employee(

eposition varchar(15),
eid int(4),
ename varchar(30),
DOB date,
city varchar(20),
contact int(10),
address varchar(50),
primary key (eid),
foreign key(city) references city(city_name)
);
create table user(
 gender varchar(1),
 city varchar(20),
 CID int(6),
 CName varchar(30),
 birthdate date,
 address varchar(50),
 contact int(10),
 primary key (CID),
 foreign key(city) references city(city_name)
);
create table ticket(
 
 CID int(6),
 source_station varchar(20),
 destination varchar(20),
 class varchar(30),
 fare int(5),
 train_no int(5),
 seat_no int(2),
 coach_no varchar(3),
 amount int(4),
 ticket_number int(10),
 journey_date date,
 primary key(ticket_number),
 foreign key (CID) references user(CID)
);

create table days(
	train_no int(5),
    sun bool,
    mon bool,
    tue bool,
    wed bool,
    thu bool,
    fri bool,
    sat bool,
    primary key (train_no)
);

UPDATE user SET field1=new-value1, field2=new-value2;

