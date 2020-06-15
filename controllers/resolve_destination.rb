require_relative '../models/shortens'

class ResolveLocalParameterDestination
  def redirect_to(local_parameter)
    begin
      destination_url = find_destination_url(local_parameter)
      return "#{destination_url.redirect_url}"
    rescue
      return '/'
    end

  end

  private
  def find_destination_url(local_parameter)
    Shortens.find_by!(:local_parameter => local_parameter)
  end
end
