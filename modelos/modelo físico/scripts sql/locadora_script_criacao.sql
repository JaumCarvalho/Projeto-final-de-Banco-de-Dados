DROP TABLE IF EXISTS tbEndereco;
DROP TABLE IF EXISTS tbAgencia;
DROP TABLE IF EXISTS tbTelefone_Agencia;
DROP TABLE IF EXISTS tbAgencia_Endereco;
DROP TABLE IF EXISTS tbCarro;
DROP TABLE IF EXISTS tbCliente;
DROP TABLE IF EXISTS tbTelefone_Cliente;
DROP TABLE IF EXISTS tbCliente_Endereco;
DROP TABLE IF EXISTS tbAluguel;
DROP TABLE IF EXISTS tbCargo;
DROP TABLE IF EXISTS tbFuncionario;
DROP TABLE IF EXISTS tbTelefone_Funcionario;
DROP TABLE IF EXISTS tbFuncionario_Endereco;
DROP TABLE IF EXISTS tbLocacao;

-- Criando a tabela Endereço
CREATE TABLE tbEndereco (
  id INT NOT NULL,
  logradouro VARCHAR(45) NOT NULL,
  numero VARCHAR(5),
  bairro VARCHAR(30),
  cep VARCHAR(8) NOT NULL,
  PRIMARY KEY (id)
);

-- Criando a tabela Agência
CREATE TABLE tbAgencia (
  id INT NOT NULL,
  nome VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
);

-- Criando a tabela Telefone da Agência
CREATE TABLE tbTelefone_Agencia (
  id INT NOT NULL,
  telefone VARCHAR(11) NOT NULL,
  id_Agencia INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_Agencia) REFERENCES tbAgencia (id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Criando a tabela Endereço da Agência
CREATE TABLE tbAgencia_Endereco (
  id INT NOT NULL,
  id_Agencia INT,
  id_Endereco INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_Agencia) REFERENCES tbAgencia (id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_Endereco) REFERENCES tbEndereco (id) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Criando a tabela Carro
CREATE TABLE tbCarro (
  id INT NOT NULL,
  chassi VARCHAR(17) NOT NULL,
  placa VARCHAR(8) NOT NULL,
  marca VARCHAR(20),
  modelo VARCHAR(20),
  ano INT,
  disponivel BOOLEAN,
  PRIMARY KEY (id)
);

-- Criando a tabela Cliente
CREATE TABLE tbCliente (
  id INT NOT NULL,
  cpf VARCHAR(11) NOT NULL,
  cnh VARCHAR(9) NOT NULL,
  nome VARCHAR(60),
  email VARCHAR(45),
  PRIMARY KEY (id)
);

-- Criando a tabela Telefone do Cliente
CREATE TABLE tbTelefone_Cliente (
  id INT NOT NULL,
  telefone VARCHAR(11) NOT NULL,
  id_Cliente INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_Cliente) REFERENCES tbCliente (id) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Criando a tabela Endereço do Cliente
CREATE TABLE tbCliente_Endereco (
  id INT NOT NULL,
  id_Cliente INT,
  id_Endereco INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_Cliente) REFERENCES tbCliente (id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_Endereco) REFERENCES tbEndereco (id) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Criando a tabela Aluguel
CREATE TABLE tbAluguel (
  id SERIAL,
  data_inicio DATE,
  data_fim DATE,
  valor REAL,
  id_Carro INT,
  id_Cliente INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_Carro) REFERENCES tbCarro (id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_Cliente) REFERENCES tbCliente (id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Criando a tabela Cargo
CREATE TABLE tbCargo (
  id INT,
  nome_cargo VARCHAR(45),
  salario REAL,
  PRIMARY KEY (id)
);

-- Criando a tabela Funcionário
CREATE TABLE tbFuncionario (
  id SERIAL,
  cpf VARCHAR(11),
  nome VARCHAR(60),
  email_corp VARCHAR(30),
  id_Cargo INT,
  id_Agencia INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_Cargo) REFERENCES tbCargo (id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (id_Agencia) REFERENCES tbAgencia (id) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Criando a tabela Telefone do Funcionario
CREATE TABLE tbTelefone_Funcionario (
  id INT NOT NULL,
  telefone VARCHAR(11) NOT NULL,
  id_Funcionario INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_Funcionario) REFERENCES tbFuncionario (id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Criando a tabela Endereço do Funcionário
CREATE TABLE tbFuncionario_Endereco (
  id INT NOT NULL,
  id_Funcionario INT,
  id_Endereco INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_Funcionario) REFERENCES tbFuncionario (id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_Endereco) REFERENCES tbEndereco (id) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Criando a tabela Locação
CREATE TABLE tbLocacao (
  id SERIAL,
  data_hora_locacao TIMESTAMP,
  id_Aluguel INT,
  id_Funcionario INT,
  id_Agencia INT,
  FOREIGN KEY (id_Aluguel) REFERENCES tbAluguel (id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_Funcionario) REFERENCES tbFuncionario (id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_Agencia) REFERENCES tbAgencia (id) ON DELETE CASCADE ON UPDATE CASCADE
);
