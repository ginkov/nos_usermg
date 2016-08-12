drop database if exists nos_usermg;

create database nos_usermg
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;
use nos_usermg;

create table user(
	id int unsigned auto_increment primary key,
	name varchar(255) not null unique,
	description varchar(255), 
	pass_md5 varchar(255)
);

create table role(
	id int unsigned auto_increment primary key,
	role varchar(255) not null unique,
	description varchar(255)
);

create table user_role_join(
	user_id int unsigned not null,
	role_id int unsigned not null,
	primary key(user_id, role_id),
	foreign key(user_id) references user(id),
	foreign key(role_id) references role(id)
);

insert into user values(1, 'super', 'super', '$2a$10$FZmhwo4WR3Mt0Eif/a/8H.3CuAnNOUb36CWrKIBpixdeZ.x3knGXG');
insert into role values(1, 'ROLE_SUPER'),(2,'ROLE_ADMIN'),(3,'ROLE_USER');
insert into user_role_join values(1,1),(1,2),(1,3);
