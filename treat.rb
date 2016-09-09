class Treat

  attr_reader :address, :name, :zip

  def initialize(args={})
    @address = args.fetch('street')
    @name = args.fetch('dba').capitalize
    @zip = args.fetch('zipcode').to_i
  end

end