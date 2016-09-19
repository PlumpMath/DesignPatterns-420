class Pizza
  attr_accessor :name, :dough, :sauce, :toppings

  def Prepare
    puts "Prepare: #{@name}"
    puts "Tossing dough..."
    puts "Adding sauce..."
    puts "Adding toppings: "
    @toppings.each do |topping|
      puts "    #{topping}"
    end
  end

  def Bake
    puts "Bake for 25 minutes at 350"
  end

  def Cut
    puts "Cut the pizza into diagonal slices"
  end

  def Box
    puts "Place pizza in official PizzaStore box"
  end

  def getName
    return @name
  end

  def toString
    show << "----  #{@name} ----"
    show << "#{@dough}"
    show << "#{@sauce}"
    @toppings.each do |topping|
      show << "#{topping}"
    end
  end

end