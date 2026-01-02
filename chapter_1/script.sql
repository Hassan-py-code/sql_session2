drop database if exists solicode;
create database solicode;
use solicode;

create table user(
   id_user int auto_increment primary key,
   first_name varchar(20) not null,
   email varchar(100) unique,
   password_t varchar(50) not null
) comment "create table users";

create table article(
   id_article int auto_increment primary key,
   title varchar(100) not null,
   content text not null,
   T_status enum("published","draft") default "draft",
   date_pub date,
   id_user int,
   foreign key (id_user) references user( id_user)
) comment "create table article";

insert into user(first_name,email,password_t)
values("Hassan","Hav@bvn.com","1233"),
      ("Said","saeuv@bvn.com","y3hdi"),
      ("mohammed","moha@gmail.com","Iunc");

insert into article (title,content,T_status,date_pub,id_user) 
values  ("the managment your self" ,"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur","published","2024-1-13",1),
        ("How to get " ,"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur","draft","2022-4-10",1),
         ("the managment your self" ,"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC","draft","2003-12-2",2),
         ("Everything" ,"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC","draft","2004-5-12",3);
         

SELECT  title ,  content FROM  article;

SELECT title, date_pub
FROM article
WHERE date_pub >= '2024-01-01';

SELECT title,  id_article
FROM article
WHERE id_article >= 2;

select title ,id_article
from article
order by id_article desc;

select title,id_article
from article 
order by id_article asc
limit 2;


