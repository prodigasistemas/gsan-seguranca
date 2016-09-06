class MenuPresenter < SimpleDelegator
  attr_reader :menu, :tamanho, :numero_de_linhas
  attr_accessor :inicio_submenu, :inicio

  def initialize(menu)
    @menu = menu.deep_symbolize_keys!
    @inicio = 0
    @tamanho = 4
    @inicio_submenu = 0
    @numero_de_linhas = (@menu[:menu][:submenu].size / 4) + (@menu[:menu][:submenu].size % 4)
    __setobj__(menu)
  end
end