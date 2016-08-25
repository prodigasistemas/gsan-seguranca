class HomeController < ApplicationController
  def index
    @menu = Menu.get(961).deep_symbolize_keys!
    @linhas = @menu[:menu][:submenu].size / 4
    @index = 3
    @inicio = 0
    @tamanho = 4
    @inicio_submenu = 0
    @tamanho_submenu = 10
  end
end