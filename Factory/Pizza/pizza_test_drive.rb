require_relative 'pizza_store'
require_relative 'ny_pizza_store'

class PizzaTestDrive
  @ny_store = NYPizzaStore.new
  @pizza = @ny_store.OrderPizza("cheese")
  puts "Ethan ordered a #{@pizza.getName}"
end