require "link/manager/version"
require "link/generator/generate_link"

module Link
  module Manager
    # Your code goes here...
    def self.generate_link(long_url = nil, sub_id = nil)
      short_link = Link::Generator::GenerateLink.new(long_url, sub_id)
      short_link.get_short_code
      short_link.build_redirector
    end
  end
end
