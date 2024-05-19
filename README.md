# Projeto final de Banco de Dados
## Locadora de Carros
### Descrição do Projeto
Este projeto da disciplina de Banco de Dados I, consiste em uma locadora de carros baseada em cinco entidades principais: Cliente, Carro, Aluguel, Funcionário e Agência. Essas entidades estão interligadas por meio de relacionamentos que refletem as operações da locadora, como aluguéis de carros, processamento de aluguéis e atribuição de funcionários às agências.

Cliente contém os seguintes dados armazenados:
<ul>
<li>cpf</li>
<li>cnh</li>
<li>nome</li>
<li>telefone (um ou mais, para caso o principal não funcione)</li>
<li>email</li>
<li>endereço (logradouro, número, bairro e cep)</li>
</ul>
Funcionário contém os seguintes dados armazenados (além de seu identificador):
<ul>
  <li>cpf</li>
  <li>nome</li>
  <li>telefone (um ou mais, para caso o principal não funcione)</li>
  <li>cargo</li>
  <li>salário</li>
  <li>email</li>
  <li>endereço (logradouro, número, bairro e cep)</li>
</ul>
Agência contém os seguintes dados (além de seu identificador) armazenados:
<ul>
  <li>nome</li>
  <li>telefone (um ou mais, para caso o principal não funcione)</li>
  <li>endereço (logradouro, número, bairro e cep)</li>
</ul>

Carro contém contém os seguintes dados armazenados (além de seu identificador):
<ul>
  <li>número do chassi</li>
  <li>placa</li>
  <li>marca</li>
  <li>modelo</li>
  <li>ano</li>
</ul>

Aluguel contém os seguintes dados a serem armazenados (além de seu identificador):
<ul>
  <li>data de início do aluguel</li>
  <li>data final do aluguel</li>
  <li>valor do aluguel</li>
</ul>


A locadora possui várias agências, onde cada agência tem que ter no mínimo um funcionário para estar em operação e o funcionário só pode trabalhar naquela mesma agência.
O funcionário pode não ter processado nenhum aluguel na agência em que trabalha, logo, aquela mesma agência pode não ter processado nenhum aluguel no final do dia.
Um carro não pode ser arrendado a um aluguel caso não seja feito um aluguel por algum cliente.
O cliente não pode fazer um aluguel de vários carros, mas pode fazer vários aluguéis de diferentes carros. O cliente pode não fazer o aluguel de um carro caso os que estejam disponíveis não lhe interessem ou em manutenção.

### Modelo Relacional

<img src="https://github.com/JaumCarvalho/Projeto-final-de-Banco-de-Dados/blob/master/modelos/modelo%20relacional.png">

### Modelo Lógico

<a href="https://github.com/JaumCarvalho/Projeto-final-de-Banco-de-Dados/blob/master/modelos/modelo%20l%C3%B3gico.pdf">Clique para acessá-lo</a>

### Modelo Físico
<ul>
  <li><a href="https://github.com/JaumCarvalho/Projeto-final-de-Banco-de-Dados/blob/master/modelos/modelo%20f%C3%ADsico/scripts%20sql/locadora_script_criacao.sql">Script de criação</a></li>
  <li><a href="https://github.com/JaumCarvalho/Projeto-final-de-Banco-de-Dados/blob/master/modelos/modelo%20f%C3%ADsico/scripts%20sql/locadora_script_povoa.sql">Script de povoamento</a></li>
</ul>
### Consultas feitas
