Rails.application.routes.draw do
  get '/r/:code', :to => 'link_manager/link_conroller#track_code', :as => 'tracking_code'
end
