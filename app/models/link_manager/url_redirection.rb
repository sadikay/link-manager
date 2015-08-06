class LinkManager::UrlRedirection < ActiveRecord::Base

  after_create :generate_short_code
  
  def generate_short_code
    loop do
      code = (0...6).map { ('a'..'z').to_a[rand(26)] }.join
      return code unless UrlRedirection.exists?(code: code)
    end
  end

  def url_with_code
    "#{request.protocol}#{request.host}/r/#{code}"
  end
end
