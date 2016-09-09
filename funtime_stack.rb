class FuntimeStack

  attr_accessor :treats, :museums, :parks

  def initialize(args)
    @museums = args.fetch(:museums)
    @parks = args.fetch(:parks)
    @treats = args.fetch(:treats)
  end

  def select_rand
    treats = [Treat.new('dba' => 'Sorry no place', 'street' => 'We dont exist', 'zipcode' => 'We no exist too')] if treats == nil
    museums = [Museum.new('name' => 'Sorry no place', 'adress1' => 'We dont exist', 'zip' => 'We no exist too')] if museums == nil
    parks = [Park.new('signname' => 'Sorry no place', 'location' => 'We dont exist', 'zipcode' => 'We no exist too')] if parks == nil
    

    [museums.sample, parks.sample, treats.sample]
  end

end

# args = {museums: [], parks: []}

# later: add selected_things ary to keep track of prior selections