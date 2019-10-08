DROP DATABASE SAASOAUTH;

CREATE DATABASE IF NOT EXISTS SAASOAUTH;

USE SAASOAUTH;



DROP TABLE if exists oauth_client_details;

CREATE TABLE oauth_client_details
(
   client_id                 VARCHAR (255) PRIMARY KEY,
   resource_ids              VARCHAR (255),
   client_secret             VARCHAR (255),
   scope                     VARCHAR (255),
   authorized_grant_types    VARCHAR (255),
   web_server_redirect_uri   VARCHAR (255),
   authorities               VARCHAR (255),
   access_token_validity     INTEGER,
   refresh_token_validity    INTEGER,
   additional_information    VARCHAR (4096),
   autoapprove               VARCHAR (255)
);

CREATE TABLE if
  not exists oauth_client_token (
  token_id VARCHAR(255),
  token LONG VARBINARY,
  authentication_id VARCHAR(255) PRIMARY KEY,
  user_name VARCHAR(255),
  client_id VARCHAR(255)
);

CREATE TABLE if
  not exists oauth_access_token (
  token_id VARCHAR(255),
  token LONG VARBINARY,
  authentication_id VARCHAR(255) PRIMARY KEY,
  user_name VARCHAR(255),
  client_id VARCHAR(255),
  authentication LONG VARBINARY,
  refresh_token VARCHAR(255)
);

CREATE TABLE if
  not exists oauth_refresh_token (
  token_id VARCHAR(255),
  token LONG VARBINARY,
  authentication LONG VARBINARY
);

CREATE TABLE if
  not exists oauth_code (
  code VARCHAR(255), authentication LONG VARBINARY
);

CREATE TABLE if
  not exists oauth_approvals (
    userId VARCHAR(255),
    clientId VARCHAR(255),
    scope VARCHAR(255),
    status VARCHAR(10),
    expiresAt TIMESTAMP,
    lastModifiedAt TIMESTAMP
);

CREATE TABLE if
  not exists ClientDetails (
  appId VARCHAR(255) PRIMARY KEY,
  resourceIds VARCHAR(255),
  appSecret VARCHAR(255),
  scope VARCHAR(255),
  grantTypes VARCHAR(255),
  redirectUrl VARCHAR(255),
  authorities VARCHAR(255),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additionalInformation VARCHAR(4096),
  autoApproveScopes VARCHAR(255)
);

  
DROP TABLE IF EXISTS OAUTH_AUTHORITY;
CREATE TABLE OAUTH_AUTHORITY (
   ID  INT NOT NULL,
   NAME VARCHAR(255),
   PRIMARY KEY (ID)
);

ALTER TABLE  OAUTH_AUTHORITY ADD CONSTRAINT AUTHORITY_NAME UNIQUE (NAME);


DROP TABLE IF EXISTS OAUTH_USERS;
CREATE TABLE OAUTH_USERS (
   ID INT NOT NULL,
   ACCOUNT_EXPIRED BOOLEAN,
   ACCOUNT_LOCKED BOOLEAN,
   CREDENTIALS_EXPIRED BOOLEAN,
   ENABLED BOOLEAN,
   PASSWORD VARCHAR(255),
   USER_NAME VARCHAR(255),
   PRIMARY KEY (ID)
) ENGINE=InnoDB ;

ALTER TABLE OAUTH_USERS ADD CONSTRAINT OAUTH_USERS_USER_NAME UNIQUE (USER_NAME);



DROP TABLE IF EXISTS USERS_AUTHORITIES;
CREATE TABLE USERS_AUTHORITIES (
   USER_ID INT8 NOT NULL,
   AUTHORITY_ID INT8 NOT NULL,
   PRIMARY KEY (USER_ID, AUTHORITY_ID)
); 

/*ALTER TABLE  USERS_AUTHORITIES ADD CONSTRAINT USERS_AUTHORITIES_AUTHORITY  FOREIGN KEY (AUTHORITY_ID) REFERENCES OAUTH_AUTHORITY(ID);*/

/*ALTER TABLE  USERS_AUTHORITIES ADD CONSTRAINT USERS_AUTHORITIES_USER  FOREIGN KEY (USER_ID) REFERENCES OAUTH_USERS(ID);*/
