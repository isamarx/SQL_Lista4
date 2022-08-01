-- DML (CRUD)
-- SELECT
-- INSERT
-- UPDATE
-- DELETE

USE db_marketplace

INSERT INTO Usuarios
VALUES
('Luiz','luiz@email.com','654321','Rua Rouxinol - 556'),
('Rosaria','rosaria@email.com','654321','Rua Paranapanema - 354'),
('João','joao@email.com','568368','Rua Camarões - 263'),
('Laura','laura@email.com','134652','Rua itaim - 126')

INSERT INTO Categorias
VALUES
(1, 'Eletrônicos'),
(2, 'Cozinha')

INSERT INTO Produtos
VALUES
('TV', 'Smart 65 polegadas', 4200.00, 1, 1),
('Panela de Pressão','Tramontina com Fechamento Externo', 249.99,2,2),
('Som', '1500w Bivolt',259.99,3,1),
('Alexa', '3ºgeração', 331.55, 3,1),
('Geladeira','2 portas BRANCA',5479.99,4,2)

INSERT INTO Compras
VALUES
(1,3),
(2,4),
(4,5),
(3,2),
(1,1)

SELECT
Usuarios.Nome AS Nome,
COUNT(Compras.FK_Comprador) AS QtdProduto
--Produtos.NomeProduto AS 'Nome Produto'
FROM Usuarios
LEFT JOIN Compras
ON Usuarios.Id = Compras.FK_Comprador

LEFT JOIN Produtos ON Compras.FK_Produto = Produtos.Id
GROUP BY Usuarios.Nome