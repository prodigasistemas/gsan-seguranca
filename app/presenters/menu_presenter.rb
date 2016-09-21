class MenuPresenter < SimpleDelegator
  attr_reader :menu, :tamanho, :numero_de_linhas
  attr_accessor :inicio_submenu, :inicio

  def initialize(menu)
    @menu = menu.deep_symbolize_keys!
    @inicio = 0
    @inicio_submenu = 0
    @numero_colunas = 4
    @numero_de_modulos = @menu[:menu][:submenu].size
    @tamanho = @numero_de_modulos >= @numero_colunas ? @numero_colunas : @numero_de_modulos
    @numero_de_linhas = set_numero_de_linhas
    __setobj__(menu)
  end

  private

  attr_reader :numero_de_modulos

  def set_numero_de_linhas
    (numero_de_modulos / @tamanho) + (numero_de_modulos % @tamanho)
  end
end