create table users(
customers_id number(20) not null,
user_name varchar(20) not null, 
password varchar(20),
admin_id number(20),
admin_password varchar(20),
male varchar(20),
email_id varchar(30),
address varchar(70),
phone_no number(10),
Dates date,
primary key(customers_id));
alter table users add image blob;
desc users;

drop table users;
------------------------------------------------------------------------------------------------------------------------------------
create table lands(land_id number(30) not null,
owner_id number(30),
locations varchar(30),
land_length varchar(30),
land_breadth varchar(30), 
land_squarefeet varchar(30), 
land_surveyno varchar(30),
land_pattano varchar(30),
land_type varchar(30), 
contact_number number(30), 
land_status varchar(30),
price number(30), 
dates date,
primary key(land_id),
foreign key(owner_id)references users(customers_id));

alter table lands add image blob;
alter table lands add land_address varchar(30);
desc lands;
drop table lands;
--------------------------------------------------------------------------------------------------------------------------------------------

create table PG(
pg_id number(30),
owner_id number(30),
pg_location varchar(30),
pg_phoneno number(30),
pg_address varchar(30),
pg_rent varchar(30),
pg_foodfacility varchar(30),
pg_AC_nonAC varchar(30),
pg_status varchar(30),
dates date, 
primary key(pg_id),
foreign key(owner_id)references users(customers_id));
alter table pg add image blob;
drop table pg;
----------------------------------------------------------------------------------------------------------------------------------------
create table mach(
mas_id number(30),
machine_name varchar(30),
primary key(ma_id));
insert into mach values(1,'poobalan');

create sequence ma_id
   START WITH 2  INCREMENT BY 1;
     SELECT ma_id.nextval from machine;
     insert into machines values(ma_id.nextval,'wheelssparks');
     select * from machines;
     primary key(m_id);
     desc machines;
     desc Users;
     delete from machines where ma_id=8;
-------------------------------------------------------------------------------------------------------------------------------------------     
create table Appartments(app_id number(30) not null,
owner_id number(30),
app_locations varchar(30),
app_length varchar(30),
app_breadth varchar(30), 
app_squarefeet varchar(30), 
app_surveyno varchar(30),
app_pattano varchar(30), 
appcontact_number number(30), 
app_status varchar(30),
app_price number(30),
app_lift var(30),
app_floor var(30),
app_address var(30),
app_image blob,
dates date,
primary key(app_id),
foreign key(owner_id)references users(customers_id));
---------------------------------------------------------------------------------------------------------------------------------------
create table payment(
assest_id number(30),
land_assestid number(30),
pg_assestid number(30),
appartment_assestid number(30),
buyer_assestid number(30),
dates date,
amount number(30),
primary key(assest_id);
foreign key(appartment_assestid)references appartments(app_id));
foreign key(pg_assestid)references pg(pg_id));
foreign key(land_assestid)references lands(land_id))
desc lands;