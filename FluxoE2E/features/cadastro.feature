#language:pt

Funcionalidade: Cadastro
    Para que eu possa efetuar compras
    Sendo um usuário
    Posso acessar o sistema

    Contexto: Página de cadastro
            Dado que eu acesso a página de cadastro

    Cenário: Usuário deve se cadastrar
   
        Quando cadastro com "Pedro" e "Vitor" e "pedrotest4@mailinator.com" e "12345Pe@" e "12345Pe@" 
        Então devo ser cadastrado com sucesso
        E devo ver a mensagem "Thank you for registering with Main Website Store."
     

