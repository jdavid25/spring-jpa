
INSERT INTO clientes (nombre,apellido,email,create_at,foto) VALUES('Andres1', 'Guzman', 'profesorbolsadeideas@mail.com', '2018-02-12','');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) VALUES('Pepito2', 'Perez', 'pepitoperez@mail.com', '2018-05-16','');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) VALUES('Andres3', 'Guzman', 'profesorbolsadeideas@mail.com', '2018-02-12','');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) VALUES('Pepito4', 'Perez', 'pepitoperez@mail.com', '2018-05-16','');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) VALUES('Andres5', 'Guzman', 'profesorbolsadeideas@mail.com', '2018-02-12','');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) VALUES('Pepito6', 'Perez', 'pepitoperez@mail.com', '2018-05-16','');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) VALUES('Andres7', 'Guzman', 'profesorbolsadeideas@mail.com', '2018-02-12','');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) VALUES('Pepito8', 'Perez', 'pepitoperez@mail.com', '2018-05-16','');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) VALUES('Andres9', 'Guzman', 'profesorbolsadeideas@mail.com', '2018-02-12','');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) VALUES('Pepito10', 'Perez', 'pepitoperez@mail.com', '2018-05-16','');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) VALUES('Andres11', 'Guzman', 'profesorbolsadeideas@mail.com', '2018-02-12','');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) VALUES('Pepito12', 'Perez', 'pepitoperez@mail.com', '2018-05-16','');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) VALUES('Andres13', 'Guzman', 'profesorbolsadeideas@mail.com', '2018-02-12','');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) VALUES('Pepito14', 'Perez', 'pepitoperez@mail.com', '2018-05-16','');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) VALUES('Andres15', 'Guzman', 'profesorbolsadeideas@mail.com', '2018-02-12','');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) VALUES('Pepito16', 'Perez', 'pepitoperez@mail.com', '2018-05-16','');

INSERT INTO productos (nombre, precio, create_at) VALUES('Tv Sony', 20000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Laptop Asus', 30000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Iphone SY', 40000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Mesa redonda', 5000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Balon soccer', 200, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Buso negro', 2000, NOW());

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('factura equipos de oficina', null, 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1,1,1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (2,1,2);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1,1,3);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (3,1,4);

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('factura buso', 'alguna nota importante', 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (3,2,6);

INSERT INTO users (username, password, enabled) VALUES ('andres','$2a$10$eZnmoiBZH3PxmV0skkWss.38tMopRVO9dj36wkX/K/ktutvHQ92hK',1);
INSERT INTO users (username, password, enabled) VALUES ('admin','$2a$10$BPZZQmyUAi.l1m7WIzk5Dej0CnsQweLTBIGSrMS.3ipZoRkx8aTsK',1);

INSERT INTO authorities (user_id, authority) VALUES (1, 'ROLE_USER');
INSERT INTO authorities (user_id, authority) VALUES (2, 'ROLE_ADMIN');
INSERT INTO authorities (user_id, authority) VALUES (2, 'ROLE_USER');