require 'open-uri'
require 'json'

require 'pry'

module Parser

  # BASE_PARK_URL = "https://data.cityofnewyork.us/resource/p7jc-c8ak.json"
  # BASE_MUSEUM_URL = "https://data.cityofnewyork.us/resource/fn6f-htvy.json"

  def self.parse(url)
    # base_url = activitize(activity)
    # query_param = zipform(activity)


    json_string_response = open(url).read

    ruby_hash_response = JSON.parse(json_string_response)

    #ruby_hash_response.first["signname"]
  end

  # private

  # def self.activitize(activity)
  #   if activity == 'museum'
  #     return BASE_MUSEUM_URL
  #   elsif activity == 'park'
  #     return BASE_PARK_URL
  #   end
  # end

  # def self.zipform(activity)
  #   if activity == 'museum'
  #     return '?zip='
  #   elsif activity == 'park'
  #     return '?zipcode='
  #   end
  # end

end

# later: if the json_string_response is empty, try to read in a less specific zip
# p Parser.parse('10471', 'park')