-- Listar o nome das agências e seus respectivos endereços completos
SELECT a.nome, e.logradouro, e.numero, e.bairro, e.cep
FROM tbAgencia AS a, tbEndereco AS e, tbAgencia_Endereco AS ae
WHERE ae.id_agencia = a.id AND ae.id_endereco = e.id;

-- Listar o nome e telefone dos funcionários da agência Locadora do Romão
SELECT f.nome, tf.telefone, a.nome
FROM tbTelefone_Funcionario AS tf, tbFuncionario AS f, tbAgencia AS a
WHERE tf.id_funcionario = f.id AND f.id_agencia = a.id AND a.id = 2;


-- Listar o id, a data e hora, o id do aluguel, o nome do funcionário e o nome da agência de todas as locações
SELECT l.id, l.data_hora_locacao, al.id, f.nome, ag.nome
FROM tbLocacao AS l, tbAluguel AS al, tbFuncionario AS f, tbAgencia AS ag
WHERE l.id_aluguel = al.id AND l.id_funcionario = f.id AND l.id_agencia = ag.id;

--Aumentar o salario dos mecânicos de todas as agências em 5%
UPDATE tbCargo
SET salario = salario * 1.05
WHERE id = 4;

--Listar nome, cargo e salario de todos os funcionários
SELECT f.nome, c.nome_cargo, c.salario
FROM tbFuncionario AS f, tbCargo AS c
WHERE f.id_cargo = c.id;

--Listar nome, nome do cargo e nome da agencia que o funcionário trabalha
SELECT f.nome, c.nome_cargo, a.nome
FROM tbFuncionario AS f, tbCargo AS c, tbAgencia AS a
WHERE f.id_cargo = c.id AND f.id_agencia = a.id;

--Inserir um cliente com os seguintes dados: (6, '12345678906', '132435466', 'Juracir Miranda', 'juracir4555@email.com')
INSERT INTO tbCliente VALUES
(6, '12345678906', '132435466', 'Juracir Miranda', 'juracir4555@email.com');

--Listar todos os carros que estão disponíveis para locação
SELECT * FROM tbCarro
WHERE disponivel = true;

--Deletar todos os clientes que iniciam seu nome com a letra J
DELETE FROM tbCliente
WHERE nome LIKE 'J%';
SELECT * FROM tbAluguel;