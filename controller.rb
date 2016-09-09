# parse stuff

require_relative 'view'
require_relative 'museum'
require_relative 'park'
require_relative 'treat'
require_relative 'funtime_stack'
require_relative 'parser'
require 'pry'


class Controller

  attr_reader :view, :parser
  attr_accessor :museum_api_url, :park_api_url, :treat_api_url

  def initialize
    @view = View
    @parser = Parser
    @museum_api_url = "https://data.cityofnewyork.us/resource/fn6f-htvy.json"
    @park_api_url = "https://data.cityofnewyork.us/resource/p7jc-c8ak.json"
    @treat_api_url = "https://data.cityofnewyork.us/resource/9w7m-hzhe.json?grade=A&cuisine_description=Ice%20Cream%2C%20Gelato%2C%20Yogurt%2C%20Ices"
  end

  def run
    user_zip = view.get_zip

    museums_ary = parser.parse(prepare_museum_url(user_zip)).map do |museum_args|
      Museum.new(museum_args)
    end

    parks_ary = parser.parse(prepare_park_url(user_zip)).map do |park_args|
      Park.new(park_args)
    end

    treats_ary = parser.parse(prepare_treat_url(user_zip)).map do |treat_args|
      Treat.new(treat_args)
    end


    funtime_stack = FuntimeStack.new(museums: museums_ary, parks: parks_ary, treats: treats_ary)

    view.display_funtimes(funtime_stack.select_rand)
  end

  def prepare_park_url(zip)
    @park_api_url + "?zipcode=" + zip
  end

  def prepare_museum_url(zip)
    @museum_api_url + "?zip=" + zip
  end

  def prepare_treat_url(zip)
    @treat_api_url + "&zipcode=" + zip
  end

end

Controller.new.run