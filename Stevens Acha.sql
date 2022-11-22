-- 1. Nombre de los hoteles por ciudad
create function f_nombre_hoteles_por_ciudadID(@ciudadID int)returns table
return
select Nombre from Hotel where Ciudad_ID = @ciudadID;

select * from dbo.f_nombre_hoteles_por_ciudadID (1);

--2. Funcion que retorne el nombre del hotel segun el ID de la reserva
create function f_nombre_hoteles_por_reservaID(@id int) returns varchar(50)
    begin declare @name varchar(50)
    select @name = Nombre from Hotel join Habitacion on Hotel.ID = Habitacion.Hotel_ID
join Reserva on Habitacion.ID = Reserva.Habitacion_ID
where Reserva.ID = @id
    return @name
    end;

print dbo.f_nombre_hoteles_por_reservaID(1);

--3. Funcion que retorne el numero de habitaciones dispobibles en 
--total segun el id de la ciudad

 create function f_num_habitaciones_dis_por_ciudadID (@id int) returns int
        begin
        declare @num int
select @num = count(Habitacion.ID) from Habitacion join Hotel on Habitacion.Hotel_ID = Hotel.ID
join Ciudad on Hotel.Ciudad_ID = Ciudad.ID
where Estado = 'Disponible' and Ciudad.ID = @id;
        return @num;
        end;

print dbo.f_num_habitaciones_dis_por_ciudadID (1);

--Datos empleados:

    --DATOS PAIS:
create procedure f_insert_pais (@id int, @nombre varchar(50)) as
begin
insert into Pais values (@id, @nombre)
end;

execute f_insert_pais 1,'Peru'
execute f_insert_pais 2,'Argentina'
execute f_insert_pais 3,'Uruguay'
execute f_insert_pais 4,'Colombia'
execute f_insert_pais 5,'Chile'

    --DATOS CIUDAD
create procedure f_insert_ciudad (@id int, @nombre varchar(50), @pais_ID int) as
begin
insert into Ciudad values (@id, @nombre, @pais_ID)
end;

create procedure f_update_ciudad (@id int, @nombre varchar(50), @pais_ID int) as
begin
    update Ciudad  set  Nombre = @nombre, Pais_ID = @pais_ID where ID = @id
end;
    drop procedure f_update_ciudad;
execute f_insert_ciudad 1,'Lima', 1;
execute f_insert_ciudad 2,'Cuzco', 1;
execute f_insert_ciudad 3,'Buenos Aires', 2;
execute f_insert_ciudad 4,'La Plata', 2;
execute f_insert_ciudad 5,'Montevideo', 3;
execute f_insert_ciudad 6,'Maldonado', 3;
execute f_insert_ciudad 7,'Bogota', 4;
execute f_insert_ciudad 8,'Medellin', 4;
execute f_insert_ciudad 9,'Santiago de Chile', 5;
execute f_insert_ciudad 10,'Vina del Mar', 5;

    --DATOS HOTEL
create procedure f_insert_hotel (@id int, @nombre varchar(50), @direccion varchar(50), @telefono varchar(20), @ciudadID int) as
begin
    insert into Hotel values (@id, @nombre, @direccion, @telefono, @ciudadID)
end;

create procedure f_update_hotel (@id int, @nombre varchar(50), @direccion varchar(50), @telefono varchar(20), @ciudadID int) as
begin
    update Hotel set Nombre = @nombre, Direccion = @direccion, Telefono = @telefono, Ciudad_ID = @ciudadID where ID = @id
