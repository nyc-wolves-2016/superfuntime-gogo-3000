class FuntimeStack

  attr_accessor :treats, :museums, :parks

  def initialize(args)
    @museums = args.fetch(:museums)
    @parks = args.fetch(:parks)
    @treats = args.fetch(:treats)
  end

  def select_rand
    self.treats = [Treat.new('dba' => 'Sorry no place', 'street' => 'We dont exist', 'zipcode' => 'We no exist too')] if treats == []
    self.museums = [Museum.new('name' => 'Sorry no place', 'adress1' => 'We dont exist', 'zip' => 'We no exist too')] if museums == []
    self.parks = [Park.new('signname' => 'Sorry no place', 'location' => 'We dont exist', 'zipcode' => 'We no exist too')] if parks == []
    
    [museums.sample, parks.sample, treats.sample]
  end

end
