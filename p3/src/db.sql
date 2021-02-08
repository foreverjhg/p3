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
(DISH_NAME varchar2(30) constraint pk_dish primary key,
PRICE varchar2(30) not null,
CNT number not null,
image varchar2(100) not null);

create table  delivery
(ID varchar2(30) ,
DISH_NAME varchar2(30),
constraint fk_id foreign key(ID) REFERENCES member(ID),
constraint fk_dish foreign key(DISH_NAME) REFERENCES meal_kit(DISH_NAME)
);

create table review
(ID varchar2(30),
DISH_NAME varchar2(30),
MESSAGE varchar2(1000),
STAR varchar2(30),
constraint fk_id2 foreign key(ID) REFERENCES member(ID),
constraint fk_dish2 foreign key(DISH_NAME) REFERENCES meal_kit(DISH_NAME));