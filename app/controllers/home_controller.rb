class HomeController < ApplicationController
  layout 'application'

  def index
    menu = Menu.get(usuario_logado.id)
    @menu = MenuPresenter.new( menu )
  end
end