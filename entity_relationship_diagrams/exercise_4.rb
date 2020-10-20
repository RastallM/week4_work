## Exercise 4

# Diagram one or more of the following, with as much imagination as you like:

# * Twitter (including hashtags)
# * Makers Academy
# * Spitalfields Market

class Market
  
  def initialize(name)
    @name = name
    @stalls = []
  end

  def add_stall(stall)
    @stalls << stall
  end

  attr_reader :name, :stalls
end

class Stall 

  def initialize(name, owner)
    @name = name
    @owner = owner
    @owner.add_stall(self)
    @products = []
  end

  def add_product(product)
    @products << product
  end
  attr_reader :name, :owner, :products
end

class Product 

  def initialize(name,price,quantity)
    @name = name
    @price = price
    @quantity = quantity
  end

  def add_stock(quantity)
     @quantity += quantity
  end

  def sell_stock(quantity)
    @quantity -= quantity
  end
  attr_reader :name, :price, :quantity
end

class Owner 
  
  def initialize(name)
    @name = name
    @stalls = []
  end

  def add_stall(stall)
    @stalls << stall
  end

  attr_reader :name, :stalls
end



strawberry_smoothie = Product.new("strawberry-sunrise", 5.50, 10)
banana_smoothie = Product.new("banana-smoothie", 5.50,10)

meryl = Owner.new("Meryls inc")

smoothie_stall = Stall.new("Smoothie-Stall", meryl)
smoothie_stall.add_product(strawberry_smoothie)
smoothie_stall.add_product(banana_smoothie)


spitalfields = Market.new("spitalfields")
spitalfields.add_stall(smoothie_stall)

