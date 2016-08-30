class ApplicationController < ActionController::Base
  before_action :acesso_restrito

  DOMAIN = ENV['GSAN_DOMAIN'] || 'localhost'

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def usuario_autenticado(usuario)
    return nil unless usuario.valid?

    limpar_sessao
    session[:usuario_id] = usuario.id

    setar_cookie
  end

  def usuario_logado
    if session[:usuario_id]
      Usuario.find session[:usuario_id]
    else
      nil
    end
  end

  def acesso_restrito
    if session[:usuario_id]
      @usuario_logado = usuario_logado
      return @usuario_logado unless @usuario_logado.nil?
    end

    limpar_sessao
    redirect_to(new_session_path, alert: "Efetue seu login no GSAN")
  end

  def limpar_sessao
    session.clear
    cookies.delete :gsan, domain: DOMAIN
  end

  def setar_cookie
    cookies.delete :gsan, domain: DOMAIN
    cookies.permanent[:gsan] = { value: usuario_logado.id, domain: DOMAIN }
  end
end
