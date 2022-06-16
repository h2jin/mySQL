create database movie_1;
use movie_1;

select * from actor;
select * from movie;
select * from role;


create table Actor (
       id integer not null auto_increment,
        actorName varchar(20) not null,
        birthYear integer not null,
        height integer not null,
        image TEXT,
        partner varchar(20),
        weight integer not null,
        primary key (id)
    ) engine=InnoDB;
    
    create table Movie (
       title varchar(30) not null,
        genre varchar(10),
        image TEXT,
        releaseDate datetime(6) not null,
        starScore float not null,
        primary key (title)
    ) engine=InnoDB;
    
    create table Role (
       actorName varchar(20) not null,
        category char(1),
        roleName varchar(20),
        title varchar(30) not null,
        primary key (title, actorName)
    ) engine=InnoDB;
    
    create table Score (
       audience integer not null,
        sales tinyblob,
        title_title varchar(30) not null,
        primary key (title_title)
    ) engine=InnoDB

