class Item
  attr_accessor :name, :price
  @@item = []
  
  def self.all
    @@item
  end

  def initialize(name,price)
    @name = name
    @price = price
  end
end
