require_relative 'ny_pizza_store'

class PizzaTestDrive

  ny_store = NYPizzaStore.new
  pizza = ny_store.orderPizza("cheese")
  pizza.prepare

end