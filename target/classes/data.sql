DELETE FROM tbl_user WHERE ID IN (1,2,3,4) ;

COMMIT;

INSERT INTO tbl_user (id, username, password, salary, age) VALUES (1, 'jimmy', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu', 3456, 33);
INSERT INTO tbl_user (id, username, password, salary, age) VALUES (2, 'jim', '$2a$04$PCIX2hYrve38M7eOcqAbCO9UqjYg7gfFNpKsinAxh99nms9e.8HwK', 7823, 23);
INSERT INTO tbl_user (id, username, password, salary, age) VALUES (3, 'joe', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu', 4234, 45);
INSERT INTO tbl_user (id, username, password, salary, age) VALUES (4, 'james', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu', 4234, 40);
 
 COMMIT;