-- DML (CRUD)
-- SELECT
-- INSERT
-- UPDATE
-- DELETE

INSERT INTO tb_usuarios
VALUES
(1,'Lucas','lucas@email.com','134652','Rua Italia - 456','CARTÃO'),
(2,'Israel','raelzinho@email.com','134652','Rua Ameixeiras - 265','BOLETO'),
(3,'Thais','thata@email.com','134652','Rua Rouxinol - 263','CARTÃO'),
(4,'Gustavo','gusta@email.com','134652','Rua Jacui - 126','PIX')

INSERT INTO tb_produtos
VALUES
(1, 2000.00, 15, 'TV SAMSUNG'),
(2, 1550.00, 8, 'SOFÁ'),
(3, 1200.00, 10, 'FOGÃO BRASTEMP'),
(4, 5575.00, 5, 'GELADEIRA')

INSERT INTO tb_entregas
VALUES
(1, '27/04/2022', 2, 4),
(2, '05/12/2022', 3, 1),
(3, '07/05/2022', 1, 3),
(4, '15/06/2022', 4, 2)

INSERT INTO tb_entregas
VALUES
(5, '07/05/2022', 1, 4)

SELECT * FROM tb_usuarios
SELECT * FROM tb_produtos
SELECT * FROM tb_entregas

SELECT * FROM tb_produtos
WHERE tb_produtos.Preco BETWEEN 1000.00 AND 4000.00

SELECT
tb_usuarios.Nome AS Nome,
SUM(tb_produtos.Preco) AS Preco
FROM tb_usuarios
INNER JOIN tb_entregas ON tb_usuarios.Id_Usuarios = tb_entregas.FK_Id_Usuarios
INNER JOIN tb_produtos ON tb_entregas.FK_Id_Produtos = tb_produtos.Id_Produtos
GROUP BY tb_usuarios.Nome