require_relative 'observer'

class ForecastDisplay
  include Observer
  attr_reader :current_pressure, :last_pressure
  @current_pressure = 29.92

  def show()
    print "Forecast: "
    if @current_pressure > @last_pressure
      puts "Improving weather on the way!"
    elsif @current_pressure == @last_pressure
      puts "More of the same"
    elsif @current_pressure < @last_pressure
      puts "Watch out for cooler, rainy weather"
    end
  end

  def update (temperature, humidity, pressure)
    @last_pressure = @current_pressure
    @current_pressure = pressure
    show
  end
end