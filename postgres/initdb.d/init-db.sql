-- CREATE DATABASE postgres;

\connect postgres

CREATE TABLE hello_world (
	id INT,
	name varchar(50),
	message TEXT
);

INSERT INTO hello_world (id, name, message) VALUES (1, 'Bitwolf', 'morbi vel lectus');
INSERT INTO hello_world (id, name, message) VALUES (2, 'Cookley', 'justo lacinia eget tincidunt');
INSERT INTO hello_world (id, name, message) VALUES (3, 'Zoolab', 'dapibus augue');
INSERT INTO hello_world (id, name, message) VALUES (4, 'Greenlam', 'ac tellus');
INSERT INTO hello_world (id, name, message) VALUES (5, 'Sub-Ex', 'orci eget orci vehicula');
INSERT INTO hello_world (id, name, message) VALUES (6, 'Fixflex', 'et ultrices posuere cubilia');
INSERT INTO hello_world (id, name, message) VALUES (7, 'Rank', 'nulla ac');
INSERT INTO hello_world (id, name, message) VALUES (8, 'Cookley', 'morbi quis');
INSERT INTO hello_world (id, name, message) VALUES (9, 'Y-find', 'risus dapibus augue vel accumsan');
INSERT INTO hello_world (id, name, message) VALUES (10, 'Bytecard', 'diam nam tristique');

