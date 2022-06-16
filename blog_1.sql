use blog;

select * from user;
-- 누가 작성했는지 필요 (연관 관계)
select * from board;
desc board;
-- 누가 작성했고 어느 게시글에 작성했는지 필요
select * from reply;

create table User (
       id integer not null auto_increment,
        createDate datetime(6),
        email varchar(50) not null,
        password varchar(100) not null,
        role varchar(255) default 'user',
        username varchar(30) not null,
        primary key (id)
    ) engine=InnoDB;
    
    create table Board (
       id integer not null auto_increment,
        content longtext,
        count integer default 0 not null,
        createDate datetime(6),
        title varchar(100) not null,
        userId integer,
        primary key (id)
    ) engine=InnoDB;
    
    create table Reply (
       id integer not null auto_increment,
        content varchar(200) not null,
        createDate datetime(6),
        boardId integer,
        userId integer,
        primary key (id)
    ) engine=InnoDB;
    
    
    -- create user 'ten1'@'%' identified by '1q2w3e4r5t!';
-- grant all privileges on *.* to 'ten1'@'%';
-- flush privileges;

-- create user 'ten1'@'localhost' identified by '1q2w3e4r5t!';

create database movie;
use movie;

