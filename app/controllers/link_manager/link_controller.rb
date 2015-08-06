class LinkManager::LinkController < ActionController::Base

  # Tracking the code
  # run after click www.example.com/r/abcdef
  def track_code
    redirection = UrlRedirection.find_by_code(params[:code])
    if redirection

      # Disable counting bot clicks
      unless request.env['HTTP_USER_AGENT'].match(/\(.*https?:\/\/.*\)/)

        # increase redirection count to url
        redirection.redirected_count.update redirection.redirected_count + 1
      end
      redirect_to redirection.long_url
    else
      redirect_to '/'
    end
  end
end
