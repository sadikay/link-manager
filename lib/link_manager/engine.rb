require "rails/engine"
require "link_manager"

class LinkManager::Engine < ::Rails::Engine #:nodoc:
  config.link_manager = LinkManager
end
