create table Owner(ownerid int auto_increment,ownerName char(100) default null, phone char(15) default null, houseDetails char(50) default null, street char(30) default null, city char(30) default null, state char(30) default null, country char(30) default null, pincode char(10) default null, dateOfPurchase char(10) default null, code char(20) default null, isResident boolean default null,userid int not null, apartmentid int default null, primary key (ownerid), foreign key (apartmentid) references Apartment(apartmentid) on delete cascade, foreign key(userid) references user(userid) on delete cascade);

create table Resident(residentid int auto_increment, residentName char(50) default null, isOwner boolean default null,code char(20) default null, userid int not null, apartmentid int default null, numOfMembers char(2) default null, phone char(15) default null, primary key(residentid), foreign key(userid) references user(userid) on delete cascade, foreign key(apartmentid) references Apartment(apartmentid) on delete cascade);

create table Staff( name char(50) default null, phone char(15) default null, houseDetails char(50) default null, street char(50) default null, userid int not null, staffid int auto_increment, dob char(15) default null, joinDate char(15) default null, code char(20) default null, primary key(staffid), foreign key(userid) references user(userid) on delete cascade);

create table user(userid int, username char(50), password char(100),userType char(20), primary key(userid));

create table Vendor(vendorid int auto_increment, name char(30) default null, phone char(15) default null, email char(30) default null, officeDetails char(70) default null, street char(50) default null, city char(50) default null, pincode char(10) default null, state char(30) default null, code char(20) default null, monthlyAmount int default null, primary key(vendorid));

create table Service(serviceid int auto_increment, fund int default null, monthlyAmount int default null, vendorid int default null, name char(30) default null, description char(150) default null, startTime char(10) default null, endTime char(10) default null, numOfPeople int default null, primary key(serviceid), foreign key(vendorid) references Vendor(vendorid) on delete set null);

create table Project(projectid int auto_increment, fund int default null, code char(20) default null, vendorid int default null, startTime char(10) default null, endTime char(10) default null, description char(150) default null, primary key(projectid), foreign key(vendorid) references Vendor(vendorid) on delete set null);

create table Facilities(facilityid int auto_increment, amountPerHour int default null, facilityName char(30) default null, primary key(facilityid));

create table Booking(bookingid int auto_increment, phone char(15) default null, amount int default null, date char(10) default null, startTime char(20) default null, endTime char(20) default null, purposeOfBooking varchar(70) default null, facilityid int default null, residentid int default null, primary key(bookingid), foreign key(residentid) references Resident(residentid) on delete cascade, foreign key(facilityid) references Facilities(facilityid) on delete cascade);

create table Guest(guestid int auto_increment, name varchar(30) default null, purposeOfVisit varchar(100) default null, entryTime char(6) default null, exitTime char(6) default null, phone varchar(15) default null, category varchar(20) default null, visited varchar(300) default null, date char(11) default null, primary key(guestid));

create table Maintenance( maintenanceid int auto_increment, month char(2) default null, year char(4) default null, amount int default null, ownerid int default null, apartmentid int default null, paid boolean default false, primary key(maintenanceid), foreign key(apartmentid) references Apartment(apartmentid) on delete cascade, foreign key(ownerid) references Owner(ownerid) on delete set null);

create table Paid(transactionid int auto_increment, amount int default null, projectid int default null, vendorid int default null, primary key(transactionid), foreign key(vendorid) references Vendor(vendorid) on delete set null, foreign key(projectid) references Project(projectid) on delete cascade);

create table Salary(transactionid int auto_increment, vendorid int default null, serviceid int default null, salary int default null, monthyear char(7) default null, primary key(transactionid), foreign key(vendorid) references Vendor(vendorid) on delete set null, foreign key(serviceid) references Service(serviceid) on delete cascade);
