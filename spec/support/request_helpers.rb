module Requests
  module JsonHelpers
    def parse_json_response
      JSON.parse response.body
    end
  end
end