# Teste Prático Desbravador

## Teste Automatizado – Processo de Reserva (Desbravador Software)

Este repositório contém o teste automatizado desenvolvido como parte do desafio técnico para a vaga de Analista de QA.

O objetivo do teste é validar o fluxo completo de reserva dentro do ambiente de testes do sistema de reservas online da Desbravador.

### Objetivo do Teste Automatizado

Automatizar o fluxo principal de reserva contendo os seguintes passos:

Acessar o endereço: https://reservas.desbravador.com.br/1111

Verificar disponibilidade de reserva por mínimo de 3 dias

Selecionar o quarto STANDARD ST1

Adicionar 02 adultos e 01 criança até 05 anos

Preencher os dados dos hóspedes

Efetuar o pagamento com cartão de crédito:

Número: 4000 0000 0000 0044

Nome: DESBRAVADOR SOFTWARE

Validade: 12/23

CVC: 123

#### Como Executar os Testes

Antes de executar o teste, é necessário instalar todas as bibliotecas listadas em: requirements.txt

Após instalar as bibliotecas, execute o seguinte comando na raiz do projeto: robot  WEB/tests/reservas

##### Sobre o uso do ChromeDriver

Este projeto não requer instalação manual do ChromeDriver.

O ambiente foi configurado utilizando um pacote que realiza o download automático do driver compatível a cada execução do teste.

Isso garante:

Compatibilidade sempre atualizada com a versão do navegador

Menos dependências manuais

Execução mais simples para qualquer avaliador

Ou seja, basta instalar as dependências e executar o teste.

###### Desenvolvido por

Sarah Seabra

Candidata à vaga de Analista de QA – Desbravador Software
