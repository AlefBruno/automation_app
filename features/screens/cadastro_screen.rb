class CadastroScreen < Commons::PageBase
  def click_button_menu_mais
    class_element('android.widget.ImageButton').click
  end

  def click_button_novo_cadastro
    id_element('floating_novo').click
  end

  def fill_nome(nome)
    id_element('editNome').send_keys(nome)
  end

  def fill_rg(rrg)
    id_element('editRg').send_keys(rrg)
  end

  def fill_cpf(cpf)
    id_element('editCpf').send_keys(cpf)
  end

  def fill_data(data)
    id_element('editData').send_keys(data)
  end

  def fill_endereco(endereco)
    id_element('editEndereco').send_keys(endereco)
  end

  def fill_numero(numero)
    id_element('editNumero').send_keys(numero)
  end

  def fill_bairro(bairro)
    id_element('editBairro').send_keys(bairro)
  end

  def fill_cep(cep)
    id_element('editCep').send_keys(cep)
  end

  def fill_cidade(cidade)
    id_element('editCidade').send_keys(cidade)
  end

  def fill_telefone(telefone)
    id_element('editTelefone1').send_keys(telefone)
  end

  def fill_celular(celular)
    id_element('editTelefone2').send_keys(celular)
  end

  def fill_email(email)
    id_element('editEmail').send_keys(email)
  end

  def fill_obs(obs)
    id_element('editObs').send_keys(obs)
  end

  def click_button_salvar
    id_element('btnSalvar').click
  end

  def click_button_ok
    id_element('android:id/button1').click
  end

  def visible_message_ok
    id_element('android:id/message')
  end

  def not_visible_alert
    id_element('alertTitle')
  end

  def click_lista_nome_cadastrados
    id_element('nomeLista').click
  end

  def click_excluir_cadastro
    id_element('btnExcluir').click
  end

  def barra_pesquisa
    id_element('editPesquisar')
  end

  def menu_limpo
    id_element('floating_action_menu')
  end

  def lista_nome_cadastrado
    id_element('nomeLista')
  end
end
