class Park

  attr_reader :address, :name, :zip

  def initialize(args)
    @address = args.fetch('address')
    @name = args.fetch('signname')
    @zip = args.fetch('zipcode')
  end

end