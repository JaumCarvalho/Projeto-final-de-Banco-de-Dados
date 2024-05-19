-- Inserindo dados na tabela Endereço
INSERT INTO tbEndereco VALUES
  (1, 'Rua São Bernardo', '123B', 'Limoeiro', '6800000'),
  (2, 'Rua Presidente Amorim', '123A', 'Limoeiro', '6800000'),
  (3, 'Rua 31 de Fevereiro', '432', 'Paz', '6800021'),
  (4, 'Rua dos Bobos', '34', 'Serra', '6805000'),
  (5, 'Rua Maria', '56', 'Jaca', '6844010'),
  (6, 'Rua João', '769', 'Girassol', '6800220'),
  (7, 'Rua Joseph', '2233', 'Coração', '6833070'),
  (8, 'Rua São Pedro', '377', 'Teresina', '68380908')
;

-- Inserindo dados na tabela Agência
INSERT INTO tbAgencia VALUES
  (1, 'Locar'),
  (2, 'Locadora do Romão'),
  (3, 'Locadora do Jaca')
;

-- Inserindo dados na tabela Telefone da Agência
INSERT INTO tbTelefone_Agencia VALUES
  (1, '93999111999', 1),
  (2, '93999222999', 1),
  (3, '93999333999', 2),
  (4, '93999444999', 2),
  (5, '93999555999', 3),
  (6, '93999666999', 3)
;

-- Inserindo dados na tabela Endereço da Agência
INSERT INTO tbAgencia_Endereco VALUES
  (1, 1, 6),
  (2, 2, 7),
  (3, 3, 8)
;

-- Inserindo dados na tabela Carro
INSERT INTO tbCarro VALUES
  (1, '0CCAD5598F5C1CCF2', '1111AAAA', 'Fiat', 'Uno', 2008, false),
  (2, '223A5A13FC5C5153B', '2222BBBB', 'Chevrolet', 'Prisma', 2020, true),
  (3, 'EFF10B077AC493651', '3333CCCC', 'Fiat', 'Onix', 2022, false),
  (4, '4ECB032467FB6E193', '4444DDDD', 'Toyota', 'Hilux', 2015, true),
  (5, '4ECB032467FB6E193', '5555EEEE', 'Ford', 'Fiesta', 2018, false)
;

-- Inserindo dados na tabela Cliente
INSERT INTO tbCliente VALUES
  (1, '12345678901', '132435461', 'Francisco Leopoldo', 'francisco.leo@email.com'),
  (2, '12345678902', '132435462', 'Renata Camelo', 'renatacamelo2@email.com'),
  (3, '12345678903', '132435463', 'José Lima', 'limajose07@email.com'),
  (4, '12345678904', '132435464', 'Kamille Monique', 'monique456@email.com'),
  (5, '12345678905', '132435465', 'Daniel Lucas', 'dan.lucas32@email.com')
;

-- Inserindo dados na tabela Telefone do Cliente
INSERT INTO tbTelefone_Cliente VALUES
  (1, '93988769901', 1),
  (2, '93988769902', 2),
  (3, '93988769903', 3),
  (4, '93988769904', 4),
  (5, '93988769905', 5)
;

-- Inserindo dados na tabela Endereço do Cliente
INSERT INTO tbCliente_Endereco VALUES
  (1, 1, 1),
  (2, 2, 2),
  (3, 3, 3),
  (4, 4, 4),
  (5, 5, 5)
;
-- Inserindo dados na tabela Aluguel
INSERT INTO tbAluguel VALUES
  (1, '18/05/2024', '20/05/2024', 200.00, 1, 3),
  (2, '18/05/2024', '25/05/2024', 700.00, 4, 1),
  (3, '18/05/2024', '19/05/2024', 100.00, 2, 5)
;

-- Inserindo dados na tabela Cargo
INSERT INTO tbCargo VALUES
  (1, 'Gerente', 5000.00),
  (2, 'Assistente Administrativo', 2600.00),
  (3, 'Assistente Financeiro', 3000.00),
  (4, 'Mecânico', 2000.00)
;

-- Inserindo dados na tabela Funcionário
INSERT INTO tbFuncionario VALUES
  (1, '11756867511', 'Raimundo Patrício', 'raimundo.ptc@agencia.com', 1, 1),
  (2, '21756867521', 'Caio Barbosa', 'caio.bbs@agencia.com', 2, 1),
  (3, '31756867531', 'Letícia Cardoso', 'leticia.cds@agencia.com', 3, 1),
  (4, '41756867541', 'Ruan Almeida', 'ruan.almd@agencia.com', 4, 1),
  (5, '12756867512', 'Amanda Sena', 'amanda.sn@agencia.com', 1, 2),
  (6, '22756867522', 'Simon Nunes', 'simon.nns@agencia.com', 2, 2),
  (7, '32756867532', 'Patrick Silva', 'patrick.slv@agencia.com', 3, 2),
  (8, '42756867542', 'Ricardo Sousa', 'ricardo.ss@agencia.com', 4, 2),
  (9, '13756867513', 'Rodrigo Petterson', 'rodrigo.ptsn@agencia.com', 1, 3),
  (10, '23756867523', 'Ana Macêdo', 'ana.mcd@agencia.com', 2, 3),
  (11, '33756867533', 'João Martins', 'joao.mrts@agencia.com', 3, 3),
  (12, '43756867543', 'Lucas Ferreira', 'lucas.frr@agencia.com', 4, 3)
;

-- Inserindo dados na tabela Telefone do Funcionário
INSERT INTO tbTelefone_Funcionario VALUES
  (1, '91914563451', 1),
  (2, '91914563452', 2),
  (3, '91914563453', 3),
  (4, '91914563454', 4),
  (5, '92924563451', 5),
  (6, '92924563452', 6),
  (7, '92924563453', 7),
  (8, '92924563454', 8),
  (9, '93934563451', 9),
  (10, '93934563452', 10),
  (11, '93934563453', 11),
  (12, '93934563454', 12)
;

-- Inserindo dados na tabela Endereço do Funcionário
INSERT INTO tbFuncionario_Endereco VALUES
  (1, 1, 1),
  (2, 2, 5),
  (3, 3, 3),
  (4, 4, 4),
  (5, 5, 5),
  (6, 6, 1),
  (7, 7, 2),
  (8, 8, 3),
  (9, 9, 4),
  (10, 10, 5),
  (11, 11, 1),
  (12, 12, 2)
;

-- Inserindo dados na tabela Locação
INSERT INTO tbLocacao VALUES
  (1, '2024-05-18 12:43:07', 1, 2, 1),
  (2, '2024-05-18 13:24:30', 2, 6, 2),
  (3, '2024-05-18 15:01:18', 3, 10, 3)
;