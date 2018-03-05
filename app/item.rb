class Item
  attr_accessor :name, :price
  @@items = []
  
  def self.items
    @@item
  end

  def initialize(name,price)
    @name = name
    @price = price
  end
end
