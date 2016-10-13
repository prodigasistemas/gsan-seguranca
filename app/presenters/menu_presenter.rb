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

  def converter_hash
    @menu_to_search = []

    flatten_to_hash(@menu[:menu][:submenu])

    @menu_to_search
  end

  private

  attr_reader :numero_de_modulos

  def set_numero_de_linhas
    num_linhas = (numero_de_modulos / @tamanho.to_f).floor
    num_linhas += 1 if numero_de_modulos % @tamanho > 0
  end

  def flatten_to_hash(submenus, categoria = "")
    submenus.each do |submenu|
      if submenu[:url].present?
        @menu_to_search << funcionalidade(categoria, submenu[:descricao], submenu[:url])
      else
        if categoria.present?
          flatten_to_hash(submenu[:submenu], "#{categoria} - #{submenu[:descricao]}")
        else
          flatten_to_hash(submenu[:submenu], submenu[:descricao])
        end
      end
    end
  end

  def funcionalidade(categoria, descricao, url)
    {
      label: "#{categoria} - #{descricao}",
      value: descricao,
      url: url
    }
  end
end