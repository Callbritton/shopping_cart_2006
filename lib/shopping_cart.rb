class ShoppingCart
  attr_reader :name, :capacity

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
  end

  def products
    @products
  end

  def add_product(item)
    products << item
  end

  def details
    Hash[*[name: name, capacity: capacity.to_i]]
  end

  def total_number_of_products
    sum = 0
    products.quantity.each { |product| sum+=product}
    sum 
  end

end
