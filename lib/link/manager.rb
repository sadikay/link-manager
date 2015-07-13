require "link/manager/version"
require "link/generator/generate_link"

module Link
  module Manager
    # Your code goes here...
    def get_short_code
      pus Link::Generator::GenerateLink.generate_short_code
    end
  end
end
