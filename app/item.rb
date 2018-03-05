class Item
  attr_accessor :name, :price
  @@items = []
  
  def self.all
    @@items
  end

  def initialize(name,price)
    @name = name
    @price = price
  end
end
