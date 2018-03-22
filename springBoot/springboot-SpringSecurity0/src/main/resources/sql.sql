
set sql_safe_updates=0; 
set sql_safe_updates=off; 

CREATE TABLE `test`.`sys_user` (
  `id` INT NOT NULL,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL);



CREATE TABLE `test`.`sys_role` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL);
  

CREATE TABLE `test`.`sys_role_user` (
  `id` INT NOT NULL,
  `sys_user_id` VARCHAR(45) NULL,
  `Sys_Role_id` VARCHAR(45) NULL);


insert into SYS_USER (id,username, password) values (1,'admin', 'admin');
insert into SYS_USER (id,username, password) values (2,'abel', 'abel');

insert into SYS_ROLE(id,name) values(1,'ROLE_ADMIN');
insert into SYS_ROLE(id,name) values(2,'ROLE_USER');

insert into SYS_ROLE_USER(id,SYS_USER_ID,Sys_Role_id) values(1,1,1);
insert into SYS_ROLE_USER(id,SYS_USER_ID,Sys_Role_id) values(2,2,2);

select * from SYS_USER;

update sys_user t set t.password='6d789d4353c72e4f625d21c6b7ac2982' where t.username='admin'

