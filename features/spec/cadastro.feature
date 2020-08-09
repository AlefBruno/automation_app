#language: pt

@cadastro
Funcionalidade: Cadastro de Usuário no Aplicativo
    Como usuário do aplicativo
    Gostaria de realizar o cadastro
    Para ter meus dados salvos

  @cadastrar_usuario
  Cenário: Cadastrar usuário
    Dado acessar a tela de cadastro
    Quando efetuar um cadastro do usuário no aplicativo
    Então validar que o cadastro é realizado com sucesso

  @excluir_cadastro_usuario
  Cenário: Excluir Usuário Cadastrado
    Dado ter um usuário no aplicativo cadastrado
    Quando excluir um usuário cadastrado do aplicativo
    Então validar exclusão do usuário cadastrado

  @pesquisar_cadastrado_usuario
  Cenário: Pesquisar Usuário Cadastrado
    Dado ter um usuário no aplicativo cadastrado
    Quando pesquisar um usuário cadastrado no aplicativo
    Então validar usuário existente na pesquisa
