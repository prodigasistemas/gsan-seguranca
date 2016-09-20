class AuthorizationsController < ApplicationController
  skip_before_action :acesso_restrito

  def show
    token = params[:token]

    begin
      id, expiracao = verifier.verify(token)
    rescue
    end

    if id && Time.zone.now < expiracao
      render text: id, status: :ok
    else
      head :forbidden
    end
  end
end
