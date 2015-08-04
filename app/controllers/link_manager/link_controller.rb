class LinkManager::LinkController < ActionController::Base

  # Tracking the code goes here
  def track_code
    redirection = UrlRedirection.find_by_code(params[:code])
    if redirection
      # increase redirection count to url
      redirection.redirected_count.update redirection.redirected_count + 1
      redirect_to redirection.long_url
    else
      redirect_to '/'
    end
  end
end
