class Cadastro
  def self.user_new
    user = OpenStruct.new
    user.nome = Faker::Name.first_name
    user.rg = Faker::Number.leading_zero_number(digits: 9)
    user.cpf = Faker::CPF.number
    user.data_nascimento = Time.new.strftime('%d%m%Y')
    user.endereco = Faker::Address.street_address
    user.numero = user.endereco.split(' ').first
    user.bairro = Faker::Address.city
    user.cep = Faker::Address.zip_code
    user.cidade = Faker::Address.state
    user.telefone = Faker::PhoneNumber.phone_number
    user.celular = Faker::PhoneNumber.cell_phone
    user.email = Faker::Internet.email
    user.obs = Faker::Lorem.word
    user
  end
end
