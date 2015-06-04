CREATE TABLE [dbo].[Cliente]
(
	[idCliente] INT NOT NULL PRIMARY KEY, 
    [nome] VARCHAR(50) NULL, 
    [endereco] VARCHAR(50) NULL, 
    [cidade] VARCHAR(50) NULL, 
    [estado] VARCHAR(50) NULL, 
    [cep] VARCHAR(50) NULL
)
