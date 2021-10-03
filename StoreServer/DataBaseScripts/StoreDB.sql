USE [Master]
GO

/****** Object:  Database [StoreDB]    Script Date: 19/09/2021 08:54:28 ******/
CREATE DATABASE [StoreDB]

Use StoreDB

Go

Create Table Users (

ID int Identity primary key,

Email nvarchar(100) not null,

FirstName nvarchar(30) not null,

LastName nvarchar(30) not null,

UserPswd nvarchar(30) not null,

CONSTRAINT UC_Email UNIQUE(Email)

)

Go

INSERT INTO Users VALUES
('kuku@kuku.com','kuku','kaka','1234');

GO


