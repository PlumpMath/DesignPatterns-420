require_relative 'pizza'
require_relative 'ny_pizza_store'

class PizzaStore < Pizza
  attr_accessor :pizza

  def createPizza(type)
  end

  def orderPizza(type)
    @pizza = createPizza(type)
    puts "--- Making a #{@pizza.getName} ---"
    @pizza.prepare
    @pizza.bake
    @pizza.cut
    @pizza.box
    return @pizza
  end
end
