class Menu

  def self.get(usuario_id)
    response = RestClient.get("#{ENV['URL_BASE']}/menu/#{usuario_id}")

    JSON.parse(response.body)
  end
end