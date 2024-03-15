CREATE DATABASE DBCRUD
GO
USE DBCRUD
GO

CREATE table Contacto(
IdContacto int identity primary key,
Nombre varchar(50),
Telefono varchar(50),
Correo varchar(50)
)
GO
CREATE PROCEDURE sp_Listar
as
begin
	SELECT * FROM Contacto
end
go

execute sp_Listar
go

CREATE PROCEDURE sp_Obtener(
@idContacto int
)
AS
BEGIN
	SELECT * FROM Contacto WHERE IdContacto = @idContacto
END
GO

CREATE PROCEDURE sp_Guardar(
@Nombre varchar(50),
@Telefono varchar(50),
@Correo varchar(50)
)
AS
BEGIN
	INSERT INTO Contacto(Nombre, Telefono, Correo) VALUES(@Nombre, @Telefono, @Correo)
END
GO

CREATE PROCEDURE sp_Editar(
@idContacto int,
@Nombre varchar(50),
@Telefono varchar(50),
@Correo varchar(50)
)
AS
BEGIN
	UPDATE Contacto set Nombre = @Nombre, Telefono = @Telefono, Correo = @Correo WHERE IdContacto = @idContacto
END
GO

CREATE PROCEDURE sp_Eliminar(
@idContacto int
)
AS
BEGIN
	DELETE FROM Contacto WHERE IdContacto = @idContacto
END
GO
