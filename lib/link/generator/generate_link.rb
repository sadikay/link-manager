require "link/manager/version"

module Link
  module Generator
    class GenerateLink

      # Genarates short links has custom data
      # If the 'sub_id' greater than one you can pass it like below
      # sub_id = 12345_7854
      # The link-manager ll split them after redirecting
      def initialize(long_string = nil, sub_id = nil)
        @long_url = long_string
        @sub_ids = sub_id
      end

      def get_short_code
        loop do
          @code = (0...6).map { ('a'..'z').to_a[rand(26)] }.join
          return @code if is_uniq?
        end
      end

      def is_uniq?
        true
        # @code
      end

      def build_redirector
        # redirector = UrlRedirector.new
        # redirector.code = @code
        # redirector.long_url = @long_url
        # redirector.sub_id = @sub_id
      end
    end
  end
end
