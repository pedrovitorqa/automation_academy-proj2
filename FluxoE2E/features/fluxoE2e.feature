#language:pt

Funcionalidade: Fluxo E2E
    Após cadastrado
    Sendo um usuário
    Posso acessar o sistema e efetuar compras

    @fluxo
    Cenário: Logando no sistema e E2E

        Dado que acesso a pagina de login e digito "pedrotest4@mailinator.com" e "12345Pe@"
        Quando autentico, busco o produto, adiciono o produto no carrinho, finalizo a compra e gero o pedido
        Então a compra deve ser realizada com sucesso e receber a seguinte mensagem "Thank you for your purchase!"
    
     

