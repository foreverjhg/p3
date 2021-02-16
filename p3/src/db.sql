
drop table member CASCADE CONSTRAINTS;
drop table meal_kit CASCADE CONSTRAINTS;
drop table delivery CASCADE CONSTRAINTS;
drop table review  CASCADE CONSTRAINTS;

create table member 
(ID varchar2(30) constraint pk_id primary key,
PW varchar2(30) not null,
NAME varchar2(30) not null,
ADDRESS varchar2(100) not null,
PHONE varchar2(30) not null
);

create table meal_kit
(DISHNUM varchar2(500) constraint pk_dish primary key,
DISHNAME varchar2(30) not null,
FOODKIND char(1) not null,
PRICE number not null,
RECIPE varchar2(3000) not null,
CNT number not null,
IMAGE1 blob not null,
IMAGE2 blob not null,
IMAGE3 blob not null,
IMAGE4 blob not null,
IMAGE5 blob not null);

create table  delivery
(ID varchar2(30) ,
DISHNUM varchar2(30),
CNT number not null,
constraint fk_id foreign key(ID) REFERENCES member(ID),
constraint fk_dish foreign key(DISHNUM) REFERENCES meal_kit(DISHNUM)
);

create table review
(NUM number,
ID varchar2(30),
DISHNUM varchar2(30),
MESSAGE varchar2(1000),
STARPOINT varchar2(30),
WRITEDATE DATE,
constraint fk_id2 foreign key(ID) REFERENCES member(ID),
constraint fk_dish2 foreign key(DISHNUM) REFERENCES meal_kit(DISHNUM));