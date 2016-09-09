class FuntimeStack

  attr_reader :museums, :parks

  def initialize(args)
    @museums = args.fetch(:museums)
    @parks = args.fetch(:parks)
  end

  def select_rand
    [museums.sample, parks.sample]
  end

end

# args = {museums: [], parks: []}

# later: add selected_things ary to keep track of prior selections