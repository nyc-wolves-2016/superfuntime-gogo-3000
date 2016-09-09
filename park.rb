class Park

  attr_reader :location, :name, :zip

  def initialize(args)
    @location = args.fetch('location')
    @name = args.fetch('signname')
    @zip = args.fetch('zipcode')
  end

end