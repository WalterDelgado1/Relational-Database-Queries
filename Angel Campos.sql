insert into Pais (ID, Nombre) values (1,'Peru')
insert into Pais (ID, Nombre) values (2,'Chile')
insert into Pais (ID, Nombre) values (3,'Colombia')
insert into Pais (ID, Nombre) values (4,'Australia')
insert into Pais (ID, Nombre) values (5,'Argentina')
select * from Pais

insert into Ciudad (ID, Nombre, Pais_ID) values (1,'Lima',1)
insert into Ciudad (ID, Nombre, Pais_ID) values (2,'Ayacucho',1)
insert into Ciudad (ID, Nombre, Pais_ID) values (3,'Tarapoto',1)
insert into Ciudad (ID, Nombre, Pais_ID) values (4,'Arequipa',1)
insert into Ciudad (ID, Nombre, Pais_ID) values (5,'Chiclayo',1)
select *from Ciudad

insert into Hotel (ID, Nombre, Direccion, Telefono, Ciudad_ID) values (1,'Hotel Pachacutec','Avenida Carlitos','999999999',1)
insert into Hotel (ID, Nombre, Direccion, Telefono, Ciudad_ID) values (2,'Hotel Once','Avenida Doble','999999999',2)
insert into Hotel (ID, Nombre, Direccion, Telefono, Ciudad_ID) values (3,'Hotel CherryUp','Avenida Minatozaki','999999999',3)
insert into Hotel (ID, Nombre, Direccion, Telefono, Ciudad_ID) values (4,'Hotel The Feels','Avenida Los cristos','999999999',4)
insert into Hotel (ID, Nombre, Direccion, Telefono, Ciudad_ID) values (5,'Hotel Hirai Momo','Avenida Andropecuante','999999999',5)
select * from Hotel

insert into Hotel_Admin (ID, DNI, Nombre, Apellido, Rango, Hotel_ID, App_Admin_ID) VALUES (1,'71206070','Momo','Hirai','Administrador',1,1)
insert into Hotel_Admin (ID, DNI, Nombre, Apellido, Rango, Hotel_ID, App_Admin_ID) VALUES (2,'71206071','Nayeon','Im','Administrador',2,1)
insert into Hotel_Admin (ID, DNI, Nombre, Apellido, Rango, Hotel_ID, App_Admin_ID) VALUES (3,'71206072','Sana','Minatozaki','Administrador',3,1)
insert into Hotel_Admin (ID, DNI, Nombre, Apellido, Rango, Hotel_ID, App_Admin_ID) VALUES (4,'71206073','Mina','Sharon','Administrador',4,1)
insert into Hotel_Admin (ID, DNI, Nombre, Apellido, Rango, Hotel_ID, App_Admin_ID) VALUES (5,'71206074','Ji-Hio','Park','Administrador',5,1)
select * from Hotel_Admin

insert into App_Admin (ID, DNI, Nombre, Apellido, Rango, Password) values (1,'71206070','Nacy','Jowel','Administrador',1)
select * from App_Admin

insert into Usuario (ID, DNI, Nombre, Apellido, Email, Edad, Genero, Password, Ciudad_ID) values (1,'61206060','Orlando','Salas','123@gmai.com',19,'M','123',1)
insert into Usuario (ID, DNI, Nombre, Apellido, Email, Edad, Genero, Password, Ciudad_ID) values (2,'61206061','Angel','Campos','124@gmai.com',19,'M','123',1)
insert into Usuario (ID, DNI, Nombre, Apellido, Email, Edad, Genero, Password, Ciudad_ID) values (3,'61206062','Pedro','Sanchez','125@gmai.com',50,'M','123',1)
insert into Usuario (ID, DNI, Nombre, Apellido, Email, Edad, Genero, Password, Ciudad_ID) values (4,'61206063','Ibai','Llanos','126@gmai.com',26,'M','123',1)
insert into Usuario (ID, DNI, Nombre, Apellido, Email, Edad, Genero, Password, Ciudad_ID) values (5,'61206064','Percy','Rios','127@gmai.com',18,'M','123',1)
select * from Usuario;

insert into Cliente (ID, DNI, Nombre, Usuario_ID) values (1,'61206060','Orlando',1)
insert into Cliente (ID, DNI, Nombre, Usuario_ID) values (2,'61206061','Angel', 2)
insert into Cliente (ID, DNI, Nombre, Usuario_ID) values (3,'61206062','Pedro',3)
insert into Cliente (ID, DNI, Nombre, Usuario_ID) values (4,'61206063','Ibai',4)
insert into Cliente (ID, DNI, Nombre, Usuario_ID) values (5,'61206064','Percy',5)
select * from Cliente;

