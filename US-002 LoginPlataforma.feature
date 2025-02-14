            #language: pt

            Funcionalidade: Login na Plataforma
            Como cliente da Shop-EBAC
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado Que eu acesse a página de Login na plataforma EBAC-SHOP

            Cenário: 1 - Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando Eu digitar o nome de usuário "nathan@ebac.com.br"
            E a senha "senha@teste"
            Então deve direcionar para a tela de checkout

            Esquema do Cenário: 2 - Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
            Quando Eu digitar o <usuário>
            E a <senha>
            Então deve mostrar uma mensagem de alerta <mensagem>
            Exemplos:
            | Usuário               | senha          | mensagem                     |
            | "nathan@ebac.com.br"  | "senhaF@teste" | "Usuário ou Senha inválidos" |
            | "nathanF@ebac.com.br" | "senha@teste"  | "Usuário não encontrado"     |