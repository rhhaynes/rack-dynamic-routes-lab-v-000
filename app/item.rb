class Item
  attr_accessor :name, :price
  
  def self.items
    @@items
  end

  def initialize(name,price)
    @name = name
    @price = price
  end
end
