 
INSERT INTO oauth_client_details (client_id,
                                  client_secret,
                                  resource_ids,
                                  scope,
                                  authorized_grant_types,
                                  web_server_redirect_uri,
                                  authorities,
                                  access_token_validity,
                                  refresh_token_validity,
                                  additional_information,
                                  autoapprove)
     VALUES ('clientId',
             '$2a$10$f47G/Xv1i70BYerfdeWxguYCJDDgYQBuazFwK5TAadcj5BKlGCNJ2',
             'resource-server-rest-api',
             'foo,read,write',
             'password,authorization_code,refresh_token',
             NULL,
             'ADMIN',
             36000,
             36000,
             NULL,
             TRUE);
            
 /* james passowrd : jmsPWD */             
INSERT INTO OAUTH_USERS (ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED, CREDENTIALS_EXPIRED, ENABLED)
        VALUES (  1,
                  'james',
                  '$2a$10$6Ma.GWHneStxnAz/ktuGgex/oU2fvEit3L3Cih3i93RUMI8Mt2.O2', FALSE, FALSE, FALSE, TRUE);
              
              
 /* matthew passowrd : mtthwPWD */     
INSERT INTO OAUTH_USERS (ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED, CREDENTIALS_EXPIRED, ENABLED)
        VALUES (  2,
                  'matthew',
                  '$2a$10$lQR.gETjhgplcbLOtDrEv.irf8zSjzoW0T1vykBHdsNwTrqnQ6im6', FALSE, FALSE, FALSE, TRUE);

 /* tiago passowrd : tgPWD */     
INSERT INTO OAUTH_USERS (ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED, CREDENTIALS_EXPIRED, ENABLED)
        VALUES ( 3 ,
                  'tiago',
                  '$2a$10$H5wwEW8xZVXssRs5svhhp.yhHZl1ApzfxWGP2cZko1PfD.xxNxA.i', FALSE, FALSE, FALSE, TRUE);
              
 /* lucas passowrd : lcsPWD */         
INSERT INTO OAUTH_USERS (ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED, CREDENTIALS_EXPIRED, ENABLED)
        VALUES ( 4,
                  'lucas',
                  '$2a$10$PPrf2YTMV50WEyE.w.qUJuNKb3pZ7lf04IbrnrGBB5Ey1D.SDo5bW', FALSE, FALSE, FALSE, TRUE);
                  
                  

INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 1);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 2);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 3);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 4);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 5);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 6);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 7);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 8);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 9);

INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (2, 2);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (2, 6);

INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (3, 3);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (3, 7);

INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (4, 9);
 

INSERT INTO OAUTH_AUTHORITY(ID, NAME) VALUES (1, 'COMPANY_CREATE');
INSERT INTO OAUTH_AUTHORITY(ID, NAME) VALUES (2, 'COMPANY_READ');
INSERT INTO OAUTH_AUTHORITY(ID, NAME) VALUES (3, 'COMPANY_UPDATE');
INSERT INTO OAUTH_AUTHORITY(ID, NAME) VALUES (4, 'COMPANY_DELETE');

INSERT INTO OAUTH_AUTHORITY(ID, NAME) VALUES (5, 'DEPARTMENT_CREATE');
INSERT INTO OAUTH_AUTHORITY(ID, NAME) VALUES (6, 'DEPARTMENT_READ');
INSERT INTO OAUTH_AUTHORITY(ID, NAME) VALUES (7, 'DEPARTMENT_UPDATE');
INSERT INTO OAUTH_AUTHORITY(ID, NAME) VALUES (8, 'DEPARTMENT_DELETE');

INSERT INTO OAUTH_AUTHORITY(ID, NAME) VALUES (9, 'ROLE_COMPANY_READER');