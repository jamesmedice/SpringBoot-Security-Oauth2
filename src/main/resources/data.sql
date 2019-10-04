
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
             'secret',
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
             'secret',
             'read,write,foo,bar',
             'implicit',
             NULL,
             NULL,
             36000,
             36000,
             NULL,
             FALSE);
 
              
              
INSERT INTO auth_details
        VALUES (
                  'james',
                  '$2a$10$QBAjgmeCKjqgjMQwJARuPOlfhc33UngPh6aJbX5Ti5HVsSURc.ix2');
              
INSERT INTO auth_details
        VALUES (
                  'matthew',
                  '$2a$10$QBAjgmeCKjqgjMQwJARuPOlfhc33UngPh6aJbX5Ti5HVsSURc.ix2');

INSERT INTO auth_details
        VALUES (
                  'tiago',
                  '$2a$10$WJPNuueC2XXu2F/bEet2p.g7kiTQ1pbkN3yPPGeK4p96ujmdO28UG');
                  
INSERT INTO auth_details
        VALUES (
                  'lucas',
                  '$2a$10$WJPNuueC2XXu2F/bEet2p.g7kiTQ1pbkN3yPPGeK4p96ujmdO28UG');
 