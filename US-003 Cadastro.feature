#language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da Shop-EBAC
Quero concluir meu cadastro
Para finalizar minha compra
Contexto:
Dado Que eu queira concluir minha compra

Cenário: Cadastro bem-sucedido
Dado que estou na tela de cadastro checkout da EBAC-SHOP
Quando preencho todos os campos obrigatórios
E clico no botão "Cadastrar"
Então devo aparecer a mensagem "cadastro realizado com sucesso"


Cenário: E-mail com formato inválido.
Quando Eu informar o e-mail "fulano.com"
E clico no botão "cadastrar"
Então O sistema deve mostrar um alerta: "Formato de E-mail inválido!"


Cenário: Tentativa de cadastro com campos vazios
Dado que estou na tela de cadastro checkout da EBAC-SHOP
Quando tento cadastrar com campos vazios
E clico no botão "Cadastrar"
Então O sistema deve exibir uma mensagem de alerta "Campos obrigatórios devem ser preenchidos"