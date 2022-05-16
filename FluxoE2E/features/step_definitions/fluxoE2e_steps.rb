
Dado('que acesso a pagina de login e digito {string} e {string}') do |email, senha|
    visit 'https://magento.nublue.co.uk/customer/account/login/referer/aHR0cHM6Ly9tYWdlbnRvLm51Ymx1ZS5jby51ay8%2C/'
    find(:xpath, "//input[@name='login[username]']").set email
    find(:xpath, "//input[@name='login[password]']").set senha
    first(:xpath, "//button[@class='action login primary']").click
    sleep 10 
end
  
Quando('autentico, busco o produto, adiciono o produto no carrinho, finalizo a compra e gero o pedido') do
    find("#search").set "Tops"
    find(:xpath,"//button[@class='action search']").click
    first(:xpath,"//div[@id='option-label-size-144-item-166']").click
    first(:xpath,"//div[@id='option-label-color-93-item-52']").click
    first(:xpath,"//button[@class='action tocart primary']").click

    sleep 10
    first(:xpath,"//a[@class='action showcart']").click
    first(:xpath,"//button[@class='action primary checkout']").click

    sleep 10
    find(:xpath,"//input[@name='company']").set "Testelandia"
    find(:xpath,"//input[@name='street[0]']").set "Teste 1"
    find(:xpath,"//input[@name='street[1]']").set "Teste 2"
    find(:xpath,"//input[@name='street[2]']").set "Teste 3"
    select 'Brazil', from: 'Country'
    select 'Minas Gerais', from: 'State/Province'
    find(:xpath,"//input[@name='city']").set "Juiz de Fora"
    find(:xpath,"//input[@name='postcode']").set "36088-532"
    find(:xpath,"//input[@name='telephone']").set "99472482"

    sleep 10
    first(:xpath,"//button[@class='button action continue primary']").click

    sleep 10
    first(:xpath,"//button[@class='action primary checkout']").click
    
    sleep 10
end
  
Então('a compra deve ser realizada com sucesso e receber a seguinte mensagem {string}') do |mensagem|
    expect(page).to have_content mensagem
end

  


