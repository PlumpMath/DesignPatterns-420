require_relative "pizza_store"
require_relative "pizza"

class NYPizzaStore < PizzaStore
  def CreatePizza(item)
    case item
      when "cheese"
        return NYStyleCheesePizza.new
      when "veggie"
        return NYStyleVeggiePizza.new
      when "clam"
        return NYStyleClamPizza.new
      when "pepperoni"
        return NYStylePepperoniPizza.new
    end
  end
end