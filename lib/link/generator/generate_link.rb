require "link/manager/version"

module Link
  module Generator
    class GenerateLink

      # Genarates short links has custom data
      # If the 'sub_ids' greater than one you can pass it like below
      # sub_ids = 12345_7854_asdfg
      # The link-manager ll split them after redirecting
      def intialize(long_url = nil, sub_ids = nil)
        @long_url = long_url
        @sub_ids = sub_ids
      end

      def self.generate_short_code
        digits = ('a'..'z').to_a
        unique_value = 877
        code = ''
        5.times do
          code = String(digits[unique_value % digits.length]) + code
          unique_value = unique_value / digits.length
        end
        return code
      end
    end
  end
end
