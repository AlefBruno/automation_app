Dado('acessar a tela de cadastro') do
  cadastro_screen.click_button_menu_mais
  cadastro_screen.click_button_novo_cadastro
end

Quando('efetuar um cadastro do usuário no aplicativo') do
  @user = Cadastro.user_new
  cadastro_screen.fill_nome(@user.nome)
  cadastro_screen.fill_rg(@user.rg)
  cadastro_screen.fill_cpf(@user.cpf)
  cadastro_screen.fill_data(@user.data_nascimento)
  cadastro_screen.fill_endereco(@user.endereco)
  cadastro_screen.fill_numero(@user.numero)
  cadastro_screen.fill_bairro(@user.bairro)
  cadastro_screen.fill_cep(@user.cep)
  cadastro_screen.fill_cidade(@user.cidade)
  cadastro_screen.fill_telefone(@user.telefone)
  cadastro_screen.fill_celular(@user.celular)
  cadastro_screen.fill_email(@user.email)
  cadastro_screen.fill_obs(@user.obs)
  cadastro_screen.click_button_salvar
end

Então('validar que o cadastro é realizado com sucesso') do
  expect(cadastro_screen.not_visible_alert).to be_truthy
  expect(cadastro_screen.visible_message_ok).to be_truthy
  cadastro_screen.click_button_ok
end

Dado('ter um usuário no aplicativo cadastrado') do
  step 'acessar a tela de cadastro'
  step 'efetuar um cadastro do usuário no aplicativo'
  step 'validar que o cadastro é realizado com sucesso'
end

Quando('excluir um usuário cadastrado do aplicativo') do
  back
  cadastro_screen.click_lista_nome_cadastrados
  cadastro_screen.click_excluir_cadastro
  cadastro_screen.click_button_ok
end

Então('validar exclusão do usuário cadastrado') do
  expect(cadastro_screen.barra_pesquisa).to be_truthy
  expect(cadastro_screen.menu_limpo).to be_truthy
end

Quando('pesquisar um usuário cadastrado no aplicativo') do
  back
  cadastro_screen.barra_pesquisa.send_keys(@user.nome)
  press_keycode(23)
end

Então('validar usuário existente na pesquisa') do
  expect(cadastro_screen.lista_nome_cadastrado.text).to eql @user.nome
end
