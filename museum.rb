class Museum

  attr_reader :address, :name, :zip

  def initialize(args)
    @address = args.fetch('adress1')
    @name = args.fetch('name')
    @zip = args.fetch('zip').to_i
  end

end