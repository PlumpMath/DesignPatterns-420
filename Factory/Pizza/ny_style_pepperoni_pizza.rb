require_relative "pizza"

class NYStylePepperoniPizza < Pizza

  def initialize
    @name = 'NY Style Pepperoni Pizza'
    @dough = 'Thin Crust Dough'
    @sauce = 'Marinara Sauce'
    @toppings = ['Grated Reggiano Cheese', 'Sliced Pepperoni', 'Garlic', 'Onion', 'Mushrooms', 'Red Pepper']
  end
end