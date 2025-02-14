            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente do Shop-EBAC
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu queira configurar meu produto


            Esquema do Cenário: 1 - Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu escolher <cor> e <tamanho>
            E selecionar <quantidade>
            Então deve exibir uma <mensagem>
            Exemplos:
            | cor     | tamanho | quantidade | mensagem                         |
            | ""      | "GG"    | "1"        | "Escolher cor"                   |
            | "Preto" | ""      | "1"        | "Escolher tamanho"               |
            | "Preto" | "GG"    | ""         | "Escolher quantidade"            |
            | "Preto" | "GG"    | "1"        | "Produto adicionado ao carrinho" |

            Cenário: 2 - Deve permitir apenas 10 produtos por cliente
            Quando selecionar a quantidade "11"
            Então deve exibir a mensagem de alerta "quantidade máxima de produtos excedida!"

            Cenário: 3 - Quando eu clicar no botão "limpar" deve retornar ao estado original
            Quando cor e tamanho estiverem selecionados
            E eu clicar no botão "limpar"
            Então deve retornar ao estado original