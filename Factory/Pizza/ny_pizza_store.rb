require_relative 'pizza_store'
require_relative 'pizza'
require_relative 'ny_style_cheese_pizza'
require_relative 'ny_style_clam_pizza'
require_relative 'ny_style_veggie_pizza'
require_relative 'ny_style_pepperoni_pizza'

class NYPizzaStore < PizzaStore

  def CreatePizza(item)
    case @item
      when 'cheese'
        return NYStyleCheesePizza.new
      when 'veggie'
        return NYStyleVeggiePizza.new
      when 'clam'
        return NYStyleClamPizza.new
      when 'pepperoni'
        return NYStylePepperoniPizza.new
    end
  end
end