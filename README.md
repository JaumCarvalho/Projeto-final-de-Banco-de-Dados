# Projeto final de Banco de Dados - Locadora de Carros
## Descrição do Projeto
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

## Modelo Relacional

<img src="https://github.com/JaumCarvalho/Projeto-final-de-Banco-de-Dados/blob/master/modelos/modelo%20relacional.png">
<a href="https://github.com/JaumCarvalho/Projeto-final-de-Banco-de-Dados/blob/master/modelos/modelo%20relacional.pdf">Acessar Modelo Relacional em PDF</a>
<hr>

## Modelo Lógico
<img src="https://github.com/JaumCarvalho/Projeto-final-de-Banco-de-Dados/blob/master/modelos/modelo%20l%C3%B3gico.png">
<a href="https://github.com/JaumCarvalho/Projeto-final-de-Banco-de-Dados/blob/master/modelos/modelo%20l%C3%B3gico.pdf">Acessar Modelo Lógico em PDF</a>
<hr>

## Modelo Físico
<ul>
  <li><a href="https://github.com/JaumCarvalho/Projeto-final-de-Banco-de-Dados/blob/master/modelos/modelo%20f%C3%ADsico/scripts%20sql/locadora_script_criacao.sql">Script de criação</a></li>
  <li><a href="https://github.com/JaumCarvalho/Projeto-final-de-Banco-de-Dados/blob/master/modelos/modelo%20f%C3%ADsico/scripts%20sql/locadora_script_povoa.sql">Script de povoamento</a></li>
</ul>

## Consultas feitas
<ol>
  <li>
    Inserir um cliente com os seguintes dados: (6, '12345678906', '132435466', 'Juracir Miranda', 'juracir4555@email.com
    <ul>
      <li>
        Resultado antes da consulta ser feita:
        <img src="https://github.com/JaumCarvalho/Projeto-final-de-Banco-de-Dados/blob/master/consultas/img/1%20consulta%20-%20antes.png">
      </li>
      <li>   
        Resultado após a consulta ser feita:
        <img src="https://github.com/JaumCarvalho/Projeto-final-de-Banco-de-Dados/blob/master/consultas/img/1%20consulta%20-%20depois.png">
      </li>
    </ul>
  </li>
  <hr>
  <li>
    Aumentar o salario dos mecânicos de todas as agências em 5%
    <ul>
      <li>
        Resultado antes da consulta ser feita:
        <img src="https://github.com/JaumCarvalho/Projeto-final-de-Banco-de-Dados/blob/master/consultas/img/2%20consulta%20-%20antes.png">
      </li>
      <li>   
        Resultado após a consulta ser feita:
        <img src="https://github.com/JaumCarvalho/Projeto-final-de-Banco-de-Dados/blob/master/consultas/img/2%20consulta%20-%20depois.png">
      </li>
    </ul>
  </li>
  <hr>
  <li>
    Deletar todos os clientes que iniciam seu nome com a letra J
    <ul>
      <li>
        Resultado antes da consulta ser feita:
        <img src="">
      </li>
      <li>   
        Resultado após a consulta ser feita:
        <img src="">
      </li>
    </ul>
  </li>
  <hr>
  <li>
    Após deletar, verifique a integridade do banco ao consultar a tabela locação, visto que José havia feito uma locação e ele foi deletado
    <ul>
      <li>
        Resultado antes da consulta ser feita:
        <img src="">
      </li>
      <li>   
        Resultado após a consulta ser feita:
        <img src="">
      </li>
    </ul>
  </li>
  <hr>
  <li>
    Listar todos os carros que estão disponíveis para locação
    <ul>
      <li>
        Resultado antes da consulta ser feita:
        <img src="">
      </li>
      <li>   
        Resultado após a consulta ser feita:
        <img src="">
      </li>
    </ul>
  </li>
  <hr>
  <li>
    Listar o nome das agências e seus respectivos endereços completos
    <ul>
      <li>
        Resultado antes da consulta ser feita:
        <img src="">
      </li>
      <li>   
        Resultado após a consulta ser feita:
        <img src="">
      </li>
    </ul>
  </li>
  <hr>
  <li>
    Listar nome, cargo e salario de todos os funcionários
    <ul>
      <li>
        Resultado antes da consulta ser feita:
        <img src="">
      </li>
      <li>   
        Resultado após a consulta ser feita:
        <img src="">
      </li>
    </ul>
  </li>
  <hr>
  <li>
    Listar nome, nome do cargo e nome da agencia que o funcionário trabalha
    <ul>
      <li>
        Resultado antes da consulta ser feita:
        <img src="">
      </li>
      <li>   
        Resultado após a consulta ser feita:
        <img src="">
      </li>
    </ul>
  </li>
  <hr>
  <li>
    Listar o nome e telefone dos funcionários da agência Locadora do Romão
    <ul>
      <li>
        Resultado antes da consulta ser feita:
        <img src="">
      </li>
      <li>   
        Resultado após a consulta ser feita:
        <img src="">
      </li>
    </ul>
  </li>
  <hr>
  <li>
    Listar o id, a data e hora, o id do aluguel, o nome do funcionário e o nome da agência de todas as locações
    <ul>
      <li>
        Resultado antes da consulta ser feita:
        <img src="">
      </li>
      <li>   
        Resultado após a consulta ser feita:
        <img src="">
      </li>
    </ul>
  </li>
  <hr>
</ol>

<a href="https://github.com/JaumCarvalho/Projeto-final-de-Banco-de-Dados/blob/master/consultas/script_de_consultas.sql">Script completo de consultas feitas</a>
