class HomeController < ApplicationController
  layout 'application'

  def index
    @menu_to_search = []

    menu = Menu.get(usuario_logado.id)
    @menu = MenuPresenter.new( menu )

    to_json @menu[:menu][:submenu]
  end

  private

  def to_json(submenus, categoria = "")
    submenus.each do |submenu|
      if submenu[:url].present?
        @menu_to_search << funcionalidade(categoria, submenu[:descricao], submenu[:url])
      else
        if categoria.present?
          to_json(submenu[:submenu], "#{categoria} - #{submenu[:descricao]}")
        else
          to_json(submenu[:submenu], submenu[:descricao])
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