#encoading: utf-8



Dado("que eu esteja no site da natura para criar uma conta") do                             
    visit('https://s.rede.natura.net/identifique-se')               
  end  

  Quando("preencho todos os campos do formulario e clico no botão Continuar") do |table|
    @cadastro = CadastroPage.new
    @email = table.rows_hash['E-mail']
    @cep = table.rows_hash['CEP']  
    @nome = table.rows_hash['Nome']
    @senha = table.rows_hash['Senha']

    @cadastro.cadastro_natura(@email, @senha, @cep, @nome)

    # xpath = usar xpath (caso nao tenha ID/Name)
    # id = id elemento  

    #find(:id, 'field-identification-email').set(@email)
    #find(:id, 'cep').set(@cep)
    #find(:id, 'new-name').set(@nome)
    #find(:id, 'new-password').set(@senha)
    
    #find(:xpath, '//input[@class="custom-radio show-first-buy"]').click
    #find(:xpath, '//input[@class="custom-checkbox user-accept-terms"]').click
    #find(:xpath, '//input[@class="button-replace btn-continuar-registro"]').click 
    end
                                                                                               
    Então("eu vejo a próxima tela home") do                    
      expect(page).to have_content 'Olá, #{@nome}'               
    end  