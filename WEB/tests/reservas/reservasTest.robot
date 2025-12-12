***Settings***
Documentation     Testes de login e logout
Resource     ../../resources/common/base_web.resource

Test Teardown    Fechar Sessao


***Test Cases***
Cenário 01: reserva sem data disponível
    [Setup]     Abrir Sessao
    Dado que eu tenha acessado o sistema reservas desbravador
    Quando fechar o popup informativo
    E selecionar dia inicial e final     1   3
    E preencher quantidade de hóspedes
    E clicar em "Continuar Reserva"
    Então sistema informará que não existe apartamento disponível para a data selecionada


Cenário 02: reservar com sucesso
    [Setup]     Abrir Sessao
    Dado que eu tenha acessado o sistema reservas desbravador
    Quando fechar o popup informativo
    E selecionar dia inicial e final     20    24
    E preencher quantidade de hóspedes
    E clicar em "Continuar Reserva"
    E Efetuar cadastro
    Então sistema apresentará uma tela para concordar com as condições e continuar reserva
   
  


