class MenuPresenter < SimpleDelegator
  attr_reader :menu, :tamanho, :numero_de_linhas
  attr_accessor :inicio_submenu, :inicio

  def initialize(menu)
    @menu = menu.deep_symbolize_keys!
    @inicio = 0
    @tamanho = 4
    @inicio_submenu = 0
    @numero_de_modulos = @menu[:menu][:submenu].size
    @numero_de_linhas = set_numero_de_linhas
    __setobj__(menu)
  end

  private

  attr_reader :numero_de_modulos

  def set_numero_de_linhas
    return 1 if @numero_de_modulos < @tamanho
    (numero_de_modulos / @tamanho) + (numero_de_modulos % @tamanho)
  end
end