end;

        drop procedure f_insert_hotel;
        execute f_insert_hotel 1,'Holiday Inn', 'Av. Tomas Valle, Esq. Av. Faucett',
                '51-1-6206006', 1;
        execute f_insert_hotel 2,'Hotel Boulevard', 'Av. Jose Pardo 771, Miraflores 15074',
                '+51 01 4446562', 1;
        execute f_insert_hotel 3,'Casa Suyay', 'C. Esperanza 144, Miraflores 15074',
                '+51 01 2429432', 1;
        execute f_insert_hotel 4,'Hotel Lexus', 'Av. Angamos Oeste 507, Miraflores 15074',
                '+51 01 2419808', 1;
        execute f_insert_hotel 5,'Alvear Palace Hotel', 'Av. Alvear 1891, C1129 CABA',
                '+54 11 4808-2100', 3;
        execute f_insert_hotel 6,'Hotel InterContinental Buenos Aires', '809 Moreno St, C1091AAQ Buenos Aire',
                '+54 11 4340-7100', 3;
        execute f_insert_hotel 7,'Palladio Hotel Buenos Aires - MGallery', 'Av. Callao 924, C1023AAP CABA',
                '+54 11 4700-7500', 3;
        execute f_insert_hotel 8,'Sofitel Buenos Aires Recoleta', 'Posadas 1232, C1011 CABA',
                '+54 11 4819-1100', 3;
        execute f_insert_hotel 9,'Novotel Vina del Mar', 'Calle 6 Norte, 745, 2520000 Vina del Mar',
                '+56 32 325 3700', 10;
        execute f_insert_hotel 10,'Pullman Vina del Mar San Martin', 'Av. San Martin 667, 2520096 Valparaiso',
                '+56 32 381 7100', 10;
        execute f_insert_hotel 11,'Hotel Diego de Almagro', '1 Nte. 221, Vina del Mar, Valparaiso',
                '+56 32 260 8500', 10;
        execute f_insert_hotel 12,'Gala Hotel ', 'Arlegui 273, Vina del Mar, Valparaiso',
                '+56 32 232 1500', 10;

    -- DATOS HABITACIONES
create procedure f_insert_habitacion (@id int, @tipo varchar(50), @nCamas int, @tv tinyint, @wifi tinyint,
  @costo money, @capacidad int, @estado varchar(50), @hotelID int) as
begin
insert into Habitacion values (@id, @tipo, @nCamas, @tv, @wifi, @costo, @capacidad, @estado, @hotelID)
end;

execute f_insert_habitacion 1, 'Suit', 4, 1,1,1500,4,'Disponible',1;
execute f_insert_habitacion 2, 'Doble', 2, 1,1,350,2,'Disponible',1;
execute f_insert_habitacion 3, 'Individual', 1, 0,1,150,2,'Ocupada',1;
execute f_insert_habitacion 4, 'Queen', 1, 1,1,750,2,'Disponible',1;
execute f_insert_habitacion 5, 'Twin', 2, 0,1,170,2,'Disponible',2;
execute f_insert_habitacion 6, 'Suit', 4, 1,1,1250,4,'Disponible',2;
execute f_insert_habitacion 7, 'Doble', 2, 1,0,530,2,'Disponible',2;
execute f_insert_habitacion 8, 'Doble', 2, 1,1,400,2,'Disponible',3;
execute f_insert_habitacion 9, 'Individual', 1, 1,0,140,2,'En mantenimiento',4;
execute f_insert_habitacion 10, 'Individual', 1, 1,0,160,1,'Disponible',4;
execute f_insert_habitacion 11, 'Queen', 1, 1,1,770,2,'Disponible',4;
execute f_insert_habitacion 12, 'Queen', 1, 1,1,1770,2,'Disponible',5;
execute f_insert_habitacion 13, 'Individual', 1, 0,1,770,1,'Disponible',5;
execute f_insert_habitacion 14, 'Queen', 1, 1,1,1340,2,'Ocupada',5;

    -- DATOS USUARIO
create procedure f_insert_usuarios (@id int, @dni char(8), @nombre varchar(50), @apellido varchar(50), @email varchar(50),
  @edad int, @genero varchar(50), @telefono char(9), @password varchar(50), @ciudadID int) as
begin
insert into Usuario values (@id, @dni, @nombre, @apellido, @email, @edad, @genero, @telefono, @password, @ciudadID)
end;

