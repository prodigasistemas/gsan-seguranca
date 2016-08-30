class Usuario < ClienteAPI::Model
  extend ClienteAPI::Integracao::Autenticacao

  attr_accessor :id, :nome, :nome_usuario, :senha, :empresa_id

  has_many :empresas

  def self.login(credenciais={})
    autenticar(credenciais)
  end
end