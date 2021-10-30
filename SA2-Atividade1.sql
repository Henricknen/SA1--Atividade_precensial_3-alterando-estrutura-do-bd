--Alteração tabela 'jogador' - inclusão de colunas
ALTER TABLE jogador
    ADD distancia INTEGER,
    ADD saltos INTEGER,
    ADD giros INTEGER,
    ADD impactos INTEGER;

--Atualização dos dados novos da tabela 'jogador'
UPDATE jogador
SET distancia = 23472, saltos = 17, giros = 11, impactos = 5
WHERE idjogador = 2240;

UPDATE jogador
SET distancia = 27639, saltos = 22, giros = 7, impactos = 3
WHERE idjogador = 2245;

UPDATE jogador
SET distancia = 29581, saltos = 15, giros = 5, impactos = 9
WHERE idjogador = 2345;

UPDATE jogador
SET distancia = 26384, saltos = 25, giros = 15, impactos = 7
WHERE idjogador = 2335;

UPDATE jogador
SET distancia = 23891, saltos = 10, giros = 12, impactos = 11
WHERE idjogador = 2540;

UPDATE jogador
SET distancia = 18632, saltos = 16, giros = 18, impactos = 2
WHERE idjogador = 2625;

UPDATE jogador
SET distancia = 25864, saltos = 31, giros = 15, impactos = 7
WHERE idjogador = 2640;

UPDATE jogador
SET distancia = 30640, saltos = 21, giros = 21, impactos = 3
WHERE idjogador = 2645;

UPDATE jogador
SET distancia = 28751, saltos = 13, giros = 17, impactos = 8
WHERE idjogador = 2725;

UPDATE jogador
SET distancia = 31472, saltos = 7, giros = 4, impactos = 10
WHERE idjogador = 2845;

UPDATE jogador
SET distancia = 24785, saltos = 18, giros = 11, impactos = 6
WHERE idjogador = 3140;

UPDATE jogador
SET distancia = 28378, saltos = 5, giros = 12, impactos = 4
WHERE idjogador = 3225;

UPDATE jogador
SET distancia = 30219, saltos = 33, giros = 20, impactos = 2
WHERE idjogador = 3230;

UPDATE jogador
SET distancia = 15875, saltos = 19, giros = 3, impactos = 5
WHERE idjogador = 3435;

UPDATE jogador
SET distancia = 25851, saltos = 8, giros = 9, impactos = 8
WHERE idjogador = 3450;

-- criação da View consulta dos novos dados
CREATE View novos_dados as
    SELECT p.selecao as pais, j.nome as jogador, j.distancia,
    j.saltos, j.giros, j.impactos
    FROM jogador j INNER JOIN pais p ON j.pais_idpais = p.idpais
    WHERE j.distancia > 0
    ORDER BY p.selecao, j.distancia desc;

-- visualização do resultado
SELECT *FROM novos_dados