insert into Habitacion (ID, Tipo, nCamas, TV, Wifi, Costo, Capacidad, Estado, Hotel_ID) VALUES (1,'Personal',1,1,1,60.00,1,'Reservado',1)
insert into Habitacion (ID, Tipo, nCamas, TV, Wifi, Costo, Capacidad, Estado, Hotel_ID) VALUES (2,'Personal',1,1,1,80.00,1,'Reservado',2)
insert into Habitacion (ID, Tipo, nCamas, TV, Wifi, Costo, Capacidad, Estado, Hotel_ID) VALUES (3,'Personal',1,1,1,50.00,1,'Reservado',3)
insert into Habitacion (ID, Tipo, nCamas, TV, Wifi, Costo, Capacidad, Estado, Hotel_ID) VALUES (4,'Personal',1,1,1,70.00,1,'Reservado',4)
insert into Habitacion (ID, Tipo, nCamas, TV, Wifi, Costo, Capacidad, Estado, Hotel_ID) VALUES (5,'Personal',1,1,1,100.00,1,'Reservado',5)
select * from Habitacion

insert into Reserva (ID, Reserva_date, Llegada_date, Salida_date, Costo, Habitacion_ID, Estado, Cliente_ID) VALUES (1,'2022-11-10','2022-11-15','2022-11-20',60.00,1,2,1)
insert into Reserva (ID, Reserva_date, Llegada_date, Salida_date, Costo, Habitacion_ID, Estado, Cliente_ID) VALUES (2,'2022-11-10','2022-11-15','2022-11-20',80.00,2,2,2)
insert into Reserva (ID, Reserva_date, Llegada_date, Salida_date, Costo, Habitacion_ID, Estado, Cliente_ID) VALUES (3,'2022-11-10','2022-11-15','2022-11-20',50.00,3,2,3)
insert into Reserva (ID, Reserva_date, Llegada_date, Salida_date, Costo, Habitacion_ID, Estado, Cliente_ID) VALUES (4,'2022-11-10','2022-11-15','2022-11-20',70.00,4,2,4)
insert into Reserva (ID, Reserva_date, Llegada_date, Salida_date, Costo, Habitacion_ID, Estado, Cliente_ID) VALUES (5,'2022-11-10','2022-11-15','2022-11-20',100.00,5,2,5)
select * from Reserva

insert into Cancelacion (ID, Fecha, Monto_devolucion, Reserva_ID) values (1,'2022-11-14',50,1)
insert into Cancelacion (ID, Fecha, Monto_devolucion, Reserva_ID) values (3,'2022-11-14',40,3)
insert into Cancelacion (ID, Fecha, Monto_devolucion, Reserva_ID) values (5,'2022-11-14',80,5)
select * from Cancelacion

select Hotel_Admin.Nombre, Hotel_Admin.Apellido
from Hotel_Admin join Hotel H on H.ID = Hotel_Admin.Hotel_ID
    join Habitacion H2 on H.ID = H2.Hotel_ID
    join Reserva R2 on H2.ID = R2.Habitacion_ID
    where R2.ID = 1
order by H2.Hotel_ID

select Usuario.Nombre, Usuario.Apellido
from Usuario join Cliente C on Usuario.ID = C.Usuario_ID
    join Reserva R2 on C.ID = R2.Cliente_ID
    join Cancelacion C2 on R2.ID = C2.Reserva_ID
order by C2.ID

--Funcion que retorna el nombre del hotel admin segun el ID de una reserva.
alter function f_nombre_hotel_admin_reserva_id(@id int)returns varchar(50)
    begin
    declare @nombre varchar(50)
    select @nombre = Hotel_Admin.Nombre + ' '+ Hotel_Admin.Apellido
    from Hotel_Admin join Hotel H on H.ID = Hotel_Admin.Hotel_ID
    join Habitacion H2 on H.ID = H2.Hotel_ID
    join Reserva R2 on H2.ID = R2.Habitacion_ID
    where R2.ID = @id
    return @nombre
    end

print dbo.f_nombre_hotel_admin_reserva_id(1)

--Funcion que retorna el nombre del usuario segun el id de la cancelacion
create function f_nombre_usuario_reserva_cancelada_id(@id int)returns varchar(50)
begin
    declare @nombre varchar(50)
    select @nombre = Usuario.Nombre + ' '+ Usuario.Apellido
    from Usuario join Cliente C on Usuario.ID = C.Usuario_ID
    join Reserva R2 on C.ID = R2.Cliente_ID
    join Cancelacion C2 on R2.ID = C2.Reserva_ID
    where C2.ID=@id
    return @nombre
end;

print dbo.f_nombre_usuario_reserva_cancelada_id(1)

--Devuelve el Nombre y Paellido del administrador de cada hotel--
select H.Nombre, Hotel_Admin.Nombre, Hotel_Admin.Apellido
from Hotel_Admin join Hotel H on Hotel_Admin.Hotel_ID = H.ID
order by Hotel_Admin.Nombre;
