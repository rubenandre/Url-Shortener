require_relative '../models/shortens'

class StoreUrls

  def store(url)
    Shortens.create! [{:redirect_url => url}]
  end

end