execute f_insert_usuarios 1,'12345678', 'Roberto', 'Armando', 'Roberto.Armando@gmail.com',30,
    'Masculino', '912345678', 'hola', 1.
    execute f_insert_usuarios 2,'12345677', 'Roberta', 'Armindo', 'Roberta.Armindo@gmail.com',31,
    'Masculino', '922345678', 'hola1', 2.
    execute f_insert_usuarios 3,'12345676', 'Juan', 'Romano', 'J.R@gmail.com',32,
    'Masculino', '932345678', 'hola2', 3.
    execute f_insert_usuarios 4,'12345675', 'Juana', 'Mora', 'J.M@gmail.com',33,
    'Masculino', '942345678', 'hola3', 4.
    execute f_insert_usuarios 5,'12345674', 'Mar', 'Mire', 'M.M@gmail.com',34,
    'Masculino', '952345678', 'hola4', 5.
    execute f_insert_usuarios 6,'12345673', 'Maria', 'More', 'Mar.Mor@gmail.com',35,
    'Masculino', '962345678', 'hola5', 2.
    execute f_insert_usuarios 7,'12345672', 'Pablo', 'Lolo', 'P.L@gmail.com',36,
    'Masculino', '972345678', 'hola6', 8.
    execute f_insert_usuarios 8,'12345671', 'Pedro', 'Holta', 'P.H@gmail.com',37,
    'Masculino', '982345678', 'hola7', 3.
    execute f_insert_usuarios 9,'12345670', 'Luis', 'Jonas', 'L.J@gmail.com',38,
    'Masculino', '992345678', 'hola8', 1.

    -- DATOS CLIENTE
    create procedure f_insert_cliente (@id int, @dni char(8), @nombre varchar(50), @apellido varchar(50),
     @telefono char(9), @usuarioID int) as
begin
insert into Cliente values (@id, @dni, @nombre, @apellido, @telefono, @usuarioID)
end;

    execute f_insert_cliente 1,'12345678', 'Roberto', 'Armando',
            '912345678',1;
    execute f_insert_cliente 2,'12345677', 'Roberta', 'Armindo',
        '922345678', 2;
    execute f_insert_cliente 3,'12345676', 'Juan', 'Romano',
        '932345678',  3;
    execute f_insert_cliente 4,'12345675', 'Juana', 'Mora',
        '942345678', 4;
    execute f_insert_cliente 5,'12345674', 'Mar', 'Mire',
        '952345678', 5;
    execute f_insert_cliente 6,'12345673', 'Maria', 'More',
        '962345678',6;

   --DATOS RESERVA
create procedure f_insert_reserva(@id int, @reservaDate date, @llegadaDate date, @salidaDate date,
@pedidoE varchar(50), @costo money, @estado int, @habitacionID int, @clienteID int) as
    begin
        insert into Reserva values (@id, @reservaDate, @llegadaDate, @salidaDate, @pedidoE, @costo, @habitacionID, @estado, @clienteID)
    end;

    execute f_insert_reserva 1,'2020-02-23', '2020-03-01', '2020-03-20', 'nothing',
    3000, 2,1,1;
    execute f_insert_reserva 2,'2020-01-13', '2020-01-20', '2020-01-30', 'Desayuno al cuarto',
    700, 3,2,2;
    execute f_insert_reserva 3,'2020-05-03', '2020-05-15', '2020-05-30', 'Sabanas hipoalergenicas',
    2500, 1,6,3;
    execute f_insert_reserva 4,'2020-03-22', '2020-04-01', '2020-04-07', 'Vino y copas',
    1500, 2,4,4;
    execute f_insert_reserva 5,'2020-06-21', '2020-07-21', '2020-08-05', 'Nothing',
    340, 1,5,5;
    execute f_insert_reserva 6,'2020-11-02', '2020-12-01', '2021-01-10', 'Silla de ruedas',
    1200, 3,8,6;

