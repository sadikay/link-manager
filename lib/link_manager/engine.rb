require "rails/engine"
require "shortener"

class LinkManager::Engine < ::Rails::Engine #:nodoc:
  config.link_manager = LinkManager
end
