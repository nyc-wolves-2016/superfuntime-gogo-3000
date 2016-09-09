# parse stuff

require_relative 'view'
require_relative 'museum'
require_relative 'park'
require_relative 'funtime_stack'
require_relative 'parser'


class Controller

  attr_reader :view, :parser

  def initialize
    @view = View
    @parser = Parser
  end

  def run
    user_zip = view.get_zip

    museums_ary = parser.parse(user_zip, 'museum').map do |museum_args|
      Museum.new(museum_args)
    end

    parks_ary = parser.parse(user_zip, 'park').map do |park_args|
      Park.new(park_args)
    end

    funtime_stack = FuntimeStack.new(museums: museums_ary, parks: parks_ary)

    view.display_funtimes(funtime_stack.select_rand)
  end


end

Controller.new.run