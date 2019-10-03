CREATE DATABASE IF NOT EXISTS SaasOauth;

USE SaasOauth;
 

CREATE TABLE IF NOT EXISTS  tbl_user (
  id INT(20) NOT NULL,
  username varchar(25) NOT NULL,
  password varchar(75) NOT NULL,
  salary bigint(10) NOT NULL,
  age int(2) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; 