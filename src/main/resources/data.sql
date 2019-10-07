
INSERT INTO oauth_client_details (client_id,
                                  client_secret,
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
             'foo,read,write',
             'password,authorization_code,refresh_token',
             NULL,
             NULL,
             36000,
             36000,
             NULL,
             TRUE);

INSERT INTO oauth_client_details (client_id,
                                  client_secret,
                                  scope,
                                  authorized_grant_types,
                                  web_server_redirect_uri,
                                  authorities,
                                  access_token_validity,
                                  refresh_token_validity,
                                  additional_information,
                                  autoapprove)
     VALUES ('userId',
             '$2a$10$f47G/Xv1i70BYerfdeWxguYCJDDgYQBuazFwK5TAadcj5BKlGCNJ2',
             'read,write,foo,bar',
             'implicit',
             NULL,
             NULL,
             36000,
             36000,
             NULL,
             FALSE);
 
              
              
INSERT INTO OAUTH_DETAILS
        VALUES (
                  'james',
                  '$2a$10$f47G/Xv1i70BYerfdeWxguYCJDDgYQBuazFwK5TAadcj5BKlGCNJ2');
              
INSERT INTO OAUTH_DETAILS
        VALUES (
                  'matthew',
                  '$2a$10$f47G/Xv1i70BYerfdeWxguYCJDDgYQBuazFwK5TAadcj5BKlGCNJ2');

INSERT INTO OAUTH_DETAILS
        VALUES (
                  'tiago',
                  '$2a$10$f47G/Xv1i70BYerfdeWxguYCJDDgYQBuazFwK5TAadcj5BKlGCNJ2');
                  
INSERT INTO OAUTH_DETAILS
        VALUES (
                  'lucas',
                  '$2a$10$f47G/Xv1i70BYerfdeWxguYCJDDgYQBuazFwK5TAadcj5BKlGCNJ2');
 