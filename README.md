# Projeto final de Banco de Dados
## Locadora de Carros
### Descrição do Projeto
Este projeto da disciplina de Banco de Dados I, consiste em uma locadora de carros baseada em cinco entidades principais: Cliente, Carro, Aluguel, Funcionário e Agência. Essas entidades estão interligadas por meio de relacionamentos que refletem as operações da locadora, como aluguéis de carros, processamento de aluguéis e atribuição de funcionários às agências.

Cliente contém os seguintes dados armazenados:
<ul>
<li>cpf</li>
<li>cnh</li>
<li>nome</li>

telefone (um ou mais, para caso o principal não funcione)
email
endereço (logradouro, número, bairro e cep)
</ul>
Funcionário contém os seguintes dados armazenados (além de seu identificador):
cpf
nome
telefone (um ou mais, para caso o principal não funcione)
cargo
salário
email
endereço (logradouro, número, bairro e cep)

Agência contém os seguintes dados (além de seu identificador) armazenados:
nome
telefone (um ou mais, para caso o principal não funcione)
endereço (logradouro, número, bairro e cep)

Carro contém contém os seguintes dados armazenados:
número do chassi
placa
marca
modelo
ano

Aluguel contém os seguintes dados a serem armazenados (além de seu identificador):
data de início do aluguel
data final do aluguel
valor do aluguel


A locadora possui várias agências, onde cada agência tem que ter no mínimo um funcionário para estar em operação e o funcionário só pode trabalhar naquela mesma agência.
O funcionário pode não ter processado nenhum aluguel na agência em que trabalha, logo, aquela mesma agência pode não ter processado nenhum aluguel no final do dia.
Um carro não pode ser arrendado a um aluguel caso não seja feito um aluguel por algum cliente.
O cliente não pode fazer um aluguel de vários carros, mas pode fazer vários aluguéis de diferentes carros. O cliente pode não fazer o aluguel de um carro caso os que estejam disponíveis não lhe interessem ou em manutenção.

### Modelo Relacional
### Modelo Lógico
### Modelo Físico
### Consultas feitas
