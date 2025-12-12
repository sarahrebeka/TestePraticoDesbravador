# Teste Prático Desbravador

## Teste Automatizado – Processo de Reserva (Desbravador Software)

Este repositório contém o teste automatizado desenvolvido como parte do desafio técnico para a vaga de Analista de QA.

O objetivo do teste é validar o fluxo completo de reserva dentro do ambiente de testes do sistema de reservas online da Desbravador.

Foram automatizados dois cenários, um negativo e outro positivo.

Cenário Positivo:

Marcar dias de hospedagem, selecionar hóspedes, verificar quarto STANDARD ST1 e efetuar o cadastro.

Cenário negativo:

Selecionar datas sem disponibilidade para reservas e verificar mensagem "Não temos apartamentos disponíveis paras os dias..."


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
