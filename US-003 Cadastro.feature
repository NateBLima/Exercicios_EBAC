            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da Shop-EBAC
            Quero concluir meu cadastro
            Para finalizar minha compra
            Contexto:
            Dado Que eu queira concluir minha compra

            Esquema do Cenário: 1 - Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando preencher os seguintes campos obrigatórios:
            | Nome               | "Nathan"                    |
            | Sobrenome          | "Brandão"                   |
            | País               | "Brasil"                    |
            | Endereço           | "Rua fui ali e ja volto"    |
            | Cidade             | "Contagem"                  |
            | CEP                | "99999-999"                 |
            | Telefone           | "(31) 9 9999-9999"          |
            | Endereço de e-mail | "nathanbrandao@ebac.com.br" |
            Então Será feito o cadastro

            Cenário: 2 - Não deve permitir campo e-mail com formato inválido. O Sistema deve inserir uma mensagem de erro
            Quando Eu informar o e-mail "fulano.com"
            Então O sistema deve mostrar um alerta: "Formato de E-mail inválido!"

            Esquema do Cenário: 3 - Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Quando tentar cadastrar com campos vazios:
            | Nome               | "Nathan"           |
            | Sobrenome          | "Brandão"          |
            | País               | "Brasil"           |
            | Endereço           | ""                 |
            | Cidade             | "Contagem"         |
            | CEP                | "99999-999"        |
            | Telefone           | "(31) 9 9999-9999" |
            | Endereço de e-mail | ""                 |
            Então O sistema deve mostrar um alerta: "Há campos obrigatórios vazios, verifique."