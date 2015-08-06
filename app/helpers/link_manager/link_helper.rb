module LinkManager::LinkHelper

  # generate short url from a long url string
  def generate_short_url(long_url, sub_id = nil)
    redirection = LinkManager::UrlRedirection.new
    redirection.long_url = long_url
    redirection.sub_id = sub_id
    redirection.save

    # return the generated short url
    redirection.url_with_code
  end
end
