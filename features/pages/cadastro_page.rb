class CadastroPage < SitePrism::Page
    element :campo_email, "#field-identification-email"
    element :campo_cep, "#cep"
    element :campo_nome, "#new-name"
    element :campo_senha, "#new-password"
    
    element :botao_primeira_compra, :xpath, "//label[contains(@class,'show-first-buy')]"
    element :botao_li_e_concordo, :xpath, "//label[contains(@class,'custom-checkbox user-accept-terms')]"
    element :campo_continuar, :xpath, "//a[contains(@class,'button-replace btn-continuar-registro')]"
   
    
    #é o metodo chamado no cadastro_natura.rb 
    def cadastro_natura(email, senha, cep, nome)
        botao_primeira_compra.click
        campo_email.set email
        campo_senha.set senha
        campo_cep.set cep
        campo_nome.set nome
        botao_li_e_concordo.click
        campo_continuar.click
     end
end




